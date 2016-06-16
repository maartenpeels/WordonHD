package nl.hbgames.managers.billing
{
   public class ApplePurchase extends Object
   {
       
      private var theProductID:String;
      
      private var theReceipt:String;
      
      private var theTransactionID:String;
      
      public function ApplePurchase(param1:String, param2:String, param3:String)
      {
         super();
         theProductID = param1;
         theReceipt = param2;
         theTransactionID = param3;
      }
      
      public function get productID() : String
      {
         return theProductID;
      }
      
      public function get receipt() : String
      {
         return theReceipt;
      }
      
      public function get transactionID() : String
      {
         return theTransactionID;
      }
      
      public function dispose() : void
      {
         theProductID = null;
         theReceipt = null;
         theTransactionID = null;
      }
   }
}
