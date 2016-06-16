package nl.hbgames.enums
{
   public class ResponseType extends Object
   {
      
      public static const RESULT_OK:String = ":)";
      
      public static const RESULT_NOK:String = ":(";
      
      public static const UNKNOWN_ERROR:int = -1;
      
      public static const GENERAL_ERROR:int = 65520;
      
      public static const LOAD_ERROR:int = 65530;
      
      public static const NULL_ERROR:int = 65531;
      
      public static const PARSE_ERROR:int = 65532;
      
      public static const SECURITY_ERROR:int = 65533;
      
      public static const IO_ERROR:int = 65534;
      
      public static const TIME_OUT_ERROR:int = 65535;
      
      public static const DATABASE_UNAVAILABLE:int = 16;
      
      public static const DATABASE_CREATE_FAILED:int = 17;
      
      public static const DATABASE_CORRUPT_DATA:int = 18;
      
      public static const DATABASE_DATA_MISMATCH:int = 19;
      
      public static const DATABASE_ALREADY_CONNECTED:int = 20;
      
      public static const DATABASE_QUERY_FAIL:int = 21;
      
      public static const DATABASE_UNKNOWN_ERROR:int = 31;
      
      public static const BILLING_SERVICE_UNAVAILABLE:int = 64;
      
      public static const BILLING_PRODUCTS_UNAVAILABLE:int = 65;
      
      public static const BILLING_PURCHASE_FAILED:int = 66;
      
      public static const BILLING_INVENTORY_UPDATE_FAILED:int = 67;
      
      public static const BILLING_CONSUME_FAILED:int = 68;
      
      public static const BILLING_VERIFICATION_FAILED:int = 69;
      
      public static const BILLING_VERIFICATION_UNREACHABLE:int = 70;
      
      public static const BILLING_PRODUCT_ALREADY_OWNED:int = 71;
      
      public static const BILLING_IAP_BLOCKED:int = 72;
      
      public static const BILLING_RESTORE_FAILED:int = 73;
      
      public static const BILLING_PURCHASE_CANCELLED:int = 74;
      
      public static const BILLING_INIT_NEEDED:int = 75;
      
      public static const BILLING_IS_BUSY:int = 76;
      
      public static const BILLING_NO_INVENTORY:int = 77;
      
      public static const SOCIAL_INIT_NEEDED:int = 96;
      
      public static const SOCIAL_NOT_CONNECTED:int = 97;
      
      public static const SOCIAL_LOGIN_FAILED:int = 98;
      
      public static const SOCIAL_INVALID_REQUEST:int = 99;
      
      public static const SOCIAL_LOGOUT_FAILED:int = 100;
      
      public static const SOCIAL_REQUEST_FAILED:int = 101;
      
      public static const SOCIAL_REQUEST_CANCELLED:int = 102;
      
      public static const SOCIAL_DEVICE_NOT_SUPPORTED:int = 103;
      
      public static const SOCIAL_LOGIN_CANCELLED:int = 104;
      
      public static const SOCIAL_PERMISSION_DENIED:int = 105;
      
      public static const USER_CANCELLED:int = 128;
      
      public static const DICTDEF_UNSUPPORTED_LANGUAGE:int = 144;
      
      public static const DICTDEF_DEF_UNAVAILABLE:int = 145;
      
      public static const DICTDEF_ERROR:int = 146;
       
      public function ResponseType()
      {
         super();
      }
   }
}
