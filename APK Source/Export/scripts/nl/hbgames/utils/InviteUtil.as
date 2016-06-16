package nl.hbgames.utils
{
   import nl.hbgames.ui.popups.GameStartBox;
   import nl.hbgames.WordOn;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.PendingInviteData;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.PanelManager;
   
   public class InviteUtil extends Object
   {
      
      private static var _Callback:Function;
      
      private static var _ID:String;
      
      private static var _IsFacebook:Boolean;
      
      private static var _Language:String;
      
      private static var _TilesetID:int;
      
      private static var _OpponentName:String;
      
      private static var _IsRandom:Boolean;
       
      public function InviteUtil()
      {
         super();
      }
      
      public static function SendToPlayer(param1:Function, param2:Boolean, param3:String, param4:String, param5:int, param6:Boolean = false, param7:String = "") : void
      {
         _Callback = param1;
         _IsFacebook = param2;
         _ID = param3;
         _Language = param4;
         _TilesetID = param5;
         _OpponentName = param7;
         _IsRandom = false;
         if(param6)
         {
            new GameStartBox(_OpponentName,_Language,OnProceedInvite);
         }
         else
         {
            OnProceedInvite();
         }
      }
      
      public static function SendRandom(param1:Function, param2:String, param3:int) : void
      {
         WordOn.Instance.Audio.Play("sfxJingleInviteFriend");
         _Callback = param1;
         _IsRandom = true;
         _Language = param2;
         _TilesetID = param3;
         SWRVETracker.Instance.TrackCustomEvent("game.random.invitation_sent",{
            "dictionary":_Language,
            "loginType":ClientData.Instance.LoginType,
            "activeGames":ClientData.Instance.GameListData.ActiveAmount,
            "fbGameFriends":ClientData.Instance.Social.FacebookPlayers.length,
            "gameFriends":ClientData.Instance.Social.FavoritesList.length
         });
         PHPWrapper.SendInviteRandom(OnInviteResult,param2,param3);
      }
      
      public static function SendSuggestionList(param1:Function, param2:Array, param3:Array, param4:String, param5:int) : void
      {
         WordOn.Instance.Audio.Play("sfxJingleInviteFriend");
         _Callback = param1;
         _IsRandom = false;
         _Language = param4;
         _TilesetID = param5;
         WaitBox.Show();
         PHPWrapper.SendInvites(OnInviteResult,param2,param3,param4,param5);
      }
      
      private static function OnProceedInvite(param1:int = -1) : void
      {
         if(param1 > -1)
         {
            _TilesetID = param1;
         }
         WordOn.Instance.Audio.Play("sfxJingleInviteFriend");
         WaitBox.Show();
         SWRVETracker.Instance.TrackCustomEvent("game.friend.invitation_sent",{
            "dictionary":_Language,
            "loginType":ClientData.Instance.LoginType,
            "activeGames":ClientData.Instance.GameListData.ActiveAmount,
            "fbGameFriends":ClientData.Instance.Social.FacebookPlayers.length,
            "gameFriends":ClientData.Instance.Social.FavoritesList.length
         });
         PHPWrapper.SendInvites(OnInviteResult,_IsFacebook?null:[_ID],_IsFacebook?[_ID]:null,_Language,_TilesetID);
      }
      
      private static function OnInviteResult(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            if(!_IsRandom)
            {
               var i:uint = 0;
               while(i < response.userIds.length)
               {
                  ClientData.Instance.GameListData.AddPending(new PendingInviteData(response.userIds[i].id,response.userIds[i].fbId));
                  i = i + 1;
               }
            }
            WordOn.Instance.Audio.Play("sfxJingleInviteConfirm");
            if(_Callback != null)
            {
               _Callback();
            }
         }
         else
         {
            if(response.error == 15)
            {
               new MessageBox(Localization.Get("sorry"),Localization.Get("max_game_limit_reached"),true,true,function():void
               {
                  LogicManager.Instance.SetState("ShopOverview");
                  PanelManager.Instance.CloseAll();
               },true);
            }
            else if(response.error == 18)
            {
               new MessageBox(Localization.Get("sorry"),Localization.Get("invite_already_sent",_OpponentName));
            }
            else
            {
               new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_send_invite"),true);
            }
            if(_IsRandom)
            {
               SWRVETracker.Instance.TrackCustomEvent("game.random.invitation_sent_failed",{
                  "dictionary":_Language,
                  "error":response.error
               });
            }
            else
            {
               SWRVETracker.Instance.TrackCustomEvent("game.friend.invitation_sent_failed",{
                  "dictionary":_Language,
                  "error":response.error
               });
            }
         }
      }
   }
}
