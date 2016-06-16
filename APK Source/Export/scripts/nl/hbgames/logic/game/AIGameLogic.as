package nl.hbgames.logic.game
{
   import nl.hbgames.logic.game.singleplayer.AIGameHandler;
   import nl.hbgames.data.Glossary;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.PlayerData;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.ui.popups.TutorialBox;
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   import nl.hbgames.data.AppData;
   import nl.hbgames.managers.LogicManager;
   import flash.events.Event;
   import nl.hbgames.logic.game.board.BaseBlock;
   
   public class AIGameLogic extends BaseGame
   {
       
      private var _GameHandler:AIGameHandler;
      
      private var _ThinkBubble:libOpponentThinkBubble;
      
      private var _HasEnded:Boolean;
      
      public function AIGameLogic()
      {
         super();
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Banks.EnableButtons(false);
         _BtnChat.Disable();
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         Glossary.Instance.Load(OnGlossaryLoaded,_InitialData.languageID);
      }
      
      override protected function OnGlossaryLoaded() : void
      {
         super.OnGlossaryLoaded();
         _GameSessionData = new GameSessionData(1,_InitialData.gameID,_InitialData.languageID,_InitialData.timeLeftInSec,ClientData.Instance.Player,new PlayerData());
         ClientData.Instance.JoinGame(_GameSessionData,OnGameDataChanged);
         _GameHandler = new AIGameHandler(_InitialData.opponent,_GameSessionData,ClientData.Instance.CurrentTilesetID);
         _GameHandler.addEventListener("aiStartsThinking",OnAIAction);
         _GameHandler.addEventListener("aiHasSolution",OnAIAction);
         _GameHandler.addEventListener("aiHasPlayed",OnAIAction);
         _GameHandler.Initialize(OnHandlerInitialized);
      }
      
      private function OnHandlerInitialized(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1.result == ":)")
         {
            _GameSessionData.Set(param1.game);
            _ThinkBubble = new libOpponentThinkBubble();
            _ThinkBubble.x = _Content.mcOpponentPicture.x + _OpponentAvatar.width * AssetManager.ContentScaleFactor;
            _ThinkBubble.y = _Content.mcOpponentPicture.y + _OpponentAvatar.height / 7 * AssetManager.ContentScaleFactor;
            var _loc3_:* = AssetManager.ContentScaleFactor;
            _ThinkBubble.scaleY = _loc3_;
            _ThinkBubble.scaleX = _loc3_;
            _Content.addChild(_ThinkBubble);
            ShowThinkBubble(false);
            _loc2_ = _GameHandler.IsPlayerTurn?"practice_box_start_your_turn":"practice_box_start_their_turn";
            new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y,Localization.Get(_loc2_,_GameSessionData.Opponent.Name),Localization.Get("practice_box_thanks"),OnStartClick,null,null,true);
         }
      }
      
      private function OnStartClick() : void
      {
         _GameHandler.CheckForCPUTurn();
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         e = param1;
         if(!_HasEnded)
         {
            return;
            §§push(new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y,Localization.Get("practice_exit_match"),Localization.Get("practice_exit_no"),null,Localization.Get("practice_exit_yes"),function():void
            {
               _HasEnded = true;
               OnBackClick();
            },true));
         }
         else
         {
            AppData.Instance.ShouldShowAd = true;
            AppData.Instance.IgnoreAdIntervalForNextShowing = true;
            LogicManager.Instance.SetState("NewGame",null,"AnimRight");
            return;
         }
      }
      
      private function OnAIAction(param1:Event) : void
      {
         var _loc2_:* = param1.type;
         if("aiStartsThinking" !== _loc2_)
         {
            if("aiHasSolution" !== _loc2_)
            {
               if("aiHasPlayed" === _loc2_)
               {
                  ShowThinkBubble(false);
               }
            }
            else
            {
               ShowThinkBubble(true,2);
            }
         }
         else
         {
            ShowThinkBubble(true,1);
         }
      }
      
      private function ShowThinkBubble(param1:Boolean, param2:int = -1) : void
      {
         if(param1)
         {
            if(_ThinkBubble.currentFrame == 1)
            {
               _ThinkBubble.gotoAndPlay(2);
            }
            _ThinkBubble.mcBubble.mcIcons.gotoAndPlay(param2 == 1?"think":"solve");
            _ThinkBubble.visible = true;
         }
         else
         {
            _ThinkBubble.gotoAndStop(1);
            _ThinkBubble.mcBubble.mcIcons.gotoAndStop(1);
            _ThinkBubble.visible = false;
         }
      }
      
      override protected function OnSpyClick(param1:MouseEvent) : void
      {
         super.OnSpyClick(param1);
         _GameHandler.Peek();
      }
      
      override protected function OnHintClick(param1:MouseEvent = null) : void
      {
         super.OnHintClick(param1);
         if(_GameSessionData.YourBestWord != null)
         {
            _GameHandler.Hint(OnHint);
         }
         else
         {
            ShowNoWordPossibleDialog();
         }
      }
      
      private function OnHint(param1:Object) : void
      {
         if(param1.result == ":)")
         {
            _GameSessionData.SetHintValue(param1.hint.hintsLeft);
            ShowHint();
         }
      }
      
      override protected function OnSwapClick(param1:MouseEvent = null, param2:Boolean = true) : void
      {
         OnSwapProceed(false);
      }
      
      override protected function OnSwapProceed(param1:Boolean = false) : void
      {
         super.OnSwapProceed(param1);
         if(param1)
         {
            if(AppData.Instance.SwapAllLosesTurn)
            {
               _GameHandler.SwapAll(OnTurnActionFinished,false);
            }
            else
            {
               _GameHandler.SwapAll(OnSwapAllKeepTurn,true);
            }
         }
         else
         {
            _GameHandler.PassTurn(OnTurnActionFinished);
         }
      }
      
      private function OnSwapAllKeepTurn(param1:Object) : void
      {
         _ResetBlocks = true;
         _GameSessionData.Unlock();
         if(param1.result == ":)")
         {
            _RefreshRack = true;
            ClientData.Instance.CurrentGameSession.Set(param1.game,259200,true,false);
            ClearHintLetters();
         }
      }
      
      override protected function OnPassProceed() : void
      {
         super.OnPassProceed();
         _GameHandler.PassTurn(OnTurnActionFinished);
      }
      
      override protected function OnPlayProceed() : void
      {
         var _loc3_:* = 0;
         super.OnPlayProceed();
         _GameSessionData.Lock();
         var _loc1_:Vector.<BaseBlock> = _PlayerTable.GetBlocks();
         var _loc2_:Array = [];
         _loc3_ = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_.push(_loc1_[_loc3_].GetLetter(false));
            _loc3_++;
         }
         _GameHandler.PlayWord(OnTurnActionFinished,_loc2_);
      }
      
      override protected function OnTurnActionFinished(param1:Object) : void
      {
         super.OnTurnActionFinished(param1);
         _ResetBlocks = false;
         _PlayerTable.Lock(true);
         _RefreshRack = true;
         _BtnSwap.Disable();
         ClientData.Instance.CurrentGameSession.Set(param1.game,259200,true);
         _WordAnalyzer.Hide();
         ClearHintLetters();
      }
      
      override protected function HandleGameEnd() : void
      {
         var _loc1_:* = null;
         _HasEnded = true;
         var _loc2_:String = Localization.Get("tutorial_speech_btn_finished");
         if(_GameSessionData.YourTotalScore > _GameSessionData.OtherTotalScore)
         {
            _loc1_ = Localization.Get("practice_result_win",_GameSessionData.Opponent.Name);
         }
         else if(_GameSessionData.YourTotalScore == _GameSessionData.OtherTotalScore)
         {
            _loc1_ = Localization.Get("practice_result_draw",_GameSessionData.Opponent.Name);
         }
         else
         {
            _loc1_ = Localization.Get("practice_result_lose",_GameSessionData.Opponent.Name);
         }
         if(_loc1_ != null && _loc2_ != null)
         {
            new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y,_loc1_,_loc2_,OnBackClick,null,null,true);
         }
      }
      
      override protected function FinishTurn() : void
      {
         super.FinishTurn();
         _GameHandler.CheckForCPUTurn();
      }
      
      override public function Dispose() : void
      {
         _Content.removeChild(_ThinkBubble);
         _ThinkBubble = null;
         _GameHandler.removeEventListener("aiStartsThinking",OnAIAction);
         _GameHandler.removeEventListener("aiHasSolution",OnAIAction);
         _GameHandler.removeEventListener("aiHasPlayed",OnAIAction);
         _GameHandler.Dispose();
         _GameHandler = null;
         super.Dispose();
      }
   }
}
