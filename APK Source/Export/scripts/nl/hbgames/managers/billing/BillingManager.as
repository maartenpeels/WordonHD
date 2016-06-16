package nl.hbgames.managers.billing
{
   import flash.system.Capabilities;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.utils.Response;
   
   public class BillingManager extends Object
   {
      
      private static var theInstance:BillingManager = new BillingManager();
       
      private var theHandler:BaseBillingHandler;
      
      public function BillingManager()
      {
         super();
         if(theInstance == null)
         {
            theInstance = this;
            return;
         }
         throw new Error("[BillingManager] Class is a singleton. Use BillingManager.instance to access!");
      }
      
      public static function get instance() : BillingManager
      {
         return theInstance;
      }
      
      public function initialize(param1:Function, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         if(theHandler == null)
         {
            _loc3_ = Capabilities.manufacturer;
            if(_loc3_.indexOf("Android") > -1 && !param2)
            {
               theHandler = new GoogleBillingHandler();
            }
            else if(_loc3_.indexOf("iOS") > -1 && !param2)
            {
               theHandler = new AppleBillingHandler();
            }
            else
            {
               theHandler = new TestBillingHandler();
            }
            theHandler.initialize(param1);
         }
      }
      
      public function setVerificationServer(param1:String) : void
      {
         if(isHandlerAvailable())
         {
            theHandler.setVerificationServer(param1);
         }
      }
      
      public function setUserID(param1:String) : void
      {
         if(isHandlerAvailable())
         {
            theHandler.setUserID(param1);
         }
      }
      
      public function setPurchaseResponseCallback(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.setPurchaseResponseCallback(param1);
         }
      }
      
      public function connect(param1:Function, param2:String = null) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.connect(param1,param2);
         }
      }
      
      public function getProducts(param1:Vector.<String>, param2:Function) : void
      {
         if(isHandlerAvailable(param2))
         {
            theHandler.getProducts(param1,param2);
         }
      }
      
      public function purchase(param1:String, param2:String = null, param3:String = null) : void
      {
         if(isHandlerAvailable())
         {
            Debugger.Instance.Write("[BillingManager::purchase] Purchasing item: " + param1 + " with payload: " + param2);
            theHandler.purchase(param1,param2,param3);
         }
      }
      
      public function consume(param1:String, param2:Function) : void
      {
         if(isHandlerAvailable(param2))
         {
            Debugger.Instance.Write("[BillingManager::consume] Consuming item: " + param1);
            theHandler.consume(param1,param2);
         }
      }
      
      public function restoreTransactions(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            Debugger.Instance.Write("[BillingManager::restoreTransactions] Restoring.");
            theHandler.restoreTransactions(param1);
         }
      }
      
      public function getAndroidInventory(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            Debugger.Instance.Write("[BillingManager::getAndroidInventory] Requesting player inventory.");
            theHandler.getAndroidInventory(param1);
         }
      }
      
      private function isHandlerAvailable(param1:Function = null) : Boolean
      {
         if(theHandler == null)
         {
            Debugger.Instance.Write("[BillingManager::isHandlerAvailable] Initialization required!",true);
            if(param1 != null)
            {
               param1(new Response(":(",75));
            }
            return false;
         }
         if(theHandler.isBusy)
         {
            Debugger.Instance.Write("[BillingManager::isHandlerAvailable] BillingHandler is occupied.",true);
            if(param1 != null)
            {
               param1(new Response(":(",76));
            }
            return false;
         }
         return true;
      }
   }
}
