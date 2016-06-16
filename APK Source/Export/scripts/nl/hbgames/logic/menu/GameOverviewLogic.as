package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.buttons.IconButton;
   import nl.hbgames.ui.buttons.BigFooterButton;
   import nl.hbgames.ui.list.GameListItem;
   import nl.hbgames.ui.list.NewsListItem;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.ui.list.NoteListItem;
   import flash.display.Bitmap;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.AppData;
   import nl.hbgames.net.GATracker;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.managers.ads.AdManager;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.managers.AssetManager;
   import com.greensock.TweenLite;
   import nl.hbgames.ui.popups.TutorialBox;
   import nl.hbgames.config.Settings;
   import flash.events.Event;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.WordOn;
   import nl.hbgames.ui.list.PendingGameListItem;
   import nl.hbgames.ui.popups.GameInviteBox;
   import nl.hbgames.ui.popups.SuggestionBoxPlayers;
   import nl.hbgames.ui.popups.SuggestionBoxNewFriends;
   import nl.hbgames.net.LongPoll;
   import nl.hbgames.ui.list.ScrollingList;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.net.PHPWrapper;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.panels.SettingsPanel;
   import nl.hbgames.ui.panels.LeaderboardPanel;
   import nl.hbgames.events.ChatEvent;
   
   public class GameOverviewLogic extends Logic
   {
      
      private static var _PrevListPosition:Object;
       
      private var _DisplayingTip:Boolean;
      
      private var _BtnLeaderboard:IconButton;
      
      private var _BtnSettings:IconButton;
      
      private var _BtnStart:BigFooterButton;
      
      private var _SelectedItem:GameListItem;
      
      private var _ItemToRemove:GameListItem;
      
      private var _NewsItem:NewsListItem;
      
      private var _YourTurnLabel:LabelListItem;
      
      private var _YourGamesAmount:int = 0;
      
      private var _FinishNote:NoteListItem;
      
      private var _FinishedGamesAmount:int = 0;
      
      private var _LastForcedRefresh:Number = 0;
      
      private var _Cover:Bitmap;
      
      public function GameOverviewLogic()
      {
         super(new libGameOverviewScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _BtnSettings = new IconButton(_Content.btnSettings,6,OnSettingsClick);
         _BtnLeaderboard = new IconButton(_Content.btnLeaderboard,4,OnLeaderboardClick);
         _BtnStart = new BigFooterButton(_Content.btnStartGame,OnStartClick,Localization.Get("start_new_game"),"sfxJingleNewGame");
         ClientData.Instance.GameListData.addEventListener("change",OnDataUpdate);
         ClientData.Instance.ChatHistory.addEventListener("ChatSessionUpdated",OnChatReceived);
         if(AppData.Instance.NewsItems != null && AppData.Instance.NewsItems.length > 0)
         {
            _NewsItem = new NewsListItem(OnAllowNewsItemClick);
         }
         GATracker.trackScreen("overview");
         OnDataUpdate();
      }
      
      private function OnAllowNewsItemClick() : Boolean
      {
         if(_DisplayingTip)
         {
            return false;
         }
         return true;
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         var _loc3_:Boolean = AppData.Instance.ShouldShowAd;
         var _loc2_:Boolean = AppData.Instance.IgnoreAdIntervalForNextShowing;
         AppData.Instance.ShouldShowAd = false;
         AppData.Instance.IgnoreAdIntervalForNextShowing = false;
         if(param1 != null)
         {
            if(param1.proceedInviteFlow)
            {
               new MessageBox(Localization.Get("awesome"),Localization.Get("overview_invite_play_game",ClientData.Instance.InviteeDisplayName));
               ClientData.Instance.ResetInviteeData();
               _loc3_ = false;
            }
         }
         if(_loc3_)
         {
            AdManager.instance.showInterstitial("FromGameToOverview",_loc2_);
         }
         if(ClientData.Instance.GameListData.IsInitialized && PopupManager.Instance.PopupCount == 0 && !_loc3_)
         {
            AppData.Instance.DisplayPromo();
         }
      }
      
      public function ShowNewcomerTip() : void
      {
         _Banks.EnableButtons(false);
         _Cover = new Bitmap(AssetManager.BackgroundCover);
         _Cover.height = _BtnStart.Content.y - 8 * AssetManager.ContentScaleFactor;
         _Cover.alpha = 0;
         _Content.addChild(_Cover);
         TweenLite.to(_Cover,0.5,{"alpha":1});
         new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y + 150 * AssetManager.ContentScaleFactor,Localization.Get("newcomer_start_new_game"));
         _DisplayingTip = true;
      }
      
      private function OnDataUpdate(param1:Event = null) : void
      {
         var _loc7_:* = 0;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc3_:* = NaN;
         WaitBox.Hide();
         if(_List == null)
         {
            return;
         }
         WordOn.Instance.Audio.Play("sfxRefreshEnd");
         var _loc4_:Object = ClientData.Instance.GameListData.GetLists();
         var _loc2_:Boolean = ClientData.Instance.GameListData.IsInitialized;
         _FinishedGamesAmount = 0;
         _YourGamesAmount = 0;
         _List.Remove(_NewsItem,false);
         _List.Clear(false,true);
         _List.EnableListRefresh(true,OnForceRefresh);
         if(_NewsItem != null)
         {
            _List.Add(_NewsItem);
         }
         _YourTurnLabel = §§dup(new LabelListItem(Localization.Get("overview_your_turn")));
         _List.Add(new LabelListItem(Localization.Get("overview_your_turn")));
         if(_loc4_.yours.length > 0)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc4_.yours.length)
            {
               _List.Add(new GameListItem(_loc4_.yours[_loc7_],OnGameItemClick,null,OnGameResigned));
               _YourGamesAmount = _YourGamesAmount + 1;
               _loc7_++;
            }
         }
         else
         {
            _List.Add(new NoteListItem(Localization.Get("overview_your_turn_no_games"),false,!_loc2_));
         }
         _List.Add(new LabelListItem(Localization.Get("overview_their_turn"),2));
         if(_loc4_.theirs.length > 0 || _loc4_.pending.length > 0)
         {
            if(_loc4_.pending.length > 0)
            {
               _List.Add(new PendingGameListItem(_loc4_.pending));
            }
            _loc7_ = 0;
            while(_loc7_ < _loc4_.theirs.length)
            {
               _List.Add(new GameListItem(_loc4_.theirs[_loc7_],OnGameItemClick,null,OnGameResigned));
               _loc7_++;
            }
         }
         else
         {
            _List.Add(new NoteListItem(Localization.Get("overview_their_turn_no_games"),false,!_loc2_));
         }
         _List.Add(new LabelListItem(Localization.Get("overview_finished"),3));
         _FinishNote = new NoteListItem(Localization.Get("overview_finished_no_games"),false,!_loc2_);
         if(_loc4_.finished.length > 0)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc4_.finished.length)
            {
               _List.Add(new GameListItem(_loc4_.finished[_loc7_],OnGameItemClick,OnGameRemoveClick));
               _FinishedGamesAmount = _FinishedGamesAmount + 1;
               _loc7_++;
            }
         }
         else
         {
            _List.Add(_FinishNote);
         }
         CenterList();
         if(_PrevListPosition)
         {
            _List.SetScrollPosition(_PrevListPosition);
            _PrevListPosition = null;
         }
         if(!AppData.Instance.DisplayServerMessage())
         {
            _loc5_ = false;
            _loc6_ = false;
            if(ClientData.Instance.GameListData.IsInitialized)
            {
               if(!ClientData.Instance.IsNewUser && !PopupManager.Instance.ContainsType(GameInviteBox) && !PopupManager.Instance.ContainsType(TutorialBox))
               {
                  if(!ClientData.Instance.IsGuest && !AppData.Instance.HasSeenPlayerSuggestions)
                  {
                     if(_loc4_.yours.length + _loc4_.theirs.length == 0)
                     {
                        new SuggestionBoxPlayers();
                        AppData.Instance.HasSeenPlayerSuggestions = true;
                        _loc5_ = true;
                     }
                     if(!_loc5_)
                     {
                        _loc3_ = new Date().getTime();
                        if(AppData.Instance.LastNewPlayersCheck < _loc3_ - 86400000)
                        {
                           new SuggestionBoxNewFriends();
                           AppData.Instance.LastNewPlayersCheck = new Date().getTime();
                           _loc6_ = true;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function OnForceRefresh() : void
      {
         var _loc1_:Number = new Date().getTime();
         if(_LastForcedRefresh + AppData.Instance.ListRefreshIntervalInSecs * 1000 < _loc1_)
         {
            _LastForcedRefresh = _loc1_;
            ClientData.Instance.GameListData.ResetOverviewID();
            LongPoll.Instance.Connect();
         }
         else
         {
            OnDataUpdate();
         }
      }
      
      private function OnGameItemClick(param1:GameListItem) : void
      {
         if(!ScrollingList.IsDragging)
         {
            _SelectedItem = param1;
            LogicManager.Instance.SetState("GameVsPlayer",{
               "gameID":_SelectedItem.GameData.GameID,
               "languageID":_SelectedItem.GameData.DictionaryLanguage,
               "timeLeftInSec":_SelectedItem.GameData.TimeLeftInSeconds
            });
         }
      }
      
      private function OnGameRemoveClick(param1:GameListItem) : void
      {
         if(!ScrollingList.IsDragging)
         {
            if(param1.GameData != null && param1.GameData.GameID != null)
            {
               WaitBox.Show();
               _ItemToRemove = param1;
               PHPWrapper.RemoveFinishedGame(OnGameRemoved,param1.GameData.GameID);
            }
         }
      }
      
      private function OnGameRemoved(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.GameListData.Remove(_ItemToRemove.GameData.GameID);
            _List.Remove(_ItemToRemove);
            _ItemToRemove = null;
            _FinishedGamesAmount = _FinishedGamesAmount - 1;
            if(_FinishedGamesAmount == 0)
            {
               _List.Add(_FinishNote);
            }
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("game_delete_failed"));
         }
      }
      
      private function OnGameResigned(param1:GameListItem) : void
      {
         if(_FinishedGamesAmount == 0)
         {
            _List.Remove(_FinishNote,false);
         }
         _FinishedGamesAmount = _FinishedGamesAmount + 1;
         _YourGamesAmount = _YourGamesAmount - 1;
         var _loc2_:GameListItem = new GameListItem(param1.GameData,OnGameItemClick,OnGameRemoveClick);
         _List.Remove(param1,false);
         _List.Add(_loc2_);
         if(_YourGamesAmount == 0)
         {
            _List.AddAfter(new NoteListItem(Localization.Get("overview_your_turn_no_games")),_YourTurnLabel);
         }
      }
      
      private function OnSettingsClick(param1:MouseEvent) : void
      {
         if(!_DisplayingTip)
         {
            new SettingsPanel();
         }
      }
      
      private function OnLeaderboardClick(param1:MouseEvent = null) : void
      {
         e = param1;
         if(!_DisplayingTip)
         {
            if(ClientData.Instance.IsFacebookUser)
            {
               new LeaderboardPanel();
            }
            else
            {
               new MessageBox(Localization.Get("attention"),Localization.Get("feature_requires_facebook"),false,true,function():void
               {
                  ClientData.Instance.MigrateToFacebook(OnLeaderboardClick);
               },true);
            }
         }
      }
      
      private function OnStartClick(param1:MouseEvent = null) : void
      {
         PopupManager.Instance.RemoveAll();
         LogicManager.Instance.SetState("NewGame",null,"AnimLeft");
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      private function OnChatReceived(param1:ChatEvent) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         _loc3_ = 0;
         while(_loc3_ < _List.Items.length)
         {
            if(_List.Items[_loc3_] is GameListItem)
            {
               _loc2_ = _List.Items[_loc3_] as GameListItem;
               if(_loc2_.GameData.GameID == param1.GameID)
               {
                  _loc2_.GameData.SetUnseenChats(param1.BadgeAmount);
                  _loc2_.SetBadge(param1.BadgeAmount.toString());
                  return;
               }
            }
            _loc3_++;
         }
      }
      
      override public function Dispose() : void
      {
         _PrevListPosition = _List.GetScrollPosition();
         ClientData.Instance.ChatHistory.removeEventListener("ChatSessionUpdated",OnChatReceived);
         ClientData.Instance.GameListData.removeEventListener("change",OnDataUpdate);
         if(_Cover != null)
         {
            TweenLite.killTweensOf(_Cover);
            _Content.removeChild(_Cover);
            _Cover = null;
         }
         _BtnLeaderboard.Dispose();
         _BtnSettings.Dispose();
         _BtnStart.Dispose();
         _BtnLeaderboard = null;
         _BtnSettings = null;
         _BtnStart = null;
         _SelectedItem = null;
         _ItemToRemove = null;
         _FinishNote = null;
         _NewsItem = null;
         super.Dispose();
      }
   }
}
