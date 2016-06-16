package nl.hbgames.ui.popups
{
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.utils.Random;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.list.SuggestionListItem;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.data.Localization;
   
   public class SuggestionBoxPlayers extends BaseSuggestionBox
   {
       
      public function SuggestionBoxPlayers()
      {
         super(5,Localization.Get("suggestionbox_play_friends_title"),Localization.Get("suggestionbox_play_friends_body"));
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         SWRVETracker.Instance.TrackCustomEvent("game.suggestion.players.initiate",{"loginType":ClientData.Instance.LoginType});
      }
      
      override public function OnShow() : void
      {
         super.OnShow();
         WaitBox.Show();
         ClientData.Instance.Social.LoadFavorites(OnFavoritesLoaded);
      }
      
      private function OnFavoritesLoaded() : void
      {
         if(!ClientData.Instance.IsFacebookUser)
         {
            Fill();
         }
         else
         {
            ClientData.Instance.Social.LoadFacebookFriends(function(param1:Boolean):void
            {
               Fill();
            });
         }
      }
      
      override protected function Fill() : void
      {
         var _loc5_:* = 0;
         var _loc1_:Array = ClientData.Instance.Social.FacebookPlayers;
         var _loc3_:Array = ClientData.Instance.Social.FavoritesList;
         var _loc4_:* = false;
         Random.shuffle(_loc1_);
         Random.shuffle(_loc3_);
         var _loc2_:* = _loc1_.length + _loc3_.length >= 3;
         _loc5_ = 0;
         while(_loc5_ < _loc1_.length)
         {
            _loc4_ = ShowItem(_loc1_[_loc5_].id,_loc1_[_loc5_].fullName,true,_loc2_);
            if(_loc4_)
            {
               _loc5_++;
               continue;
            }
            break;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc4_ = ShowItem(_loc3_[_loc5_].id,_loc3_[_loc5_].displayname,false,_loc2_);
            if(_loc4_)
            {
               _loc5_++;
               continue;
            }
            break;
         }
         super.Fill();
      }
      
      override protected function OnInviteClick(param1:MouseEvent) : void
      {
         var _loc6_:* = 0;
         var _loc4_:* = null;
         var _loc5_:Array = [];
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         _loc6_ = 0;
         while(_loc6_ < _List.Items.length)
         {
            if(_List.Items[_loc6_] is SuggestionListItem)
            {
               _loc4_ = _List.Items[_loc6_] as SuggestionListItem;
               if(_loc4_.IsChecked && _loc4_.ID)
               {
                  if(_loc4_.IsFacebook)
                  {
                     _loc2_.push(_loc4_.ID);
                  }
                  else
                  {
                     _loc5_.push(_loc4_.ID);
                  }
                  _loc3_.push(_loc4_.Name);
               }
            }
            _loc6_++;
         }
         ClientData.Instance.LastNewGameOption = 1;
         ClientData.Instance.LastNewGameOpponentNames = _loc3_;
         LogicManager.Instance.SetState("NewGameSettings",{
            "woIds":_loc5_,
            "fbIds":_loc2_,
            "names":_loc3_
         });
         SWRVETracker.Instance.TrackCustomEvent("game.suggestion.players.invitation_sent",{
            "dictionary":ClientData.Instance.DictionaryLanguage,
            "inviteAmount":_loc5_.length + _loc2_.length,
            "loginType":ClientData.Instance.LoginType,
            "activeGames":ClientData.Instance.GameListData.ActiveAmount
         });
         Remove();
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
