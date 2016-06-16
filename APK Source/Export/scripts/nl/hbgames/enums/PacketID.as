package nl.hbgames.enums
{
   public class PacketID extends Object
   {
      
      public static const RESULT_OK:String = ":)";
      
      public static const RESULT_NOK:String = ":(";
      
      public static const PHP_INVALID:int = 0;
      
      public static const PHP_MISSING_PARAMS:int = 1;
      
      public static const PHP_AUTH_FAILED:int = 2;
      
      public static const PHP_NAME_INVALID:int = 4;
      
      public static const PHP_USERNAME_INVALID:int = 5;
      
      public static const PHP_USER_ALREADY_EXISTS:int = 6;
      
      public static const PHP_PASSWORD_INVALID:int = 7;
      
      public static const PHP_USER_NOT_FOUND:int = 8;
      
      public static const PHP_WORD_INVALID:int = 9;
      
      public static const PHP_USER_UNAUTH:int = 10;
      
      public static const PHP_NAME_EXISTS:int = 11;
      
      public static const PHP_ALREADY_HAS_ITEM:int = 12;
      
      public static const PHP_NOT_ENOUGH_COINS:int = 13;
      
      public static const PHP_MAX_NAMECHANGES:int = 14;
      
      public static const PHP_USER_MAX_GAMES:int = 15;
      
      public static const PHP_OTHER_USER_MAX_GAMES:int = 16;
      
      public static const PHP_FB_ALREADY_EXISTS:int = 17;
      
      public static const PHP_GAME_INVITE_ALREADY_SENT:int = 18;
      
      public static const PHP_GET_LOCK_FAIL:int = 19;
      
      public static const PHP_NOT_ENOUGH_STARS:int = 20;
      
      public static const PHP_PAYMENT_APPROVAL:int = 21;
      
      public static const PHP_MAX_HINTS:int = 22;
      
      public static const PHP_USER_TYPE_INVALID:int = 23;
      
      public static const PHP_MISSING_ITEM:int = 24;
      
      public static const PHP_IS_FB_USER:int = 25;
      
      public static const PHP_PROMOCODE_INVALID:int = 32;
      
      public static const PHP_PROMOCODE_ONLY_NEW_PLAYERS:int = 33;
      
      public static const PHP_PROMOCODE_ALREADY_REDEEMED:int = 34;
      
      public static const PHP_DEFINITION_UNSUPPORTED:int = 48;
      
      public static const PHP_DEFINITION_UNAVAILABLE:int = 49;
      
      public static const PHP_DEFINITION_PARSE_ERROR:int = 50;
      
      public static const POLL_INVALID_GAME:int = 237;
      
      public static const POLL_INVALID_AUTH:int = 238;
      
      public static const POLL_INVALID_REQUEST:int = 239;
      
      public static const ALERT_MAX_GAMES:int = 1;
      
      public static const ALERT_SNEAK_PEEK:int = 2;
      
      public static const NULL_ERROR:int = 251;
      
      public static const PARSE_ERROR:int = 252;
      
      public static const SECURITY_ERROR:int = 253;
      
      public static const IO_ERROR:int = 254;
      
      public static const TIME_OUT_ERROR:int = 255;
       
      public function PacketID()
      {
         super();
      }
   }
}
