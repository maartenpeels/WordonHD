package nl.hbgames.managers.billing
{
   public interface IStoreHandler
   {
       
      function initialize(param1:Function) : void;
      
      function setVerificationServer(param1:String) : void;
      
      function setPurchaseResponseCallback(param1:Function) : void;
      
      function setUserID(param1:String) : void;
      
      function connect(param1:Function, param2:String = null) : void;
      
      function getProducts(param1:Vector.<String>, param2:Function) : void;
      
      function purchase(param1:String, param2:String = null, param3:String = null) : void;
      
      function consume(param1:String, param2:Function) : void;
      
      function restoreTransactions(param1:Function) : void;
      
      function getAndroidInventory(param1:Function) : void;
   }
}
