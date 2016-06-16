package nl.hbgames.logic.game
{
   import nl.hbgames.net.GATracker;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.ui.popups.TileUpdateBox;
   import nl.hbgames.data.Glossary;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.PlayerData;
   import nl.hbgames.ui.panels.GameOverPanel;
   import nl.hbgames.data.TrackingData;
   import nl.hbgames.data.AppData;
   import nl.hbgames.managers.ads.AdManager;
   import nl.hbgames.ui.popups.TutorialBox;
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.Localization;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.net.PHPWrapper;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.WordOnGoodsManager;
   import nl.hbgames.logic.game.board.BaseBlock;
   import nl.hbgames.data.UserChatData;
   import nl.hbgames.data.SysChatData;
   import nl.hbgames.data.GameInfoData;
   import nl.hbgames.managers.AchievementManager;
   import nl.hbgames.ui.popups.SuggestionBoxPlayers;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.data.GameSessionCacheList;
   import nl.hbgames.ui.panels.SneakPeekPanel;
   import nl.hbgames.ui.panels.CheckPilePanel;
   import nl.hbgames.events.ChatEvent;
   import nl.hbgames.ui.panels.ChatPanel;
   import nl.hbgames.data.ChatSessionData;
   
   public class PlayerGameLogic extends BaseGame
   {
       
      private var _TutorialStep:int = 0;
      
      private var _ShowBriefTutorial:Boolean;
      
      private var _HasShownTutorial:Boolean;
      
      private var _HasPlayError:Boolean;
      
      private var _HasShownEmptyRackTip:Boolean;
      
      private var _GlossaryLangID:String;
      
      public function PlayerGameLogic()
      {
         super();
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         GATracker.trackScreen("game_pvp");
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         _GlossaryLangID = param1.languageID;
         if(TilesetData.IsUpdateAvailable)
         {
            WaitBox.Hide();
            new TileUpdateBox(LoadGlossary,true);
         }
         else
         {
            LoadGlossary();
         }
      }
      
      private function LoadGlossary() : void
      {
         WaitBox.Show();
         Glossary.Instance.Load(OnGlossaryLoaded,_GlossaryLangID);
      }
      
      override protected function OnGlossaryLoaded() : void
      {
         var _loc1_:* = 0;
         super.OnGlossaryLoaded();
         _GameSessionData = new GameSessionData(0,_InitialData.gameID,_InitialData.languageID,_InitialData.timeLeftInSec,ClientData.Instance.Player,new PlayerData());
         ClientData.Instance.JoinGame(_GameSessionData,OnGameDataChanged);
         ClientData.Instance.ChatHistory.CreateSession(_GameSessionData.GameID,_GameSessionData.CycleNum == 0);
         ClientData.Instance.ChatHistory.CurrentChatSession.addEventListener("ChatSessionUpdated",OnChatReceived);
         if(ClientData.Instance.ChatHistory.CurrentChatSession.NewChatAmount > 0)
         {
            _loc1_ = ClientData.Instance.ChatHistory.CurrentChatSession.NewChatAmount;
            _BtnChat.SetBadge(_loc1_.toString());
         }
      }
      
      override protected function HandleGameEnd() : void
      {
      }
      
      override protected function OnBlockMoved() : void
      {
         super.OnBlockMoved();
         if(!_HasShownTutorial)
         {
            if(!_GameSessionData.IsStrengthMeterEnabled)
            {
               if(TrackingData.Instance.GamesStarted >= AppData.Instance.GamesUntilAnalyzerTutorial)
               {
                  if(_GameSessionData.CycleNum >= 5)
                  {
                     if(_WordAnalyzer.visible)
                     {
                        if(!AppData.Instance.AllowVideoRewards || AppData.Instance.AllowVideoRewards && AdManager.instance.hasRewardVideoAvailable())
                        {
                           if(new Date().getTime() >= AppData.Instance.DateUntilAnalyzerTutorial)
                           {
                              _ShowBriefTutorial = TrackingData.Instance.HasViewedAnalyzerTutorial;
                              _HasShownTutorial = true;
                              _TutorialStep = 0;
                              ProceedBarTutorial();
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         if(ShouldSeeGameTips() && _GameSessionData.IsTurn && _GameSessionData.IsMyTurn && _GameSessionData.TilesLeft == 0 && _Rack.GetBlocks().length <= 7 - 1)
         {
            if(!_HasShownEmptyRackTip && !TrackingData.Instance.HasViewedEmptyRackTip)
            {
               _HasShownEmptyRackTip = true;
               new TutorialBox(Settings.SCREEN_CENTER_X + 30,Settings.SCREEN_CENTER_Y - 100,Localization.Get("game_tip_empty_rack_1"),Localization.Get("tutorial_speech_btn_next"),function():void
               {
               },null,null,true);
            }
         }
      }
      
      private function ProceedBarTutorial() : void
      {
         var step:int = 0;
         if(!_ShowBriefTutorial)
         {
            var _loc2_:* = _TutorialStep;
            step = §§dup(step) + 1;
            if(step !== _loc2_)
            {
               step = §§dup(step) + 1;
               if(step !== _loc2_)
               {
                  step = §§dup(step) + 1;
                  if(step !== _loc2_)
                  {
                     step = §§dup(step) + 1;
                     if(step !== _loc2_)
                     {
                        step = §§dup(step) + 1;
                        if(step === _loc2_)
                        {
                           if(AppData.Instance.AllowVideoRewards && AdManager.instance.hasRewardVideoAvailable())
                           {
                              new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_step_5_video"),Localization.Get("tutorial_speech_btn_show_video"),RequestVideoForFreeAnalyzer,Localization.Get("tutorial_speech_btn_skip"),function():void
                              {
                                 _TutorialStep = 0;
                              },true);
                           }
                           else
                           {
                              new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_step_5"),Localization.Get("tutorial_speech_btn_activate"),RequestFreeAnalyzer,null,null,true);
                           }
                        }
                     }
                     else
                     {
                        new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_step_4"),Localization.Get("tutorial_speech_btn_next"),ProceedBarTutorial,null,null,true);
                     }
                  }
                  else
                  {
                     new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_step_3"),Localization.Get("tutorial_speech_btn_next"),ProceedBarTutorial,null,null,true);
                  }
               }
               else
               {
                  new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_step_2"),Localization.Get("tutorial_speech_btn_next"),ProceedBarTutorial,null,null,true);
               }
            }
            else
            {
               new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_step_1"),Localization.Get("tutorial_speech_btn_next"),ProceedBarTutorial,null,null,true);
            }
         }
         else
         {
            _loc2_ = _TutorialStep;
            step = §§dup(step) + 1;
            if(step === _loc2_)
            {
               if(AppData.Instance.AllowVideoRewards && AdManager.instance.hasRewardVideoAvailable())
               {
                  new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_brief_step_1_video"),Localization.Get("tutorial_speech_btn_show_video"),RequestVideoForFreeAnalyzer,Localization.Get("tutorial_speech_btn_skip"),function():void
                  {
                     _TutorialStep = 0;
                  },true);
               }
               else
               {
                  new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y - 150,Localization.Get("tutorial_analyzer_brief_step_1"),Localization.Get("tutorial_speech_btn_activate"),RequestFreeAnalyzer,null,null,true);
               }
            }
         }
         _TutorialStep = _TutorialStep + 1;
      }
      
      private function RequestVideoForFreeAnalyzer() : void
      {
         AdManager.instance.showRewardVideo(function(param1:Boolean):void
         {
            if(param1)
            {
               RequestFreeAnalyzer();
            }
            else
            {
               new MessageBox(Localization.Get("whoops"),Localization.Get("tutorial_analyzer_finish_fail"));
            }
         });
      }
      
      private function RequestFreeAnalyzer() : void
      {
         WaitBox.Show();
         PHPWrapper.HasSeenAnalyzerTutorial(FinishAnalyzerTutorial,_GameSessionData.GameID);
      }
      
      private function FinishAnalyzerTutorial(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            OnAnalyzerEnabled(param1.strengthMeter.timestamp);
            TrackingData.Instance.SetViewedAnalyzerTutorial();
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("tutorial_analyzer_finish_fail"));
         }
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         if(CheckForHintsBeforeExit(OnBackClick))
         {
            return;
         }
         if(_HasPerformedAction)
         {
            AppData.Instance.ShouldShowAd = true;
         }
         LogicManager.Instance.SetState("GameOverview",null,"AnimRight",false,false);
      }
      
      override protected function OnSwapProceed(param1:Boolean = false) : void
      {
         swapAll = param1;
         super.OnSwapProceed(swapAll);
         if(BaseGame.Instance)
         {
            if(swapAll)
            {
               if(WordOnGoodsManager.checkStarFlow(AppData.Instance.CostSwapAll,function():void
               {
                  OnSwapProceed(true);
               },Localization.Get("shop_buy_stars_quickly_feature_swapall")))
               {
                  WaitBox.Show();
                  SWRVETracker.Instance.TrackCustomEvent("game.swap.all");
                  SWRVETracker.Instance.TrackVirtualPurchase(1,"consumable.swapall",AppData.Instance.CostSwapAll,"stars");
                  if(AppData.Instance.SwapAllLosesTurn)
                  {
                     PHPWrapper.SwapAll(OnTurnActionFinished,_GameSessionData.GameID,false);
                  }
                  else
                  {
                     PHPWrapper.SwapAll(OnSwapAllKeepTurn,_GameSessionData.GameID,true);
                  }
               }
            }
            else
            {
               WaitBox.Show();
               SWRVETracker.Instance.TrackCustomEvent("game.swap.normal");
               PHPWrapper.PassTurn(OnTurnActionFinished,_GameSessionData.GameID);
            }
         }
      }
      
      override protected function OnPassProceed() : void
      {
         super.OnPassProceed();
         WaitBox.Show();
         PHPWrapper.PassTurn(OnTurnActionFinished,_GameSessionData.GameID);
      }
      
      override protected function OnPlayProceed() : void
      {
         super.OnPlayProceed();
         if(ShouldSeeGameTips() && !_WordAnalyzer.IsDoubleWordValue && !TrackingData.Instance.HasViewedWordOnsTip)
         {
            TrackingData.Instance.SetViewedWordOnsTip();
            new TutorialBox(Settings.SCREEN_CENTER_X + 20,Settings.SCREEN_CENTER_Y - 100,Localization.Get("game_tip_use_wordons"),Localization.Get("game_tip_button_play_anyway"),function():void
            {
               OnPlayProceed();
               SWRVETracker.Instance.TrackCustomEvent("gametip.play_anyway");
            },Localization.Get("game_tip_button_dont_play"),function():void
            {
               SWRVETracker.Instance.TrackCustomEvent("gametip.dont_play");
            },true);
         }
         else
         {
            var bonusLetters:Vector.<BaseBlock> = _PlayerTable.GetBlocks(false,false,3);
            if(ShouldSeeGameTips() && bonusLetters.length == 0 && !TrackingData.Instance.HasViewedGaveWordOnsTip)
            {
               TrackingData.Instance.SetViewedGaveWordOnsTip();
               new TutorialBox(Settings.SCREEN_CENTER_X + 20,Settings.SCREEN_CENTER_Y - 100,Localization.Get("game_tip_give_wordons_1"),Localization.Get("tutorial_speech_btn_next"),function():void
               {
               },null,null,true);
            }
            else
            {
               var bestWord:Array = _GameSessionData.YourBestWord != null?_GameSessionData.YourBestWord.Word:[];
               _GameSessionData.Lock();
               _HasPlayError = false;
               WaitBox.Show();
               PHPWrapper.PlayWord(OnTurnActionFinished,_PlayerTable.GetBlocks(),bestWord,_GameSessionData.GameID);
            }
         }
      }
      
      override protected function OnTurnActionFinished(param1:Object) : void
      {
         response = param1;
         super.OnTurnActionFinished(response);
         WaitBox.Hide();
         if(response.result == ":)")
         {
            _ResetBlocks = false;
            CheckBoosterStatus();
            if(response.achievements)
            {
               AchievementManager.Show(response.achievements);
            }
            _PlayerTable.Lock(true);
            _RefreshRack = true;
            if(response.game.cycle > _GameSessionData.CycleNum)
            {
               TrackingData.Instance.IncreaseTurnAmount();
               ClientData.Instance.CurrentGameSession.Set(response.game,259200,true);
               var hasPlayedWord:Boolean = _GameSessionData.LastWord.length > 1;
               ClientData.Instance.Inventory.TotalStars = _GameSessionData.TotalStars;
               if(_GameSessionData.CoinsWon == 0)
               {
                  _ResetBlocks = true;
                  _GameSessionData.Unlock();
               }
               var lastChats:Vector.<UserChatData> = ClientData.Instance.ChatHistory.CurrentChatSession.GetChats(1);
               var localTime:Number = lastChats != null?lastChats[0].Timestamp + 1:0.0;
               var localData:SysChatData = new SysChatData([localTime,1,hasPlayedWord?_GameSessionData.LastWord.join():_GameSessionData.Passes == 0?1:2.0,_GameSessionData.LastWordScore,_GameSessionData.CoinsWon]);
               ClientData.Instance.ChatHistory.CurrentChatSession.AddChatData(localData);
               var gameData:GameInfoData = new GameInfoData();
               if(gameData.CreateFromSession(_GameSessionData))
               {
                  ClientData.Instance.GameListData.Merge(response.overviewId,gameData);
               }
               if(_GameSessionData.CoinsWon > 0)
               {
                  SWRVETracker.Instance.TrackCurrencyGiven("coins",_GameSessionData.CoinsWon);
               }
               if(hasPlayedWord)
               {
                  var prevCycleNum:int = _GameSessionData.CycleNum - 1;
                  var trackingData:Object = {
                     "wordscore":_GameSessionData.LastWordScore,
                     "coinsWon":_GameSessionData.CoinsWon,
                     "bonusCoins":_GameSessionData.BonusCoinsWon,
                     "tries":_StatsUnknownWords,
                     "shuffles":_StatsShuffles,
                     "peeks":_StatsPeeks,
                     "hints":_StatsHints,
                     "pileChecks":_StatsPile,
                     "playtime":_StatsPlaytime,
                     "totalCoins":ClientData.Instance.Inventory.TotalCoins,
                     "totalStars":ClientData.Instance.Inventory.TotalStars,
                     "strengthMeter":_GameSessionData.IsStrengthMeterEnabled
                  };
                  if(prevCycleNum & 1)
                  {
                     SWRVETracker.Instance.TrackCustomEvent("game.play." + _GameSessionData.DictionaryLanguage + ".turn." + prevCycleNum + ".start",trackingData);
                  }
                  else
                  {
                     SWRVETracker.Instance.TrackCustomEvent("game.play." + _GameSessionData.DictionaryLanguage + ".turn." + prevCycleNum + ".complete",trackingData);
                  }
               }
               if(ClientData.Instance.ShouldSeeInviteBoxes && ClientData.Instance.IsFacebookUser)
               {
                  if(TrackingData.Instance.TurnsPlayed == AppData.Instance.InvitePlayersAfterTurn)
                  {
                     new SuggestionBoxPlayers();
                  }
                  else if(TrackingData.Instance.TurnsPlayed == AppData.Instance.InviteFriendsAfterTurn)
                  {
                     FBWrapper.ShowInviteList();
                     ClientData.Instance.FlagInviteBoxesSeen();
                  }
               }
               ClearHintLetters();
               ResetStats();
            }
            else
            {
               Debugger.Instance.Write("[PlayerGameLogic::OnTurnActionFinished] Incoming cycle (" + response.game.cycle + ") is lower than expected. Data update blocked!",true);
               SWRVETracker.Instance.TrackCustomEvent("warning.cycle.php");
            }
         }
         else
         {
            _ResetBlocks = true;
            _GameSessionData.Unlock();
            if(response.error == 9)
            {
               new MessageBox(Localization.Get("title_try_again"),Localization.Get("game_unknown_word"));
               _StatsUnknownWords = _StatsUnknownWords + 1;
            }
            else if(response.error == 20)
            {
               new MessageBox(Localization.Get("shop_not_enough_stars_title"),Localization.Get("shop_not_enough_stars"),false,true,function():void
               {
                  PanelManager.Instance.CloseAll();
                  LogicManager.Instance.SetState("ShopOverview");
               },true,null,true,true);
            }
            else
            {
               _HasPlayError = true;
               new MessageBox(Localization.Get("whoops"),Localization.Get("play_word_server_error"),true);
            }
         }
      }
      
      private function OnSwapAllKeepTurn(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         GameSessionCacheList.RemoveSessionByID(_GameSessionData.GameID);
         _ResetBlocks = true;
         _GameSessionData.Unlock();
         if(response.result == ":)")
         {
            CheckBoosterStatus();
            _RefreshRack = true;
            ClientData.Instance.CurrentGameSession.Set(response.game,259200,true,false);
            ClientData.Instance.Inventory.TotalStars = _GameSessionData.TotalStars;
            var gameData:GameInfoData = new GameInfoData();
            if(gameData.CreateFromSession(_GameSessionData))
            {
               ClientData.Instance.GameListData.Merge(response.overviewId,gameData);
            }
            ClearHintLetters();
         }
         else if(response.error == 20)
         {
            new MessageBox(Localization.Get("shop_not_enough_stars_title"),Localization.Get("shop_not_enough_stars"),false,true,function():void
            {
               PanelManager.Instance.CloseAll();
               LogicManager.Instance.SetState("ShopOverview");
            },true,null,true,true);
         }
         else
         {
            _HasPlayError = true;
            new MessageBox(Localization.Get("whoops"),Localization.Get("play_word_server_error"),true);
         }
      }
      
      override protected function OnHintClick(param1:MouseEvent = null) : void
      {
         e = param1;
         super.OnHintClick(e);
         if(BaseGame.Instance)
         {
            if(!TrackingData.Instance.HasViewedHintExplanation)
            {
               return;
               §§push(new MessageBox(Localization.Get("hint_feature_explain_title"),Localization.Get("hint_feature_explain_body",AppData.Instance.CostHint),false,true,function():void
               {
                  TrackingData.Instance.SetViewedHintExplanation();
                  OnHintClick(null);
               },true));
            }
            else if(WordOnGoodsManager.checkStarFlow(AppData.Instance.CostHint,OnHintClick,Localization.Get("shop_buy_stars_quickly_feature_hint")))
            {
               if(_GameSessionData.YourBestWord != null)
               {
                  WaitBox.Show();
                  PHPWrapper.Hint(OnHint,_GameSessionData.GameID);
               }
               else
               {
                  ShowNoWordPossibleDialog();
               }
            }
         }
      }
      
      private function OnHint(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            _GameSessionData.SetHintValue(param1.hint.hintsLeft);
            ClientData.Instance.Inventory.TotalStars = param1.hint.stars;
            SWRVETracker.Instance.TrackVirtualPurchase(1,"consumable.hint",AppData.Instance.CostHint,"stars");
            ShowHint();
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("consumable_use_failed"),true);
         }
      }
      
      override protected function OnSpyClick(param1:MouseEvent) : void
      {
         e = param1;
         super.OnSpyClick(e);
         if(!TrackingData.Instance.HasViewedPeekExplanation)
         {
            new MessageBox(Localization.Get("peek_feature_explain_title"),Localization.Get("peek_feature_explain_body",AppData.Instance.CostSneakPeek),false,true,function():void
            {
               TrackingData.Instance.SetViewedPeekExplanation();
               OnSneakPeekClick();
            },true);
         }
         else
         {
            OnSneakPeekClick();
         }
      }
      
      private function OnSneakPeekClick() : void
      {
         if(BaseGame.Instance)
         {
            if(WordOnGoodsManager.checkStarFlow(AppData.Instance.CostSneakPeek,OnSneakPeekClick,Localization.Get("shop_buy_stars_quickly_feature_peek")))
            {
               WaitBox.Show();
               PHPWrapper.SneakPeek(OnSneakPeek,_GameSessionData.GameID);
            }
         }
      }
      
      private function OnCheckTilesClick() : void
      {
         if(BaseGame.Instance)
         {
            if(WordOnGoodsManager.checkStarFlow(AppData.Instance.CostCheckPile,OnCheckTilesClick,Localization.Get("shop_buy_stars_quickly_feature_peek")))
            {
               WaitBox.Show();
               PHPWrapper.CheckTiles(OnCheckTilesLeft,_GameSessionData.GameID);
            }
         }
      }
      
      private function OnSneakPeek(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Inventory.TotalStars = param1.sneakPeek.stars;
            new SneakPeekPanel(param1.sneakPeek,_GameSessionData.OtherTilesetID,_GameSessionData.YourTilesetID);
            _StatsPeeks = _StatsPeeks + 1;
            SWRVETracker.Instance.TrackVirtualPurchase(1,"consumable.sneakpeek",AppData.Instance.CostSneakPeek,"stars");
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("consumable_use_failed"),true);
         }
      }
      
      private function OnCheckTilesLeft(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Inventory.TotalStars = param1.checkTiles.stars;
            new CheckPilePanel(param1.checkTiles,_GameSessionData.DictionaryLanguage);
            _StatsPile = _StatsPile + 1;
            SWRVETracker.Instance.TrackVirtualPurchase(1,"consumable.checkpile",AppData.Instance.CostCheckPile,"stars");
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("consumable_use_failed"),true);
         }
      }
      
      private function ShouldSeeGameTips() : Boolean
      {
         if(!AppData.Instance.ShowGameTips)
         {
            return false;
         }
         var _loc1_:Number = AppData.Instance.AppInstallDate;
         var _loc2_:Number = new Date(2014,2,24).getTime();
         return _loc1_ >= _loc2_;
      }
      
      private function OnChatReceived(param1:ChatEvent) : void
      {
         if(param1.BadgeAmount > 0)
         {
            if(!(PanelManager.Instance.ActivePanel is ChatPanel))
            {
               _BtnChat.SetBadge(param1.BadgeAmount.toString());
            }
         }
      }
      
      override public function Dispose() : void
      {
         if(!_HasPlayError)
         {
            GameSessionCacheList.StoreSession(_GameSessionData);
         }
         else
         {
            GameSessionCacheList.RemoveSessionByID(_GameSessionData.GameID);
         }
         ClientData.Instance.Inventory.TotalCoins = _GameSessionData.TotalCoins;
         var _loc1_:ChatSessionData = ClientData.Instance.ChatHistory.CurrentChatSession;
         if(_loc1_)
         {
            _loc1_.removeEventListener("ChatSessionUpdated",OnChatReceived);
         }
         super.Dispose();
      }
   }
}
