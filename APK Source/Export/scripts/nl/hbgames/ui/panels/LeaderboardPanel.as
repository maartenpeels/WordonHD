package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.IconButton;
   import nl.hbgames.ui.list.DigitalClockListItem;
   import nl.hbgames.ui.list.NavigationListItem;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.WordOn;
   import nl.hbgames.ui.popups.TournamentResultBox;
   import nl.hbgames.data.AppData;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.ui.list.RankListItem;
   import flash.events.MouseEvent;
   import nl.hbgames.utils.Time;
   
   public class LeaderboardPanel extends BasePanel
   {
       
      protected const BATCH_LENGTH:uint = 10;
      
      private var _CurBatchIndex:int = 0;
      
      private const CLOCK_REFRESH_RATE:Number = 0.5;
      
      private var _Timer:Number;
      
      private var _Data:Object;
      
      private var _Friends:Array;
      
      private var _BtnHelp:IconButton;
      
      private var _DigitalClockItem:DigitalClockListItem;
      
      private var _ShowMoreItem:NavigationListItem;
      
      private var _IsReady:Boolean;
      
      public function LeaderboardPanel()
      {
         super(new libLeaderboardScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _IsReady = false;
         _Timer = 0;
         _BtnHelp = new IconButton(_Content.btnHelp,3,OnHelpClick);
         _ShowMoreItem = new NavigationListItem(Localization.Get("friends_show_more_title"),Localization.Get("friends_show_more_desc"),ShowNextBatch);
      }
      
      override protected function OnOpened() : void
      {
         super.OnOpened();
         ClientData.Instance.Social.LoadFacebookFriends(OnFriendsReceived);
      }
      
      private function OnFriendsReceived(param1:Boolean) : void
      {
         var _loc4_:* = 0;
         var _loc2_:Array = ClientData.Instance.Social.FacebookPlayers;
         var _loc3_:Array = [];
         _loc3_.push(ClientData.Instance.FacebookID);
         _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_.push(_loc2_[_loc4_].id);
            _loc4_++;
         }
         WaitBox.Show();
         PHPWrapper.GetLeaderboard(OnDataReceived,_loc3_);
      }
      
      private function OnDataReceived(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            WordOn.Instance.Audio.Play("sfxJingleRankings");
            _Data = param1;
            if(_Data.tournament)
            {
               new TournamentResultBox(_Data.tournament,ShowRanking);
            }
            else
            {
               ShowRanking();
               AppData.Instance.RemoveNewsItemsByType(5);
            }
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("leaderboard_load_error"));
            this.Close();
         }
      }
      
      private function ShowRanking() : void
      {
         var _loc1_:* = NaN;
         var _loc2_:Object = _Data && _Data.leaderboard?_Data.leaderboard:null;
         if(_loc2_)
         {
            _List.Add(new LabelListItem(Localization.Get("leaderboard_label_title")));
            _loc1_ = new Date().getTime() + (_loc2_.timeLeft?_loc2_.timeLeft * 1000:0.0);
            _DigitalClockItem = §§dup(new DigitalClockListItem(Localization.Get("leaderboard_tournament_ends"),_loc1_));
            _List.Add(new DigitalClockListItem(Localization.Get("leaderboard_tournament_ends"),_loc1_));
            _Friends = _loc2_.friends?_loc2_.friends:[];
            ShowNextBatch();
            CenterList();
            SWRVETracker.Instance.TrackCustomEvent("screen.leaderboard",{"friends":_Friends.length});
            _IsReady = true;
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("leaderboard_load_error"));
            this.Close();
         }
      }
      
      private function ShowNextBatch() : void
      {
         var _loc4_:* = 0;
         var _loc1_:* = null;
         var _loc2_:uint = _CurBatchIndex + 10;
         var _loc3_:* = false;
         if(_loc2_ >= _Friends.length)
         {
            _loc2_ = _Friends.length;
            _loc3_ = true;
         }
         _List.Remove(_ShowMoreItem,false);
         _loc4_ = _CurBatchIndex;
         while(_loc4_ < _loc2_)
         {
            _loc1_ = _Friends[_loc4_];
            _List.Add(new RankListItem(_loc1_.id,_loc1_.name,_loc1_.score,_loc1_.border,_loc4_ + 1));
            _loc4_++;
         }
         if(!_loc3_)
         {
            _List.Add(_ShowMoreItem);
         }
         _CurBatchIndex = §§dup()._CurBatchIndex + 10;
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
      }
      
      private function OnHelpClick(param1:MouseEvent) : void
      {
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_IsReady)
         {
            _Timer = §§dup()._Timer + Time.DeltaTime;
            if(_Timer >= 0.5)
            {
               _Timer = 0;
               _DigitalClockItem.UpdateClock();
            }
         }
      }
      
      override public function Dispose() : void
      {
         _Data = null;
         _BtnHelp.Dispose();
         _BtnHelp = null;
         _DigitalClockItem = null;
         super.Dispose();
      }
   }
}
