package nl.hbgames.config
{
   import flash.system.Capabilities;
   import com.freshplanet.ane.AirDeviceId;
   import flash.desktop.NativeApplication;
   
   public class Settings extends Object
   {
      
      public static const VERSION_NUM:String = "1.88";
      
      public static const BUILD_NUMBER:String = "1";
      
      public static var SCREEN_WIDTH:int = 0;
      
      public static var SCREEN_HEIGHT:int = 0;
      
      public static var SCREEN_CENTER_X:int = 0;
      
      public static var SCREEN_CENTER_Y:int = 0;
      
      public static const FPS:int = 60;
      
      public static var COUNTRY_CODE:String = "";
      
      public static const SERVER_CONFIG_LIVE:int = 0;
      
      public static const SERVER_CONFIG_HB_DEV:int = 1;
      
      public static const SERVER_CONFIG_HB_EXT_DEV:int = 2;
      
      public static const SERVER_CONFIG_TYPE:int = 0;
      
      public static const DISPLAY_DEBUG_STATUS:Boolean = false;
      
      public static const DISPLAY_LONGPOLL_STATUS:Boolean = false;
      
      public static const PHP_BASE_URL:String = ["http://game.wordonhd.com","http://marcel.wordon2.lan.huckleberry.nl","http://92.64.46.214:80"][0];
      
      public static var CONTENT_URL:String = "http://wordonhd-public.s3-website-us-east-1.amazonaws.com";
      
      private static const BASE_URL:String = "http://www.wordonhd.com/";
      
      public static const DIRECT_DOWNLOAD_URL:String = "http://www.wordonhd.com/play";
      
      public static const FB_ICON_DEFAULT:String = "http://www.wordonhd.com/images/icon_fb_default.png";
      
      public static const FB_ICON_BEST_WORD:String = "http://www.wordonhd.com/images/icon_fb_best_word.png";
      
      public static const FB_ICON_BEST_GAME:String = "http://www.wordonhd.com/images/icon_fb_best_game.png";
      
      public static const FB_ICON_GOLD:String = "http://www.wordonhd.com/images/icon_fb_gold.png";
      
      public static const FB_ICON_SILVER:String = "http://www.wordonhd.com/images/icon_fb_silver.png";
      
      public static const FB_ICON_BRONZE:String = "http://www.wordonhd.com/images/icon_fb_bronze.png";
      
      public static const FACEBOOK_APP_ID:String = "175659022571339";
      
      public static const GA_TRACKING_ID:String = "UA-43118341-9";
      
      public static const BILLING_URL:String = PHP_BASE_URL + "/billing";
      
      public static const GOOGLE_SERVICE_KEY:String = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAty5gCEaSJdTRr5NlgSi59zc95iJjCr8aGndDgvUUtIHJtJmd8xp9uyvLOnPppKb4A9JXx8jSojsv2FySs5hMN0wQIX79H0GpZMvi45HDc5TCnIhN/nsbmOln7gdcc7x851br/2W2HL5P5xCQVatUDOdLDqAtRqYtWLyx9XcfrA4GsdrnYU8BJP3FwKL4fWIlJ6VOi+T5XlRSX+k1ChCqXWa7mJW2LEnLbCGxLZIe8dsGGshsJB1M8oGZidMYEiGO7mEPmJfCLxvNH9QQGaHyACq9uD4jILm/aei0QP75vnJdNuYQhAXrb010tiMSAfZXwNzcCnjW3OYfohoe2qudewIDAQAB";
      
      public static const NODEJS_IP:String = ["listen.wordonhd.com","192.168.0.148","92.64.46.214"][0];
      
      public static const NODEJS_PORT:int = [80,8080,443][0];
      
      public static const NODEJS_URL:String = "http://" + NODEJS_IP + ":" + NODEJS_PORT;
      
      public static var WORDDEF_URL:String = null;
      
      public static const STORAGE_VERSION:Number = 1.0;
      
      public static const STORAGE_FILE:String = "storage.bin";
      
      public static var APPLICATION_ID:String = NativeApplication.nativeApplication.applicationID;
      
      public static const TILE_STORAGE_DIR:String = "t/";
      
      public static const LIVE_TRACKING:Boolean = true;
      
      public static var WO_TRACKING_URL:String = "http://track.wordonhd.com/";
      
      public static const TRACKING_APP_ID:String = "wordonhd";
      
      public static const DICTIONARY_VERSION:int = 3;
      
      public static const MIN_USERNAME_LENGTH:int = 2;
      
      public static const MAX_USERNAME_LENGTH:int = 12;
      
      public static const MIN_PASSWORD_LENGTH:int = 4;
      
      public static const USERNAME_RESTRICT:String = null;
      
      public static const EMAIL_RESTRICT:String = null;
      
      public static const SECRET:String = "ohf87ewyr87wfhj";
      
      public static const MAX_PROMOCODE_LENGTH:int = 16;
      
      public static const PROMOCODE_RESTRICT:String = "A-Za-z0-9\\-";
      
      private static const UDID_SALT:String = "sdj%dn2_1";
      
      private static var _udid:String = null;
      
      public static const DEFAULT_GAME_TIME_IN_SECS:Number = 259200.0;
       
      public function Settings()
      {
         super();
      }
      
      public static function get IMAGE_BASE_URL() : String
      {
         return CONTENT_URL + "/avatars";
      }
      
      public static function get IS_IOS() : Boolean
      {
         return Capabilities.manufacturer.indexOf("iOS") > -1;
      }
      
      public static function get IS_ANDROID() : Boolean
      {
         return Capabilities.manufacturer.indexOf("Android") > -1;
      }
      
      public static function get IS_DESKTOP() : Boolean
      {
         return !IS_IOS && !IS_ANDROID;
      }
      
      public static function get IS_AIR() : Boolean
      {
         return Capabilities.playerType != "PlugIn" && Capabilities.playerType != "ActiveX";
      }
      
      public static function get UDID() : String
      {
         if(Settings.IS_DESKTOP)
         {
            _udid = "development";
         }
         else
         {
            if(_udid != null)
            {
               return _udid;
            }
            _udid = AirDeviceId.getInstance().getAdvertisingId("sdj%dn2_1");
            if(_udid == "emulator" || _udid == null)
            {
               _udid = "";
            }
         }
         return _udid;
      }
   }
}
