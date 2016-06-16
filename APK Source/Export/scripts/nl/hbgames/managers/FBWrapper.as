package nl.hbgames.managers
{
   import nl.hbgames.managers.social.SocialManager;
   import nl.hbgames.utils.Response;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.config.Settings;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.social.SocialProfile;
   import nl.hbgames.net.PHPWrapper;
   
   public class FBWrapper extends Object
   {
      
      private static var _Callback:Function;
       
      public function FBWrapper()
      {
         super();
      }
      
      public static function Connect(param1:Function) : void
      {
         _Callback = param1;
         SocialManager.instance.connect(OnConnect,true,"public_profile,user_friends");
      }
      
      private static function OnConnect(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            ClientData.Instance.FacebookID = SocialManager.instance.profile.id;
            ClientData.Instance.FacebookToken = SocialManager.instance.authToken;
         }
         else if(param1.errorCode == 99)
         {
            new MessageBox(Localization.Get("facebook_error_title"),Localization.Get("facebook_login_fail_to_fetch_profile"),true);
         }
         else if(param1.errorCode == 98)
         {
            if(Settings.IS_ANDROID)
            {
               new MessageBox(Localization.Get("facebook_error_title"),Localization.Get("facebook_login_fail"),true);
            }
            else
            {
               new MessageBox(Localization.Get("facebook_error_title"),Localization.Get("facebook_login_fail_ios"),true);
            }
         }
      }
      
      public static function Post(param1:String, param2:String = "") : void
      {
         SocialManager.instance.showShareDialog(OnPost,"WordOn HD",Localization.Get("facebook_post_descr"),param1,"http://www.wordonhd.com/play",param2 == ""?"http://www.wordonhd.com/images/icon_fb_default.png":param2);
      }
      
      private static function OnPost(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            new MessageBox(Localization.Get("facebook_post_success_title"),Localization.Get("facebook_post_own_wall_success_descr"));
         }
      }
      
      public static function Invite(param1:String, param2:Array) : void
      {
         WaitBox.Show();
         SocialManager.instance.showRequestDialog(OnInvite,"WordOn HD",param1,null,param2.join(","));
      }
      
      public static function ShowInviteList(param1:String = null, param2:Boolean = true) : void
      {
         body = param1;
         hidePlayingFriends = param2;
         WaitBox.Show();
         if(body == null)
         {
            var body:String = Localization.Get("facebook_post_invite_friend",ClientData.Instance.Player.Name);
         }
         ClientData.Instance.Social.LoadFacebookFriends(function(param1:Boolean):void
         {
            var _loc2_:* = null;
            var _loc3_:* = 0;
            if(param1)
            {
               _loc2_ = null;
               if(hidePlayingFriends)
               {
                  _loc2_ = [];
                  _loc3_ = 0;
                  while(_loc3_ < ClientData.Instance.Social.FacebookPlayers.length)
                  {
                     _loc2_.push((ClientData.Instance.Social.FacebookPlayers[_loc3_] as SocialProfile).id);
                     _loc3_++;
                  }
               }
               SocialManager.instance.showRequestDialog(OnInvite,"WordOn HD",body,null,null,_loc2_.join(","));
            }
         },true);
      }
      
      private static function OnInvite(param1:Response) : void
      {
         WaitBox.Hide();
         if(param1.isSuccess)
         {
            if(param1.data && param1.data.to is Array)
            {
               PHPWrapper.StoreInvite(null,param1.data.to.join(","),ClientData.Instance.DictionaryLanguage,ClientData.Instance.CurrentTilesetID);
            }
            new MessageBox(Localization.Get("facebook_post_success_title"),Localization.Get("facebook_invite_friend_success_descr"));
         }
         else if(param1.errorCode != 102)
         {
            new MessageBox(Localization.Get("facebook_error_title"),Localization.Get("facebook_post_error_descr"));
         }
      }
   }
}
