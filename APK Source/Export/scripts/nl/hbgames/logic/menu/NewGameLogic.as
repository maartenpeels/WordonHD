package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.list.ThumbNavigationListItem;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.managers.ShareManager;
   
   public class NewGameLogic extends Logic
   {
       
      public function NewGameLogic()
      {
         super(new libNewGameScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _List.Add(new LabelListItem(Localization.Get("new_game_title_play"),1));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_with_facebook_title"),Localization.Get("new_game_with_facebook_sub"),4,OnPlayFBFriendClick));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_with_friend_title"),Localization.Get("new_game_with_friend_sub"),3,OnPlayWOFriendClick));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_search_player_title"),Localization.Get("new_game_search_player_sub"),2,OnSearchClick));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_play_with_random_opponent_title"),Localization.Get("new_game_play_with_random_opponent_sub"),1,OnPlayRandomClick));
         _List.Add(new LabelListItem(Localization.Get("new_game_title_invite"),2));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_promo_sub"),Localization.Get("new_game_invite_promo_title"),6,OnInviteCode));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_facebook_title"),Localization.Get("new_game_invite_facebook_sub"),7,OnInviteFB));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_twitter_title"),Localization.Get("new_game_invite_twitter_sub"),8,OnInviteTwitter));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_more_title"),Localization.Get("new_game_invite_more_sub"),9,OnInviteMore));
         CenterList();
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         LogicManager.Instance.SetState("GameOverview",null,"AnimRight");
      }
      
      private function OnInviteCode() : void
      {
         LogicManager.Instance.SetState("Promoshare");
      }
      
      private function OnInviteFB() : void
      {
         var _loc1_:String = Localization.Get("promoshare_sharemsg_body","http://www.wordonhd.com/play",ClientData.Instance.InviteCode,ClientData.Instance.Player.Name);
         FBWrapper.Post(_loc1_);
      }
      
      private function OnInviteTwitter() : void
      {
         ShareManager.SharePromoMessageTwitter();
      }
      
      private function OnInviteMore() : void
      {
         ShareManager.SharePromoMessageNative();
      }
      
      private function OnPractice() : void
      {
      }
      
      private function OnPlayWOFriendClick() : void
      {
         ClientData.Instance.LastNewGameOption = 1;
         LogicManager.Instance.SetState("EmailFriends",null,"AnimLeft");
      }
      
      private function OnPlayFBFriendClick() : void
      {
         if(ClientData.Instance.IsFacebookUser)
         {
            ClientData.Instance.LastNewGameOption = 1;
            LogicManager.Instance.SetState("FBFriends",null,"AnimLeft");
         }
         else
         {
            ClientData.Instance.MigrateToFacebook(function():void
            {
               OnPlayFBFriendClick();
            });
         }
      }
      
      private function OnSearchClick() : void
      {
         ClientData.Instance.LastNewGameOption = 1;
         LogicManager.Instance.SetState("SearchPlayer",null,"AnimLeft");
      }
      
      private function OnPlayRandomClick() : void
      {
         ClientData.Instance.LastNewGameOption = 0;
         LogicManager.Instance.SetState("NewGameSettings",null,"AnimLeft");
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
