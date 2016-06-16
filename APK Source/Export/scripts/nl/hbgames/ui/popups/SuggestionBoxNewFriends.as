package nl.hbgames.ui.popups
{
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.list.SuggestionListItem;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.data.Localization;
   
   public class SuggestionBoxNewFriends extends BaseSuggestionBox
   {
       
      private var _FriendList:Array;
      
      public function SuggestionBoxNewFriends()
      {
         super(5,Localization.Get("suggestionbox_play_new_friends_title"),Localization.Get("suggestionbox_play_new_friends_body"));
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         SWRVETracker.Instance.TrackCustomEvent("game.suggestion.newfriends.initiate",{"loginType":ClientData.Instance.LoginType});
      }
      
      override public function OnShow() : void
      {
         super.OnShow();
         WaitBox.Show();
         PHPWrapper.GetFacebookNewPlayers(OnListLoaded);
      }
      
      private function OnListLoaded(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            if(param1.newcomers)
            {
               _FriendList = param1.newcomers as Array;
               Fill();
            }
            else
            {
               this.Remove();
            }
         }
         else
         {
            this.Remove();
         }
      }
      
      override protected function Fill() : void
      {
         var _loc2_:* = 0;
         var _loc1_:* = _FriendList.length >= 3;
         _loc2_ = 0;
         while(_loc2_ < _FriendList.length)
         {
            if(ShowItem(_FriendList[_loc2_].id,_FriendList[_loc2_].name,false,_loc1_))
            {
               _loc2_++;
               continue;
            }
            break;
         }
         super.Fill();
      }
      
      override protected function OnInviteClick(param1:MouseEvent) : void
      {
         var _loc5_:* = 0;
         var _loc3_:* = null;
         var _loc4_:Array = [];
         var _loc2_:Array = [];
         _loc5_ = 0;
         while(_loc5_ < _List.Items.length)
         {
            if(_List.Items[_loc5_] is SuggestionListItem)
            {
               _loc3_ = _List.Items[_loc5_] as SuggestionListItem;
               if(_loc3_.IsChecked && _loc3_.ID)
               {
                  _loc4_.push(_loc3_.ID);
                  _loc2_.push(_loc3_.Name);
               }
            }
            _loc5_++;
         }
         SWRVETracker.Instance.TrackCustomEvent("game.suggestion.newfriends.invitation_sent",{
            "dictionary":ClientData.Instance.DictionaryLanguage,
            "inviteAmount":_loc4_.length,
            "loginType":ClientData.Instance.LoginType,
            "activeGames":ClientData.Instance.GameListData.ActiveAmount
         });
         ClientData.Instance.LastNewGameOption = 1;
         ClientData.Instance.LastNewGameOpponentNames = _loc2_;
         LogicManager.Instance.SetState("NewGameSettings",{
            "woIds":_loc4_,
            "names":_loc2_
         });
         Remove();
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
