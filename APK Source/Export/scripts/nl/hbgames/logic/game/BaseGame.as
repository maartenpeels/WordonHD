package nl.hbgames.logic.game
{
   import nl.hbgames.logic.Logic;
   import flash.display.Sprite;
   import nl.hbgames.ui.buttons.IconButton;
   import nl.hbgames.ui.buttons.FooterButton;
   import nl.hbgames.ui.buttons.PlayButton;
   import nl.hbgames.logic.game.board.Rack;
   import nl.hbgames.logic.game.board.PlayerTable;
   import nl.hbgames.logic.game.board.OpponentTable;
   import nl.hbgames.logic.game.overlay.WordAnalyzer;
   import nl.hbgames.logic.game.overlay.WordSummary;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.logic.game.effects.BaseParticle;
   import nl.hbgames.logic.game.board.HintBlock;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.WordOn;
   import flash.events.MouseEvent;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.ui.popups.StrengthBox;
   import nl.hbgames.data.AppData;
   import flash.events.Event;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.logic.game.board.PlayerBlock;
   import nl.hbgames.logic.game.board.OpponentBlock;
   import nl.hbgames.data.TrackingData;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.ui.popups.NearEndBox;
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.logic.game.board.BaseBlock;
   import nl.hbgames.logic.game.board.BlockSlotContainer;
   import nl.hbgames.utils.Random;
   import nl.hbgames.logic.game.board.BaseTable;
   import nl.hbgames.ui.panels.ChatPanel;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.ui.popups.SwapBox;
   import nl.hbgames.data.Glossary;
   import nl.hbgames.logic.game.board.BlockSlot;
   import nl.hbgames.utils.Time;
   import flash.utils.setTimeout;
   import nl.hbgames.logic.game.effects.BonusLetterParticle;
   import nl.hbgames.logic.game.effects.BlockPopParticle;
   import nl.hbgames.logic.game.effects.CoinParticle;
   import nl.hbgames.logic.game.effects.BoosterCoinParticle;
   import flash.utils.clearTimeout;
   
   public class BaseGame extends Logic
   {
      
      public static var Instance:BaseGame;
       
      protected const MAX_LETTERS_ON_RACK:uint = 7;
      
      protected const BLOCKS_NEEDED_FOR_SWAP:uint = 2;
      
      protected const BLOCKS_NEEDED_FOR_FULL_SWAP:uint = 7;
      
      protected var _InitialData:Object;
      
      private var _HintBlockContainer:Sprite;
      
      protected var _BtnChat:IconButton;
      
      protected var _BtnSwap:FooterButton;
      
      protected var _BtnAction:FooterButton;
      
      protected var _BtnPlay:PlayButton;
      
      protected var _BtnCheck:PlayButton;
      
      protected var _BtnSpy:FooterButton;
      
      protected var _BtnHint:FooterButton;
      
      protected var _MessageCenter:MessageCenter;
      
      protected var _Rack:Rack;
      
      protected var _PlayerTable:PlayerTable;
      
      protected var _OpponentTable:OpponentTable;
      
      protected var _WordAnalyzer:WordAnalyzer;
      
      protected var _WordSummary:WordSummary;
      
      protected var _GameSessionData:GameSessionData;
      
      protected var _PlayerAvatar:AvatarButton;
      
      protected var _OpponentAvatar:AvatarButton;
      
      protected var _CanShuffle:Boolean;
      
      private var _HasShownHintWarning:Boolean;
      
      protected var _RefreshRack:Boolean;
      
      private var _Particles:Vector.<BaseParticle>;
      
      protected var _HintLetters:Vector.<HintBlock>;
      
      private var _PlayedBlocksResult:Object;
      
      private var _TargetSendIndex:uint = 0;
      
      private var _HadDoubleWordScore:Boolean;
      
      private var _TilesLeft:int = 0;
      
      protected var _StatsUnknownWords:uint = 0;
      
      protected var _StatsShuffles:uint = 0;
      
      protected var _StatsPlaytime:Number = 0;
      
      protected var _StatsPeeks:uint = 0;
      
      protected var _StatsHints:uint = 0;
      
      protected var _StatsPile:uint = 0;
      
      protected var _HasPerformedAction:Boolean;
      
      protected var _ResetBlocks:Boolean = false;
      
      protected var _AllowTableClickForHelp:Boolean = true;
      
      private var _TimeOutID:uint;
      
      public function BaseGame()
      {
         super(new libGameScreen_Layouts());
         Instance = this;
      }
      
      public function get SessionData() : GameSessionData
      {
         return _GameSessionData;
      }
      
      public function get OwnTable() : PlayerTable
      {
         return _PlayerTable;
      }
      
      public function get Analyzer() : WordAnalyzer
      {
         return _WordAnalyzer;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Particles = new Vector.<BaseParticle>();
         _HintLetters = new Vector.<HintBlock>();
         _BtnChat = new IconButton(_Content.btnChat,1,OnChatClick);
         _BtnSwap = new FooterButton(_Content.btnSwap,OnSwapClick,Localization.Get("game_swap"),"sfxButtonGeneral");
         _BtnAction = new FooterButton(_Content.btnAction,OnActionClick,Localization.Get("game_shuffle"));
         _BtnPlay = new PlayButton(_Content.btnPlay,OnPlayClick,Localization.Get("game_play"));
         _BtnCheck = new PlayButton(_Content.btnCheck,OnCheckClick,Localization.Get("game_check"));
         _BtnSpy = new FooterButton(_Content.btnSpy,OnSpyClick,Localization.Get("game_spy"),"sfxButtonGeneral");
         _BtnHint = new FooterButton(_Content.btnHint,OnHintClick,Localization.Get("game_hint"),"sfxButtonGeneral");
         _HintBlockContainer = new Sprite();
         _Content.addChild(_HintBlockContainer);
         _MessageCenter = new MessageCenter(_Content.lblOpponentScore,_Content.lblPlayerScore,_Content.lblTurn,[_Content.mcFlagsLeft,_Content.mcFlagsRight]);
         _Rack = new Rack(_Content);
         _PlayerTable = new PlayerTable(_Content,_AllowTableClickForHelp);
         _OpponentTable = new OpponentTable(_Content);
         _WordAnalyzer = new WordAnalyzer(_PlayerTable);
         _WordAnalyzer.y = _Content.mcWordAnalyzerNode.y;
         this.addChild(_WordAnalyzer);
         _WordSummary = new WordSummary(_Content.mcPlayedWord);
         _WordSummary.Hide();
         _Content.lblOpponentName.text = "";
         _Content.lblPlayerName.text = "";
         _Content.mcTut.visible = false;
         ShowTilesLeft(0);
         ShowHintsLeft(0);
         _CanShuffle = true;
         _RefreshRack = true;
         _HasShownHintWarning = false;
         _Content.mcOpponentArea.addEventListener("click",onOpponentAreaClicked);
         CheckBoosterStatus();
      }
      
      protected function CheckBoosterStatus() : void
      {
         if(ClientData.Instance.Inventory.Get("item_coin_booster_perm").Amount == 0)
         {
            if(_Content.contains(_Content.mcBoosterIcon))
            {
               _Content.mcBoosterIcon.removeEventListener("click",OnBoosterIconClick);
               _Content.removeChild(_Content.mcBoosterIcon);
            }
         }
         else if(!_Content.mcBoosterIcon.hasEventListener("click"))
         {
            _Content.mcBoosterIcon.addEventListener("click",OnBoosterIconClick);
         }
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         _InitialData = param1;
         _HasPerformedAction = false;
         WordOn.Instance.Audio.Play("sfxJingleOpenGame");
      }
      
      protected function OnGlossaryLoaded() : void
      {
         _WordAnalyzer.addEventListener("click",OnAnalyzerClick);
      }
      
      private function OnAnalyzerClick(param1:MouseEvent) : void
      {
         if(!_GameSessionData.IsStrengthMeterEnabled)
         {
            SWRVETracker.Instance.TrackCustomEvent("game.coinbar.clicked");
            new StrengthBox(OnAnalyzerEnabled,_GameSessionData.GameID);
         }
      }
      
      protected function OnAnalyzerEnabled(param1:Number) : void
      {
         if(!isNaN(param1) && param1 > 0)
         {
            AppData.Instance.SetAnalyzerDate(param1);
         }
         _GameSessionData.EnableStrengthMeter();
         _WordAnalyzer.AnalyzeTable();
      }
      
      protected function OnGameDataChanged(param1:Event = null) : void
      {
         var _loc2_:* = false;
         Debugger.Instance.Write("[GameLogic::OnGameDataChanged] Session data has been updated");
         var _loc3_:GameSessionData = ClientData.Instance.CurrentGameSession;
         if(_PlayerAvatar == null)
         {
            _PlayerAvatar = new AvatarButton(_GameSessionData.Type == 0,_loc3_.You.ID,true,_loc3_.You.BorderID);
            _Content.mcPlayerPicture.addChild(_PlayerAvatar);
         }
         if(_OpponentAvatar == null)
         {
            _OpponentAvatar = new AvatarButton(_GameSessionData.Type == 0,_GameSessionData.Opponent.ID,true,_loc3_.Opponent.BorderID);
            _Content.mcOpponentPicture.addChild(_OpponentAvatar);
         }
         _Content.lblOpponentName.text = _loc3_.Opponent.Name;
         _Content.lblPlayerName.text = _loc3_.You.Name;
         if(_ResetBlocks)
         {
            _Rack.RemoveBlocks(false,false);
            _Rack.RemoveBlocks(true,false);
            _PlayerTable.RemoveBlocks(false,false);
            _PlayerTable.RemoveBlocks(true,false);
            _WordAnalyzer.Hide();
            _RefreshRack = true;
         }
         if(_loc3_.PrevCycleNum == 0)
         {
            _MessageCenter.SetPlayerScore(_loc3_.YourTotalScore);
            _MessageCenter.SetOpponentScore(_loc3_.OtherTotalScore);
         }
         else
         {
            _MessageCenter.SetOpponentScore(_loc3_.OtherTotalScore);
         }
         if(_RefreshRack)
         {
            _Rack.PlaceLetters(_loc3_.YourTilesetID,_loc3_.YourLetters,PlayerBlock);
            _RefreshRack = false;
         }
         if(_loc3_.PrevCycleNum == 0)
         {
            _PlayerTable.SetGrid(_loc3_.YourGrid);
            _OpponentTable.SetGrid(_loc3_.OtherGrid);
         }
         else
         {
            _OpponentTable.SetGrid(_loc3_.OtherGrid);
         }
         ShowTilesLeft(_loc3_.TilesLeft);
         ShowHintsLeft(_loc3_.HintsLeft);
         if(_loc3_.IsTurn)
         {
            if(_loc3_.IsMyTurn)
            {
               _OpponentTable.PlaceLetters(_loc3_.OtherTilesetID,_loc3_.LastWord,OpponentBlock,_loc3_.YourTilesetID);
               _OpponentTable.RemoveBlocks(true,true);
               _PlayerTable.PlaceSpecialLetters(_loc3_.OtherTilesetID,_loc3_.WordOnLetters,PlayerBlock,true);
               _WordAnalyzer.DetermineMinWordValue(_loc3_.WordOnLetters);
               _MessageCenter.SetStatusMessage(Localization.Get("game_your_turn",ClientData.Instance.Player.Name));
               _BtnSwap.Enable();
               _BtnPlay.Enable();
               _BtnCheck.Disable(0);
               ShowHint(true);
            }
            else
            {
               _OpponentTable.RemoveBlocks();
               _OpponentTable.PlaceSpecialLetters(_loc3_.YourTilesetID,_loc3_.WordOnLetters,OpponentBlock);
               _WordAnalyzer.DetermineMinWordValue([]);
               _MessageCenter.SetStatusMessage(Localization.Get("game_their_turn",_GameSessionData.Opponent.Name));
               _BtnSwap.Disable();
               _BtnPlay.Disable(0);
               _BtnCheck.Enable();
               _BtnHint.Disable();
            }
            _BtnSpy.Enable();
            if(_GameSessionData.YourBestWord != null)
            {
               _WordAnalyzer.SetMaxWordValue(_GameSessionData.YourBestWord.Score);
            }
            else
            {
               _WordAnalyzer.SetMaxWordValue(2147483647);
            }
            if(_TilesLeft >= 2)
            {
               _BtnSwap.SetLabel(Localization.Get("game_swap"));
            }
            else
            {
               _BtnSwap.SetLabel(Localization.Get("game_pass"));
            }
            if(!_loc3_.IsMyTurn && _loc3_.PrevCycleNum != 0)
            {
               if(_loc3_.LastWord.length == 0)
               {
                  FinishWord();
                  _OpponentTable.ShowBlocks(true);
               }
               else
               {
                  _WordAnalyzer.ShowReward(_loc3_.CoinsWon,_loc3_.BonusCoinsWon);
                  _OpponentTable.ShowBlocks(true,false);
               }
               _Rack.Lock(true);
            }
            else
            {
               if(_GameSessionData.ShowStrengthAlert)
               {
                  TrackingData.Instance.IncreaseStartedGames();
                  new StrengthBox(OnAnalyzerEnabled,_GameSessionData.GameID);
                  _loc2_ = true;
               }
               ShowSummary();
            }
            if(!_loc2_)
            {
               if(ClientData.Instance.ForceStrengthMeterPopup)
               {
                  new StrengthBox(OnAnalyzerEnabled,_GameSessionData.GameID);
                  ClientData.Instance.ForceStrengthMeterPopup = false;
               }
            }
         }
         else
         {
            if(_loc3_.IsMyTurn)
            {
               _OpponentTable.PlaceLetters(_loc3_.OtherTilesetID,_loc3_.LastWord,OpponentBlock,_loc3_.YourTilesetID);
               _OpponentTable.RemoveBlocks(true,true);
               _PlayerTable.PlaceSpecialLetters(_loc3_.OtherTilesetID,_loc3_.WordOnLetters,PlayerBlock,true);
            }
            else
            {
               _OpponentTable.RemoveBlocks();
               _OpponentTable.PlaceSpecialLetters(_loc3_.YourTilesetID,_loc3_.WordOnLetters,OpponentBlock);
               _PlayerTable.RemoveBlocks(true,true);
            }
            ShowSummary();
         }
         WaitBox.Hide();
         if(_GameSessionData.IsResigned || _GameSessionData.IsFinished)
         {
            HandleGameEnd();
            if(_GameSessionData.IsResigned)
            {
               _MessageCenter.SetStatusMessage(Localization.Get("game_resigned"));
            }
            else
            {
               _MessageCenter.SetStatusMessage(Localization.Get("game_ended"));
            }
            _BtnPlay.Disable();
            _BtnCheck.Disable(0);
            _BtnAction.Disable();
            _BtnSwap.Disable();
            _BtnSpy.Disable();
            _BtnHint.Disable();
         }
         else
         {
            if(_InitialData && _InitialData.toChat)
            {
               OnChatClick();
               _InitialData.toChat = false;
            }
            if(_loc3_.IsMyTurn)
            {
               _WordAnalyzer.AnalyzeTable();
            }
            if(_loc3_.ShowFinalTurnsAlert && AppData.Instance.ShowGameTips)
            {
               new NearEndBox();
            }
         }
      }
      
      protected function HandleGameEnd() : void
      {
      }
      
      private function ShowSummary() : void
      {
         if(_GameSessionData.IsMyTurn)
         {
            if(_GameSessionData.CycleNum != _GameSessionData.PrevCycleNum)
            {
               if(_GameSessionData.CycleNum > 1)
               {
                  if(_GameSessionData.LastWord.length > 1)
                  {
                     _Content.lblOpponentPlayed.text = Localization.Get("list_word_played_description",WordParser.RemoveTagsFromString(_GameSessionData.LastWord.join("")),_GameSessionData.LastWordScore);
                  }
                  else if(_GameSessionData.Passes == 0)
                  {
                     _Content.lblOpponentPlayed.text = Localization.Get("list_swap_played_description",_GameSessionData.LastWordScore);
                  }
                  else
                  {
                     _Content.lblOpponentPlayed.text = Localization.Get("list_pass_played_description",_GameSessionData.LastWordScore);
                  }
               }
               else
               {
                  _Content.lblOpponentPlayed.text = "";
               }
            }
            _WordSummary.Hide();
         }
         else
         {
            _Content.lblOpponentPlayed.text = "";
            if(_GameSessionData.CycleNum > 1)
            {
               _WordSummary.Show(_GameSessionData.LastWord,_GameSessionData.LastWordScore,_GameSessionData.LastGrid,_GameSessionData.DictionaryLanguage,_GameSessionData.Type != 2);
            }
            else
            {
               _WordSummary.Hide();
            }
         }
      }
      
      public function ChangeBlockStatus(param1:BaseBlock, param2:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc3_:* = false;
         var _loc4_:BlockSlotContainer = param1.Slot != null?param1.Slot.Owner:null;
         var _loc5_:* = param2;
         if("Dragging" !== _loc5_)
         {
            if("Dropping" !== _loc5_)
            {
               if("Tapping" === _loc5_)
               {
                  if(param1.Slot.Owner is Rack)
                  {
                     if(!_PlayerTable.InsertAtFreeSlot(param1))
                     {
                        param1.Drop(param1.Slot,true);
                        _loc3_ = false;
                     }
                  }
                  else if(!param1.IsBonus)
                  {
                     _Rack.InsertAtFreeSlot(param1);
                  }
                  else if(!_PlayerTable.InsertAtFreeSlot(param1,!param1.Slot.Owner.IsInSpecialSlots(param1)))
                  {
                     param1.Drop(param1.Slot,true);
                     _loc3_ = false;
                  }
                  _loc3_ = true;
               }
            }
            else
            {
               if(!_Rack.Insert(param1))
               {
                  if(!_PlayerTable.Insert(param1))
                  {
                     param1.Drop(param1.Slot,true);
                     _loc3_ = false;
                  }
               }
               _loc3_ = true;
            }
         }
         else
         {
            param1.Lift();
            WordOn.Instance.Audio.Play(Random.pick(["sfxTilePick1","sfxTilePick2","sfxTilePick3"]));
            _loc3_ = false;
         }
         if(_loc3_)
         {
            if(_loc4_ != null && _loc4_ is BaseTable || param1.Slot.Owner is BaseTable)
            {
               _WordAnalyzer.AnalyzeTable();
            }
            if(_PlayerTable.GetBlocks().length > 0)
            {
               SetActionButtonShuffle(false);
            }
            else
            {
               SetActionButtonShuffle(true);
            }
            OnBlockMoved();
         }
         if(param2 != "Dragging")
         {
            WordOn.Instance.Audio.Play(Random.pick(["sfxTileDrop1","sfxTileDrop2","sfxTileDrop3","sfxTileDrop4","sfxTileDrop5"]));
         }
      }
      
      protected function OnBlockMoved() : void
      {
      }
      
      protected function SetActionButtonShuffle(param1:Boolean) : void
      {
         _CanShuffle = param1;
         if(_CanShuffle)
         {
            _BtnAction.SetLabel(Localization.Get("game_shuffle"));
         }
         else
         {
            _BtnAction.SetLabel(Localization.Get("game_clear"));
         }
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
      }
      
      private function OnChatClick(param1:MouseEvent = null) : void
      {
         if(!ClientData.Instance.Social.IsBlocked(_GameSessionData.Opponent.ID))
         {
            _BtnChat.RemoveBadge();
            new ChatPanel();
         }
         else
         {
            new MessageBox(Localization.Get("chat_blocked_opponent_title"),Localization.Get("chat_blocked_opponent_body"));
         }
      }
      
      protected function OnSwapClick(param1:MouseEvent = null, param2:Boolean = true) : void
      {
         if(_TilesLeft >= 2)
         {
            new SwapBox(OnSwapProceed,_TilesLeft >= 7);
         }
         else if(param2)
         {
            new MessageBox(Localization.Get("action_pass_title"),Localization.Get("action_pass_body"),false,true,OnPassProceed,true);
         }
         else
         {
            OnPassProceed();
         }
      }
      
      protected function OnSwapProceed(param1:Boolean = false) : void
      {
         ResetLetters();
      }
      
      protected function OnPassProceed() : void
      {
         ResetLetters();
      }
      
      protected function OnPlayProceed() : void
      {
      }
      
      private function OnActionClick(param1:MouseEvent) : void
      {
         if(_CanShuffle)
         {
            _StatsShuffles = _StatsShuffles + 1;
            _Rack.Shuffle();
         }
         else
         {
            ResetLetters();
         }
      }
      
      private function ResetLetters() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = 0;
         var _loc1_:* = null;
         if(BaseGame.Instance)
         {
            WordOn.Instance.Audio.Play(Random.pick(["sfxShuffle1","sfxShuffle2","sfxShuffle3","sfxShuffle4"]));
            _loc2_ = _PlayerTable.GetBlocks();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc1_ = _loc2_[_loc3_];
               if(!_loc1_.IsBonus)
               {
                  _Rack.InsertAtFreeSlot(_loc1_);
               }
               else
               {
                  _PlayerTable.InsertAtFreeSlot(_loc1_,true);
               }
               _loc1_.ResetStatus();
               _loc3_++;
            }
            SetActionButtonShuffle(true);
            _WordAnalyzer.Hide();
         }
      }
      
      protected function OnPlayClick(param1:MouseEvent) : void
      {
         if(_WordAnalyzer.IsValid)
         {
            if(_GameSessionData.IsMyTurn)
            {
               if(Glossary.Instance.Exists(_GameSessionData.DictionaryLanguage,_WordAnalyzer.GetWord(false,true)))
               {
                  _HadDoubleWordScore = _WordAnalyzer.IsDoubleWordValue;
                  OnPlayProceed();
               }
               else
               {
                  new MessageBox(Localization.Get("title_try_again"),Localization.Get("game_unknown_word"));
                  _StatsUnknownWords = _StatsUnknownWords + 1;
               }
            }
         }
         else
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("game_invalid_word"));
         }
      }
      
      protected function OnCheckClick(param1:MouseEvent) : void
      {
         if(_WordAnalyzer.IsValid)
         {
            if(Glossary.Instance.Exists(_GameSessionData.DictionaryLanguage,_WordAnalyzer.GetWord(false,true)))
            {
               new MessageBox(Localization.Get("game_word_check_title_pass"),Localization.Get("game_word_check_message_pass",_WordAnalyzer.GetWord().toUpperCase(),Localization.GetLanguageDescription(_GameSessionData.DictionaryLanguage)));
            }
            else
            {
               new MessageBox(Localization.Get("game_word_check_title_fail"),Localization.Get("game_word_check_message_fail",_WordAnalyzer.GetWord().toUpperCase(),Localization.GetLanguageDescription(_GameSessionData.DictionaryLanguage)));
            }
         }
         else
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("game_invalid_word"));
         }
      }
      
      protected function OnTurnActionFinished(param1:Object) : void
      {
         if(param1.result == ":)")
         {
            _HasPerformedAction = true;
         }
      }
      
      protected function OnSpyClick(param1:MouseEvent) : void
      {
      }
      
      protected function OnHintClick(param1:MouseEvent = null) : void
      {
      }
      
      protected function OnBoosterIconClick(param1:MouseEvent) : void
      {
      }
      
      protected function ShowHint(param1:Boolean = false) : void
      {
         historyOnly = param1;
         ShowHintsLeft(_GameSessionData.HintsLeft);
         if(_GameSessionData.YourBestWord != null)
         {
            var allHints:Array = _GameSessionData.YourBestWord.HintHistory;
            var i:uint = 0;
            var j:uint = 0;
            if(historyOnly)
            {
               i = 0;
               while(i < allHints.length)
               {
                  var hintSlot:BlockSlot = _PlayerTable.GetSlot(allHints[i].index);
                  var block:HintBlock = new HintBlock(allHints[i].letter,hintSlot,allHints[i].isBlank);
                  _HintBlockContainer.addChild(block);
                  _HintLetters.push(block);
                  i = i + 1;
               }
               if(_GameSessionData.YourBestWord.HintsUsed >= _GameSessionData.YourBestWord.MaxHints)
               {
                  _BtnHint.Disable();
               }
            }
            else
            {
               _StatsHints = _StatsHints + 1;
               var newHint:Object = _GameSessionData.YourBestWord.GetHint();
               if(newHint != null)
               {
                  ResetLetters();
                  var playerBlocks:Vector.<BaseBlock> = _PlayerTable.GetBlocks(false,true);
                  playerBlocks = playerBlocks.concat(_Rack.GetBlocks());
                  var secondaryBlocks:Vector.<BaseBlock> = new Vector.<BaseBlock>();
                  i = 0;
                  while(i < playerBlocks.length)
                  {
                     if(playerBlocks[i].IsBlank)
                     {
                        secondaryBlocks.push(playerBlocks.splice(i,1)[0]);
                        i = i - 1;
                     }
                     i = i + 1;
                  }
                  secondaryBlocks.sort(function(param1:BaseBlock, param2:BaseBlock):Number
                  {
                     if(param1.IsBonus)
                     {
                        return -1;
                     }
                     if(param1.IsBonus && param2.IsBonus)
                     {
                        return 0;
                     }
                     return 1;
                  });
                  var usedBlocks:Vector.<BaseBlock> = new Vector.<BaseBlock>();
                  i = 0;
                  while(i < allHints.length)
                  {
                     var solved:Boolean = false;
                     var hintData:Object = allHints[i];
                     j = 0;
                     while(j < playerBlocks.length)
                     {
                        var playerBlock:BaseBlock = playerBlocks[j];
                        if(usedBlocks.indexOf(playerBlock) == -1 && playerBlock.GetLetter() == hintData.letter)
                        {
                           _PlayerTable.GetSlot(hintData.index).Insert(playerBlock);
                           usedBlocks.push(playerBlock);
                           solved = true;
                           break;
                        }
                        j = j + 1;
                     }
                     if(!solved && secondaryBlocks.length > 0)
                     {
                        j = 0;
                        while(j < secondaryBlocks.length)
                        {
                           playerBlock = secondaryBlocks[j];
                           if(usedBlocks.indexOf(playerBlock) == -1)
                           {
                              playerBlock.SetLetter(hintData.letter);
                              _PlayerTable.GetSlot(hintData.index).Insert(playerBlock);
                              usedBlocks.push(playerBlock);
                              if(newHint.index == hintData.index)
                              {
                                 newHint.isBlank = true;
                                 _GameSessionData.YourBestWord.FlagAsBlankHint(newHint.index);
                              }
                              solved = true;
                              break;
                           }
                           j = j + 1;
                        }
                     }
                     i = i + 1;
                  }
                  hintSlot = _PlayerTable.GetSlot(newHint.index);
                  block = new HintBlock(newHint.letter,hintSlot,newHint.isBlank);
                  _HintBlockContainer.addChild(block);
                  _HintLetters.push(block);
                  SetActionButtonShuffle(false);
                  _WordAnalyzer.AnalyzeTable();
                  if(newHint.hintsLeft == 0)
                  {
                     _BtnHint.Disable();
                  }
               }
            }
         }
         else
         {
            ShowNoWordPossibleDialog();
         }
      }
      
      private function ShowTilesLeft(param1:uint) : void
      {
         _TilesLeft = param1;
         _Content.lblTilesLeft.text = "(" + _TilesLeft + ")";
         _Content.lblTilesLeft.mouseEnabled = false;
      }
      
      protected function ShowNoWordPossibleDialog() : void
      {
         var canSwap:Boolean = _TilesLeft >= 2;
      }
      
      private function ShowHintsLeft(param1:uint) : void
      {
         _Content.lblHintsLeft.text = "(" + param1 + ")";
         _Content.lblHintsLeft.mouseEnabled = false;
         if(param1 == 0)
         {
            _BtnHint.Disable();
         }
         else
         {
            _BtnHint.Enable();
         }
      }
      
      override public function Update() : void
      {
         var _loc2_:* = 0;
         var _loc1_:* = null;
         super.Update();
         _StatsPlaytime = §§dup()._StatsPlaytime + Time.DeltaTime;
         _Rack.Update();
         _PlayerTable.Update();
         _OpponentTable.Update();
         _loc2_ = 0;
         while(_loc2_ < _Particles.length)
         {
            _loc1_ = _Particles[_loc2_];
            _loc1_.Update();
            if(_loc1_.IsDead)
            {
               _loc1_.Dispose();
               this.removeChild(_loc1_);
               _Particles.splice(_loc2_,1);
               _loc2_--;
            }
            _loc2_++;
         }
      }
      
      public function FinishWord() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = 0;
         _TargetSendIndex = 0;
         ClearHintLetters();
         SetActionButtonShuffle(true);
         if(_HadDoubleWordScore)
         {
            _loc1_ = _PlayerTable.GetBonusBlocks();
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc1_[_loc2_].Highlight(_loc2_ * 0.1);
               _loc2_++;
            }
            WordOn.Instance.Audio.Play("sfxPlayMultiplier");
            _Content.mcWordScoreCounter.gotoAndPlay("multiplier");
            _TimeOutID = setTimeout(FinishShowWordScore,700);
         }
         else
         {
            FinishShowWordScore();
         }
      }
      
      private function FinishShowWordScore() : void
      {
         ResetTimeout();
         _Content.mcWordScoreCounter.gotoAndPlay("score");
         _Content.mcWordScoreCounter.mcMultiplier.visible = _HadDoubleWordScore;
         _Content.mcWordScoreCounter.score = 0;
         _PlayedBlocksResult = {
            "penalty":_PlayerTable.GetBlocks(false,true),
            "score":_PlayerTable.GetBlocks()
         };
         _TimeOutID = setTimeout(FinishStartWordPop,200);
      }
      
      private function FinishStartWordPop() : void
      {
         if(_PlayedBlocksResult.score.length > 0)
         {
            FinishPopBlock(_PlayedBlocksResult.score.shift(),true,_PlayedBlocksResult.score.length == 0);
         }
         else if(_PlayedBlocksResult.penalty.length > 0)
         {
            FinishPopBlock(_PlayedBlocksResult.penalty.shift(),false,_PlayedBlocksResult.penalty.length == 0);
         }
         else
         {
            _PlayedBlocksResult = null;
            _TimeOutID = setTimeout(function():void
            {
               WordOn.Instance.Audio.Play("sfxPlayCounterDone");
               _Content.mcWordScoreCounter.gotoAndPlay("finish");
               if(_HadDoubleWordScore)
               {
                  _Content.mcWordScoreCounter.score = _Content.mcWordScoreCounter.score * 2;
               }
               _Content.mcWordScoreCounter.mcScore.label.text = _Content.mcWordScoreCounter.score;
               _TimeOutID = setTimeout(FinishTurn,300);
            },300);
         }
      }
      
      private function FinishPopBlock(param1:BaseBlock, param2:Boolean, param3:Boolean) : void
      {
         var _loc5_:* = null;
         var _loc7_:* = null;
         var _loc9_:int = param1.GetValue(true);
         if(!param2)
         {
            _loc9_ = -_loc9_;
         }
         var _loc4_:* = param1.Slot.Type == 3;
         if(_loc4_)
         {
            _loc5_ = _OpponentTable.GetSlot(_TargetSendIndex,true);
            _TargetSendIndex = _TargetSendIndex + 1;
            _loc7_ = new BonusLetterParticle(param1.GetLetter(),param1.GetValue(),_loc5_,null);
            _loc7_.x = param1.x;
            _loc7_.y = param1.y;
            this.addChild(_loc7_);
            _Particles.push(_loc7_);
         }
         var _loc8_:Number = _loc4_?0.5:0.22;
         if(param3)
         {
            _loc8_ = 0.6;
         }
         var _loc6_:BlockPopParticle = new BlockPopParticle(_loc9_,param2,FinishStartWordPop,_loc8_);
         _loc6_.x = param1.x;
         _loc6_.y = param1.y;
         this.addChild(_loc6_);
         _Particles.push(_loc6_);
         _Content.mcWordScoreCounter.score = _Content.mcWordScoreCounter.score + _loc9_;
         _Content.mcWordScoreCounter.mcScore.label.text = _Content.mcWordScoreCounter.score;
         if(_Content.mcWordScoreCounter.score < 0)
         {
            _Content.mcWordScoreCounter.mcScore.label.textColor = 6620678;
         }
         _Content.mcWordScoreCounter.gotoAndPlay("blink");
         param1.DisposeWithAnim(param2?1:2.0);
         if(param2)
         {
            WordOn.Instance.Audio.Play(Random.pick(["sfxTileDrop1","sfxTileDrop2","sfxTileDrop3","sfxTileDrop4","sfxTileDrop5"]));
            WordOn.Instance.Audio.Play(Random.pick(["sfxRefreshStart","sfxRefreshEnd"]));
         }
         else
         {
            WordOn.Instance.Audio.Play("sfxPlayUnusedWO");
         }
      }
      
      protected function FinishTurn() : void
      {
         _HadDoubleWordScore = false;
         _MessageCenter.SetPlayerScore(_GameSessionData.YourTotalScore);
         _TimeOutID = setTimeout(function():void
         {
            _PlayerTable.SetGrid(_GameSessionData.YourGrid);
            _Rack.Lock(false);
            ShowSummary();
            _GameSessionData.Unlock();
         },500);
      }
      
      public function SpawnCoinParticle(param1:Boolean) : void
      {
         var _loc2_:* = null;
         if(!param1)
         {
            _loc2_ = new CoinParticle(_Content.mcCoinAnimTarget.x,_Content.mcCoinAnimTarget.y,_Banks.AddCoins);
         }
         else
         {
            if(_Content.mcBoosterIcon)
            {
               _Content.mcBoosterIcon.gotoAndPlay(2);
            }
            _loc2_ = new BoosterCoinParticle(_Content.mcCoinAnimTarget.x,_Content.mcCoinAnimTarget.y,_Banks.AddCoins);
         }
         _loc2_.x = _WordAnalyzer.x + (_WordAnalyzer.width >> 1);
         _loc2_.y = _WordAnalyzer.y + (_WordAnalyzer.height >> 1);
         this.addChild(_loc2_);
         _Particles.push(_loc2_);
      }
      
      protected function ClearHintLetters() : void
      {
         while(_HintLetters.length > 0)
         {
            _HintLetters.pop().Dispose();
         }
      }
      
      public function CheckForHintsBeforeExit(param1:Function) : Boolean
      {
         callback = param1;
         if(_GameSessionData != null && _GameSessionData.YourBestWord != null)
         {
            if(_GameSessionData.YourBestWord.HintsUsed > 0 && !_HasShownHintWarning)
            {
               new MessageBox(Localization.Get("attention"),Localization.Get("lose_current_hints"),false,true,function():void
               {
                  _HasShownHintWarning = true;
               },true);
               return true;
            }
         }
         return false;
      }
      
      protected function onOpponentAreaClicked(param1:MouseEvent) : void
      {
      }
      
      protected function ResetStats() : void
      {
         _StatsUnknownWords = 0;
         _StatsShuffles = 0;
         _StatsPlaytime = 0;
         _StatsPeeks = 0;
         _StatsHints = 0;
         _StatsPile = 0;
      }
      
      private function ResetTimeout() : void
      {
         if(_TimeOutID > 0)
         {
            clearTimeout(_TimeOutID);
            _TimeOutID = 0;
         }
      }
      
      override public function Dispose() : void
      {
         var _loc1_:* = 0;
         _InitialData = null;
         ResetTimeout();
         _Content.mcOpponentArea.removeEventListener("click",onOpponentAreaClicked);
         if(_Content.contains(_Content.mcBoosterIcon))
         {
            _Content.mcBoosterIcon.removeEventListener("click",OnBoosterIconClick);
         }
         _loc1_ = 0;
         while(_loc1_ < _Particles.length)
         {
            _Particles[_loc1_].Dispose();
            this.removeChild(_Particles[_loc1_]);
            _loc1_++;
         }
         _Particles = null;
         ClearHintLetters();
         _HintLetters = null;
         _Content.removeChild(_HintBlockContainer);
         _HintBlockContainer = null;
         ClientData.Instance.LeaveGame(OnGameDataChanged);
         _GameSessionData.removeEventListener("change",OnGameDataChanged);
         _GameSessionData = null;
         _WordAnalyzer.Dispose();
         this.removeChild(_WordAnalyzer);
         _WordAnalyzer = null;
         if(_PlayerAvatar != null)
         {
            _PlayerAvatar.Dispose();
            _Content.mcPlayerPicture.removeChild(_PlayerAvatar);
         }
         if(_OpponentAvatar != null)
         {
            _OpponentAvatar.Dispose();
            _Content.mcOpponentPicture.removeChild(_OpponentAvatar);
         }
         _BtnChat.Dispose();
         _BtnChat = null;
         _BtnSwap.Dispose();
         _BtnSwap = null;
         _BtnAction.Dispose();
         _BtnAction = null;
         _BtnPlay.Dispose();
         _BtnPlay = null;
         _BtnCheck.Dispose();
         _BtnCheck = null;
         _BtnSpy.Dispose();
         _BtnSpy = null;
         _BtnHint.Dispose();
         _BtnHint = null;
         _MessageCenter.Dispose();
         _MessageCenter = null;
         _PlayerTable.Dispose();
         _PlayerTable = null;
         _OpponentTable.Dispose();
         _OpponentTable = null;
         _Rack.Dispose();
         _Rack = null;
         _PlayedBlocksResult = null;
         Instance = null;
         super.Dispose();
      }
   }
}
