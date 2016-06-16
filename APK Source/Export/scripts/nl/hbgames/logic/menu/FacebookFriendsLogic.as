package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.list.NavigationListItem;
   import nl.hbgames.ui.buttons.BigFooterButton;
   import flash.display.Bitmap;
   import nl.hbgames.ui.popups.TutorialBox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.ui.list.SimpleSearchListItem;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.TrackingData;
   import nl.hbgames.managers.AssetManager;
   import com.greensock.TweenLite;
   import nl.hbgames.config.Settings;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.ui.list.NoteListItem;
   import nl.hbgames.ui.list.FacebookPlayerListItem;
   import nl.hbgames.managers.LogicManager;
   
   public class FacebookFriendsLogic extends Logic
   {
       
      protected const BATCH_LENGTH:uint = 30;
      
      private var _ShowMoreItem:NavigationListItem;
      
      private var _CurBatchIndex:int = 0;
      
      private var _BtnInvite:BigFooterButton;
      
      private var _HasSearched:Boolean;
      
      private var _SearchResults:Array;
      
      private var _Cover:Bitmap;
      
      private var _Popup:TutorialBox;
      
      public function FacebookFriendsLogic()
      {
         super(new libFacebookFriendsScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _ShowMoreItem = new NavigationListItem(Localization.Get("friends_show_more_title"),Localization.Get("friends_show_more_desc"),ShowNextFBBatch);
         _List.Add(new LabelListItem(Localization.Get("find_players"),1));
         _List.Add(new SimpleSearchListItem(Localization.Get("search_simple_descr"),OnSearchChange));
         _List.Add(new LabelListItem(Localization.Get("game_facebook_friends"),2));
         CenterList();
         _BtnInvite = new BigFooterButton(_Content.btnInvite,function(param1:MouseEvent):void
         {
            HideNewcomerTip();
            FBWrapper.ShowInviteList();
         },Localization.Get("invite_more_facebook_friends_label"));
         WaitBox.Show();
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         data = param1;
         super.OnFocus(data);
         ClientData.Instance.Social.LoadFacebookFriends(function(param1:Boolean):void
         {
            WaitBox.Hide();
            if(param1)
            {
               if(!TrackingData.Instance.HasViewedFBInviteTip)
               {
                  ShowNewcomerTip();
                  TrackingData.Instance.SetViewedFBInviteTip();
               }
               BuildFriendsList(ClientData.Instance.Social.FacebookPlayers);
            }
            else
            {
               OnBackClick();
            }
         });
      }
      
      private function ShowNewcomerTip() : void
      {
         _Banks.EnableButtons(false);
         _Cover = new Bitmap(AssetManager.BackgroundCover);
         _Cover.height = _BtnInvite.Content.y - 8 * AssetManager.ContentScaleFactor;
         _Cover.alpha = 0;
         _Content.addChild(_Cover);
         TweenLite.to(_Cover,0.5,{"alpha":1});
         _Popup = new TutorialBox(Settings.SCREEN_CENTER_X,Settings.SCREEN_CENTER_Y + 150 * AssetManager.ContentScaleFactor,Localization.Get("newcomer_invite_fb_friends"),Localization.Get("game_tip_button_got_it"),HideNewcomerTip);
      }
      
      private function HideNewcomerTip() : void
      {
         if(_Cover != null)
         {
            TweenLite.killTweensOf(_Cover);
            _Content.removeChild(_Cover);
            _Cover = null;
            _Banks.EnableButtons(true);
            PopupManager.Instance.Remove(_Popup);
            _Popup = null;
         }
      }
      
      private function OnSearchChange(param1:String) : void
      {
         key = param1;
         var friends:Array = ClientData.Instance.Social.FacebookPlayers;
         var results:Array = [];
         if(friends.length > 0 && key != null && key.length > 0)
         {
            var i:uint = 0;
            while(i < friends.length)
            {
               var word1:String = key.toLowerCase();
               var word2:String = friends[i].fullName.toLowerCase();
               if(word2.indexOf(word1) != -1)
               {
                  results.push(friends[i]);
               }
               i = i + 1;
            }
            results.sort(function(param1:Object, param2:Object):int
            {
               var _loc4_:int = param1.fullName.toLowerCase().indexOf(word1);
               var _loc3_:int = param2.fullName.toLowerCase().indexOf(word1);
               if(_loc4_ < _loc3_)
               {
                  return -1;
               }
               if(_loc4_ == _loc3_)
               {
                  return 0;
               }
               return 1;
            });
         }
         else
         {
            results = friends;
         }
         _HasSearched = true;
         _CurBatchIndex = 0;
         BuildFriendsList(results);
      }
      
      private function BuildFriendsList(param1:Array) : void
      {
         if(_HasSearched)
         {
            _List.Remove(_ShowMoreItem,false);
            _List.RemoveFromIndex(3);
         }
         if(ClientData.Instance.Social.FacebookPlayers.length > 0)
         {
            _SearchResults = param1;
            ShowNextFBBatch();
         }
         else
         {
            _List.Add(new NoteListItem(Localization.Get("no_playing_fb_friends")));
         }
         CenterList();
      }
      
      private function ShowNextFBBatch() : void
      {
         var _loc3_:* = 0;
         var _loc1_:uint = _CurBatchIndex + 30;
         var _loc2_:* = false;
         if(_SearchResults.length == 0)
         {
            _List.Add(new NoteListItem(Localization.Get("search_no_results")));
            return;
         }
         if(_loc1_ >= _SearchResults.length)
         {
            _loc1_ = _SearchResults.length;
            _loc2_ = true;
         }
         _List.Remove(_ShowMoreItem,false);
         _loc3_ = _CurBatchIndex;
         while(_loc3_ < _loc1_)
         {
            _List.Add(new FacebookPlayerListItem(_SearchResults[_loc3_]));
            _loc3_++;
         }
         if(!_loc2_)
         {
            _List.Add(_ShowMoreItem);
         }
         _CurBatchIndex = §§dup()._CurBatchIndex + 30;
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         LogicManager.Instance.SetState("NewGame",null,"AnimRight");
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         HideNewcomerTip();
         _CurBatchIndex = 0;
         _BtnInvite.Dispose();
         _BtnInvite = null;
         _ShowMoreItem = null;
         super.Dispose();
      }
   }
}
