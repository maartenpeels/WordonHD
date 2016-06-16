package nl.hbgames.managers
{
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.config.Settings;
   import com.milkmangames.nativeextensions.GoViral;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.ui.popups.OptionsBox;
   
   public class ShareManager extends Object
   {
      
      private static const IPAD_NATIVE_POPUP_X:int = 0;
      
      private static const IPAD_NATIVE_POPUP_Y:int = 1024;
      
      private static var _Recipient:String = "";
      
      private static var _CurShareTitle:String;
      
      private static var _CurShareBody:String;
       
      public function ShareManager()
      {
         super();
      }
      
      public static function SharePromoMessage(param1:String = "") : void
      {
         var _loc2_:String = "http://www.wordonhd.com/play";
         _loc2_ = _loc2_.replace("http://","");
         _CurShareTitle = Localization.Get("promoshare_sharemsg_title");
         _CurShareBody = Localization.Get("share_twitter_tag") + " " + Localization.Get("promoshare_sharemsg_body",_loc2_,ClientData.Instance.InviteCode,ClientData.Instance.Player.Name);
         _Recipient = param1;
         Process();
      }
      
      public static function SharePromoMessageEmail(param1:String) : Boolean
      {
         if(!Settings.IS_DESKTOP && GoViral.isSupported())
         {
            if(GoViral.goViral.isEmailAvailable())
            {
               GoViral.goViral.showEmailComposer(Localization.Get("promoshare_sharemsg_title"),param1,Localization.Get("promoshare_sharemsg_body","http://www.wordonhd.com/play",ClientData.Instance.InviteCode,ClientData.Instance.Player.Name),false);
               return true;
            }
         }
         return false;
      }
      
      public static function SharePromoMessageNative() : Boolean
      {
         if(!Settings.IS_DESKTOP && GoViral.isSupported())
         {
            if(GoViral.goViral.isGenericShareAvailable())
            {
               GoViral.goViral.shareGenericMessage(Localization.Get("promoshare_sharemsg_title"),Localization.Get("promoshare_sharemsg_body","http://www.wordonhd.com/play",ClientData.Instance.InviteCode,ClientData.Instance.Player.Name),false,0,1024);
               return true;
            }
         }
         if(Settings.IS_IOS)
         {
            new MessageBox(Localization.Get("generic_share_fail_title"),Localization.Get("generic_share_fail_body_ios"),true);
         }
         else
         {
            new MessageBox(Localization.Get("generic_share_fail_title"),Localization.Get("generic_share_fail_body_android"),true);
         }
         return false;
      }
      
      public static function SharePromoMessageTwitter() : Boolean
      {
         var _loc4_:String = "http://www.wordonhd.com/play".split("http://")[1];
         var _loc1_:String = ClientData.Instance.InviteCode;
         var _loc2_:String = ClientData.Instance.Player.Name;
         var _loc3_:String = Localization.Get("promoshare_sharemsg_twitter",_loc4_,_loc1_,_loc2_);
         if(!Settings.IS_DESKTOP && GoViral.isSupported())
         {
            if(GoViral.goViral.isTweetSheetAvailable())
            {
               GoViral.goViral.showTweetSheet(_loc3_);
               return true;
            }
            if(Settings.IS_ANDROID)
            {
               if(GoViral.goViral.isGenericShareAvailable())
               {
                  GoViral.goViral.shareGenericMessage("",_loc3_,false);
                  return true;
               }
            }
         }
         if(Settings.IS_IOS)
         {
            new MessageBox(Localization.Get("generic_share_fail_title"),Localization.Get("twitter_share_fail_body_ios"),true);
         }
         else
         {
            new MessageBox(Localization.Get("generic_share_fail_title"),Localization.Get("generic_share_fail_body_android"),true);
         }
         return false;
      }
      
      public static function ShareCustomMessage(param1:String, param2:String, param3:String = "") : void
      {
         _Recipient = param3;
         _CurShareTitle = param1;
         _CurShareBody = Localization.Get("share_twitter_tag") + " " + param2;
         Process();
      }
      
      public static function ShareCustomMessageNative(param1:String, param2:String) : Boolean
      {
         if(!Settings.IS_DESKTOP && GoViral.isSupported())
         {
            if(GoViral.goViral.isGenericShareAvailable())
            {
               GoViral.goViral.shareGenericMessage(param1,param2,false,0,1024);
               return true;
            }
            if(GoViral.goViral.isEmailAvailable())
            {
               GoViral.goViral.showEmailComposer(param1,null,param2,false);
               return true;
            }
         }
         return false;
      }
      
      private static function Process() : void
      {
         if(!Settings.IS_DESKTOP && GoViral.isSupported())
         {
            new OptionsBox(Localization.Get("share_options_label"),OnOptionPicked,[{
               "label":Localization.Get("share_option_show_more"),
               "enabled":true
            },{
               "label":Localization.Get("share_option_email"),
               "enabled":GoViral.goViral.isEmailAvailable()
            },{
               "label":Localization.Get("share_option_facebook"),
               "enabled":GoViral.goViral.isFacebookSupported()
            }]);
         }
         else
         {
            new OptionsBox(Localization.Get("share_options_label"),OnOptionPicked,[{
               "label":Localization.Get("share_option_show_more"),
               "enabled":false
            },{
               "label":Localization.Get("share_option_email"),
               "enabled":false
            },{
               "label":Localization.Get("share_option_facebook"),
               "enabled":false
            }]);
         }
      }
      
      private static function OnOptionPicked(param1:int) : void
      {
         switch(param1)
         {
            case 0:
               GoViral.goViral.shareGenericMessage(_CurShareTitle,_CurShareBody,false,0,1024);
               break;
            case 1:
               GoViral.goViral.showEmailComposer(_CurShareTitle,_Recipient,_CurShareBody,false);
               break;
            case 2:
               FBWrapper.Post(_CurShareBody);
               break;
         }
      }
      
      public static function ShowWordOnFBPage() : void
      {
         if(!Settings.IS_DESKTOP && GoViral.isSupported())
         {
            GoViral.goViral.presentFacebookPageOrProfile("426368447423412");
         }
      }
      
      public function Dispose() : void
      {
         _CurShareTitle = null;
         _CurShareBody = null;
      }
   }
}
