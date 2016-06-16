package nl.hbgames.logic.game
{
   import nl.hbgames.data.tutorial.BaseTutorialData;
   import nl.hbgames.ui.popups.TutorialBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.AppData;
   import nl.hbgames.data.tutorial.TutorialDataDutch;
   import nl.hbgames.data.tutorial.TutorialDataEnglish;
   import nl.hbgames.data.tutorial.TutorialDataGerman;
   import nl.hbgames.data.tutorial.TutorialDataFrench;
   import nl.hbgames.data.tutorial.TutorialDataItalian;
   import nl.hbgames.data.tutorial.TutorialDataSpanish;
   import nl.hbgames.data.Glossary;
   import nl.hbgames.data.PlayerData;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.logic.game.board.BaseBlock;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.ui.panels.ChatPanel;
   import nl.hbgames.ui.panels.SneakPeekPanel;
   import nl.hbgames.ui.panels.CheckPilePanel;
   import nl.hbgames.utils.Time;
   
   public class TutorialGameLogic extends BaseGame
   {
       
      private var _CurrentStep:int = -1;
      
      private var _TutorialData:BaseTutorialData;
      
      private var _TutBox:TutorialBox;
      
      private var _RequiredWord:String;
      
      private var _CheckBeforePlay:Boolean;
      
      private var _NeedsClearedTable:Boolean;
      
      private var _CanPeek:Boolean;
      
      private var _CanCheckPile:Boolean;
      
      private var _StartCoinAmount:int;
      
      private var _StartStarAmount:int;
      
      private var _HasEnded:Boolean;
      
      private var _Ticker:Number = 0;
      
      private var _MessageData:Object;
      
      private var _WaitTime:Number = -1;
      
      public function TutorialGameLogic()
      {
         super();
         _AllowTableClickForHelp = false;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         PHPWrapper.HasSeenTutorial();
         SWRVETracker.Instance.TrackCustomEvent("game.tutorial.start");
         _StartCoinAmount = ClientData.Instance.Inventory.TotalCoins;
         _StartStarAmount = ClientData.Instance.Inventory.TotalStars;
         _HasEnded = false;
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         _BtnChat.Disable();
         _Banks.EnableButtons(false);
         var _loc2_:* = AppData.Instance.ApplicationLanguage;
         if("nl" !== _loc2_)
         {
            if("en" !== _loc2_)
            {
               if("de" !== _loc2_)
               {
                  if("fr" !== _loc2_)
                  {
                     if("it" !== _loc2_)
                     {
                        if("es" !== _loc2_)
                        {
                           if("sv" === _loc2_)
                           {
                              _TutorialData = new TutorialDataEnglish();
                           }
                        }
                        else
                        {
                           _TutorialData = new TutorialDataSpanish();
                        }
                     }
                     else
                     {
                        _TutorialData = new TutorialDataItalian();
                     }
                  }
                  else
                  {
                     _TutorialData = new TutorialDataFrench();
                  }
               }
               else
               {
                  _TutorialData = new TutorialDataGerman();
               }
            }
            else
            {
               _TutorialData = new TutorialDataEnglish();
            }
         }
         else
         {
            _TutorialData = new TutorialDataDutch();
         }
         Glossary.Instance.Load(OnGlossaryLoaded,AppData.Instance.ApplicationLanguage);
      }
      
      override protected function OnGlossaryLoaded() : void
      {
         super.OnGlossaryLoaded();
         var _loc1_:PlayerData = new PlayerData("tutorial",Localization.Get("tutorial_helper_name"));
         _GameSessionData = new GameSessionData(2,_TutorialData.GameID,AppData.Instance.ApplicationLanguage,259200,ClientData.Instance.Player,_loc1_);
         ClientData.Instance.JoinGame(_GameSessionData,OnGameDataChanged);
         NextStep();
      }
      
      private function NextStep() : void
      {
         if(_HasEnded)
         {
            SWRVETracker.Instance.TrackCustomEvent("game.tutorial.end");
            if(!ClientData.Instance.IsInvited)
            {
               LogicManager.Instance.SetState("NewGame",null,"AnimRight");
            }
            else
            {
               LogicManager.Instance.SetState("GameOverview",{"proceedInviteFlow":true},"AnimRight");
            }
            return;
         }
         _CurrentStep = _CurrentStep + 1;
         _RequiredWord = null;
         _CheckBeforePlay = false;
         RemoveBoxes();
         var _loc1_:Object = _TutorialData.Get(_CurrentStep);
         if(_loc1_.session)
         {
            _GameSessionData.Set(_loc1_.session);
         }
         if(_loc1_.actions)
         {
            ProcessActions(_loc1_.actions);
         }
         SWRVETracker.Instance.TrackCustomEvent("game.tutorial.step",{"tutorialStep":_CurrentStep});
      }
      
      private function ProcessActions(param1:Object) : void
      {
         _CanPeek = param1.canPeek?param1.canPeek:false;
         _CanCheckPile = param1.canPile?param1.canPile:false;
         if(_CanPeek || _CanCheckPile)
         {
            _BtnSpy.Enable();
         }
         else
         {
            _BtnSpy.Disable();
         }
         if(param1.canSwap)
         {
            _BtnSwap.Enable();
         }
         else
         {
            _BtnSwap.Disable();
         }
         if(param1.canHint)
         {
            _BtnHint.Enable();
         }
         else
         {
            _BtnHint.Disable();
         }
         _RequiredWord = param1.requiredWord;
         _CheckBeforePlay = param1.checkBeforePlay?param1.checkBeforePlay:false;
         _HasEnded = param1.isEnd?param1.isEnd:false;
         _NeedsClearedTable = param1.needsClearedTable?param1.needsClearedTable:false;
         if(param1.message)
         {
            _Ticker = 0;
            _MessageData = param1.message;
         }
         else
         {
            _WaitTime = param1.wait?param1.wait:-1;
         }
      }
      
      private function ShowMessage() : void
      {
         var _loc1_:String = _HasEnded?Localization.Get("tutorial_speech_btn_finished"):Localization.Get("tutorial_speech_btn_next");
         var _loc2_:* = _MessageData.type;
         if(1 !== _loc2_)
         {
            if(2 === _loc2_)
            {
               _TutBox = new TutorialBox(_MessageData.x,_MessageData.y,_MessageData.body,_loc1_,NextStep,null,null,_MessageData.cover?_MessageData.cover:false);
            }
         }
         else
         {
            _TutBox = new TutorialBox(_MessageData.x,_MessageData.y,_MessageData.body,_loc1_);
         }
         _Content.addChild(_Content.mcTut);
         _Content.mcTut.mouseEnabled = false;
         _Content.mcTut.mouseChildren = false;
         _Content.mcTut.gotoAndStop(_CurrentStep + 1);
         _Content.mcTut.visible = true;
         _Rack.Lock(_CurrentStep == 1 || _CurrentStep == 2 || _CurrentStep == 5 || _CurrentStep == 16 || _CurrentStep == 21);
      }
      
      override public function ChangeBlockStatus(param1:BaseBlock, param2:String) : void
      {
         super.ChangeBlockStatus(param1,param2);
         if(_CheckBeforePlay)
         {
            if(_WordAnalyzer.GetWord() == _RequiredWord)
            {
               NextStep();
            }
         }
      }
      
      override protected function SetActionButtonShuffle(param1:Boolean) : void
      {
         super.SetActionButtonShuffle(param1);
         if(_NeedsClearedTable && param1)
         {
            NextStep();
         }
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         e = param1;
         if(!_HasEnded)
         {
            return;
            §§push(new MessageBox(Localization.Get("attention"),Localization.Get("tutorial_quit"),true,true,function():void
            {
               _HasEnded = true;
               OnBackClick();
            },true,null,true,false,Localization.Get("tutorial_quit_button_ok"),Localization.Get("tutorial_quit_button_back")));
         }
         else
         {
            LogicManager.Instance.SetState("GameOverview",null,"AnimRight");
            return;
         }
      }
      
      private function OnChatClick(param1:MouseEvent) : void
      {
         _BtnChat.RemoveBadge();
      }
      
      override protected function OnPlayClick(param1:MouseEvent) : void
      {
         if(_RequiredWord != null)
         {
            if(_WordAnalyzer.IsValid)
            {
               if(_GameSessionData.IsMyTurn)
               {
                  _RefreshRack = true;
                  OnPlayProceed();
               }
            }
         }
      }
      
      override protected function OnCheckClick(param1:MouseEvent) : void
      {
      }
      
      override protected function OnPlayProceed() : void
      {
         super.OnPlayProceed();
         if(_RequiredWord != null)
         {
            if(_WordAnalyzer.GetWord() != _RequiredWord)
            {
               return;
            }
         }
         _RefreshRack = true;
         NextStep();
      }
      
      override protected function OnHintClick(param1:MouseEvent = null) : void
      {
         ShowHint();
         NextStep();
      }
      
      override protected function OnSpyClick(param1:MouseEvent) : void
      {
         super.OnSpyClick(param1);
         RemoveBoxes();
         OnSneakPeekClick();
      }
      
      private function OnSneakPeekClick() : void
      {
      }
      
      private function OnSneakPeekDone() : void
      {
         NextStep();
      }
      
      private function OnCheckTilesClick() : void
      {
         var _loc1_:Array = ["A","R","C","D","G","G","R","T","Y","B","E","L","Y"];
         _loc1_ = _loc1_.slice(0,_GameSessionData.TilesLeft);
      }
      
      private function OnCheckTilesDone() : void
      {
         NextStep();
      }
      
      private function RemoveBoxes() : void
      {
         if(_TutBox != null)
         {
            _TutBox.Remove();
            _TutBox = null;
            _Content.mcTut.visible = false;
         }
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_MessageData != null)
         {
            _Ticker = §§dup()._Ticker + Time.DeltaTime;
            if(_Ticker >= _MessageData.delay)
            {
               ShowMessage();
               _MessageData = null;
            }
         }
         else if(_WaitTime != -1)
         {
            _Ticker = §§dup()._Ticker + Time.DeltaTime;
            if(_Ticker >= _WaitTime)
            {
               NextStep();
               _WaitTime = -1;
            }
         }
      }
      
      override public function Dispose() : void
      {
         ClientData.Instance.Inventory.TotalCoins = _StartCoinAmount;
         ClientData.Instance.Inventory.TotalStars = _StartStarAmount;
         RemoveBoxes();
         _RequiredWord = null;
         _TutorialData.Dispose();
         _TutorialData = null;
         _MessageData = null;
         super.Dispose();
      }
   }
}
