package nl.hbgames.enums
{
   public class PurchaseErrorCodes extends Object
   {
      
      public static const UNKNOWN_ERROR:int = 0;
      
      public static const USER_NOT_LOGGED_IN:int = 10;
      
      public static const PRODUCTS_NOT_AVAILABLE:int = 20;
      
      public static const PRODUCT_NOT_RECOGNIZED:int = 21;
      
      public static const IAP_FAILED:int = 30;
      
      public static const VIRTUAL_PURCHASE_FAILED:int = 40;
       
      public function PurchaseErrorCodes()
      {
         super();
      }
   }
}
