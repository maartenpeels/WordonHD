package nl.hbgames.managers.billing
{
   import flash.utils.Timer;
   import nl.hbgames.utils.Response;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.utils.Random;
   import flash.events.TimerEvent;
   
   public class TestBillingHandler extends BaseBillingHandler implements IStoreHandler
   {
       
      private const SIMULATED_MIN_WAIT:Number = 200;
      
      private const SIMULATED_MAX_WAIT:Number = 1500;
      
      private var thePurchasedItems:Vector.<String>;
      
      private var theTimer:Timer;
      
      private var theFinalizeResponse:Response;
      
      private var theFinalizeCallback:Function;
      
      public function TestBillingHandler()
      {
         super();
      }
      
      override public function initialize(param1:Function) : void
      {
         super.initialize(param1);
         thePurchasedItems = new Vector.<String>();
         Debugger.Instance.Write("[TestBillingHandler::initialize] Billing running in test mode.");
      }
      
      override public function setVerificationServer(param1:String) : void
      {
      }
      
      override public function connect(param1:Function, param2:String = null) : void
      {
         super.connect(param1,param2);
         Debugger.Instance.Write("[TestBillingHandler::connect] Connected to test service.");
         finalize(new Response(":)"));
      }
      
      override public function getProducts(param1:Vector.<String>, param2:Function) : void
      {
         var _loc5_:* = 0;
         var _loc4_:* = 0;
         var _loc3_:* = null;
         super.getProducts(param1,param2);
         if(!sendCachedProducts())
         {
            theProducts = new Vector.<StoreProduct>();
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               _loc4_ = Random.nextIntRange(1,5);
               _loc3_ = new StoreProduct(param1[_loc5_],param1[_loc5_],"Item received through the BillingTestHandler.");
               _loc3_.setRealCost(_loc4_,"$ " + _loc4_ + ".00","USD");
               theProducts.push(_loc3_);
               _loc5_++;
            }
            sendCachedProducts();
         }
      }
      
      override public function purchase(param1:String, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         super.purchase(param1,param2);
         if(thePurchasedItems.indexOf(param1) == -1)
         {
            thePurchasedItems.push(param1);
            _loc4_ = new Response(":)");
            _loc4_.data = getProductFromCache(param1);
            finalizePurchase(_loc4_);
         }
         else
         {
            finalizePurchase(new Response(":(",71));
         }
      }
      
      override public function consume(param1:String, param2:Function) : void
      {
         var _loc3_:* = null;
         super.consume(param1,param2);
         var _loc4_:int = thePurchasedItems.indexOf(param1);
         if(_loc4_ > -1)
         {
            thePurchasedItems.splice(_loc4_,1);
            _loc3_ = new Response(":)");
            _loc3_.data = getProductFromCache(param1);
            finalize(_loc3_);
         }
         else
         {
            finalize(new Response(":(",68));
         }
      }
      
      override public function restoreTransactions(param1:Function) : void
      {
         super.restoreTransactions(param1);
         finalize(new Response(":(",73));
      }
      
      override public function getAndroidInventory(param1:Function) : void
      {
         super.restoreTransactions(param1);
         finalize(new Response(":(",77));
      }
      
      private function simulateDelay(param1:Response, param2:Function) : Boolean
      {
         var _loc3_:* = 0;
         if(theTimer == null)
         {
            theFinalizeResponse = param1;
            theFinalizeCallback = param2;
            _loc3_ = Random.nextIntRange(200,1500);
            theTimer = new Timer(_loc3_,1);
            theTimer.addEventListener("timerComplete",onSimulatedDelayComplete);
            theTimer.start();
            return true;
         }
         theTimer.stop();
         theTimer.removeEventListener("timerComplete",onSimulatedDelayComplete);
         theTimer = null;
         return false;
      }
      
      private function onSimulatedDelayComplete(param1:TimerEvent) : void
      {
      }
      
      override protected function finalize(param1:Response) : void
      {
         if(simulateDelay(param1,finalize))
         {
            return;
         }
         super.finalize(theFinalizeResponse);
      }
      
      override protected function finalizePurchase(param1:Response) : void
      {
         if(simulateDelay(param1,finalizePurchase))
         {
            return;
         }
         super.finalizePurchase(param1);
      }
   }
}
