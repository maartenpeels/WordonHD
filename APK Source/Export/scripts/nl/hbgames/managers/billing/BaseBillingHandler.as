package nl.hbgames.managers.billing
{
   import nl.hbgames.net.NetConnector;
   import flash.utils.Timer;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.Base64;
   import nl.hbgames.utils.Response;
   import flash.events.TimerEvent;
   
   public class BaseBillingHandler extends Object implements IStoreHandler
   {
       
      private const MAX_PROCESS_TIME:Number = 30.0;
      
      private const MAX_PURCHASE_PROCESS_TIME:Number = 60.0;
      
      protected var theConnectedFlag:Boolean = false;
      
      protected var theCallback:Function;
      
      protected var thePurchaseCallback:Function;
      
      protected var theProducts:Vector.<StoreProduct>;
      
      protected var theIdentifierKey:String;
      
      protected var theNetConnector:NetConnector;
      
      protected var theBusyFlag:Boolean;
      
      private var thePurchaseUserID:String;
      
      private var theAdditionalServerParams:String;
      
      private var theTimeoutTimer:Timer;
      
      private var theTimeoutCallback:Function;
      
      public function BaseBillingHandler()
      {
         super();
      }
      
      public function get hasVerificationServer() : Boolean
      {
         return theNetConnector != null;
      }
      
      public function get isBusy() : Boolean
      {
         return theBusyFlag;
      }
      
      public function initialize(param1:Function) : void
      {
         setPurchaseResponseCallback(param1);
      }
      
      public function setVerificationServer(param1:String) : void
      {
         if(theNetConnector != null)
         {
            theNetConnector.dispose();
            theNetConnector = null;
         }
         if(param1 != null)
         {
            theNetConnector = new NetConnector(param1);
         }
      }
      
      public function setPurchaseResponseCallback(param1:Function) : void
      {
         thePurchaseCallback = param1;
      }
      
      public function setUserID(param1:String) : void
      {
         thePurchaseUserID = param1;
      }
      
      public function connect(param1:Function, param2:String = null) : void
      {
         theCallback = param1;
         theIdentifierKey = param2;
         enableTimeoutCheck(theCallback,30);
         theBusyFlag = true;
      }
      
      public function getProducts(param1:Vector.<String>, param2:Function) : void
      {
         theCallback = param2;
         enableTimeoutCheck(theCallback,30);
         theBusyFlag = true;
      }
      
      public function purchase(param1:String, param2:String = null, param3:String = null) : void
      {
         theAdditionalServerParams = param3;
         theBusyFlag = true;
         enableTimeoutCheck(thePurchaseCallback,60);
      }
      
      public function consume(param1:String, param2:Function) : void
      {
         theCallback = param2;
         theBusyFlag = true;
      }
      
      public function restoreTransactions(param1:Function) : void
      {
         theCallback = param1;
         enableTimeoutCheck(theCallback,30);
         theAdditionalServerParams = thePurchaseUserID;
         theBusyFlag = true;
      }
      
      public function getAndroidInventory(param1:Function) : void
      {
         theCallback = param1;
         theBusyFlag = true;
      }
      
      protected function verify(param1:String, param2:Function, param3:String, param4:String, param5:String = null, param6:String = null) : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(theNetConnector != null)
         {
            Debugger.Instance.Write("[BaseBillingHandler::verify] Sending receipt data to verification server.");
            _loc7_ = getProductFromCache(param3);
            _loc8_ = {};
            if(Settings.IS_IOS)
            {
               _loc8_.id = theAdditionalServerParams != null?theAdditionalServerParams:thePurchaseUserID;
               _loc8_.receipt = Base64.Encode(param4);
               _loc8_.transactionId = param6;
            }
            else if(Settings.IS_ANDROID)
            {
               _loc8_.version = 3;
               _loc8_.signature = param5;
               _loc8_.responseData = param4;
            }
            _loc8_.itemId = param3;
            theNetConnector.send(param1,onVerificationResponse,param2,_loc8_);
         }
         else
         {
            Debugger.Instance.Write("[BaseBillingHandler::verify] No verification server specified!",true);
            param2(new Response(":(",70));
         }
      }
      
      protected function getProductFromCache(param1:String) : StoreProduct
      {
         var _loc3_:* = 0;
         var _loc2_:StoreProduct = new StoreProduct(param1,"","");
         if(theProducts != null)
         {
            _loc3_ = 0;
            while(_loc3_ < theProducts.length)
            {
               if(theProducts[_loc3_].id == param1)
               {
                  return theProducts[_loc3_];
               }
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      private function onVerificationResponse(param1:Object, param2:Function) : void
      {
         var _loc3_:* = null;
         if(param1.result == ":)")
         {
            _loc3_ = new Response(":)");
            _loc3_.data = param1;
            param2(_loc3_);
         }
         else if(param1.result == ":(")
         {
            if(param1.error == 0)
            {
               _loc3_ = new Response(":(",69);
            }
            else
            {
               _loc3_ = new Response(":(",70);
            }
            _loc3_.data = param1;
            param2(_loc3_);
         }
      }
      
      protected function sendCachedProducts() : Boolean
      {
         var _loc1_:* = null;
         if(theProducts != null)
         {
            _loc1_ = new Response(":)");
            _loc1_.data = theProducts;
            if(theCallback != null)
            {
               finalize(_loc1_);
               return true;
            }
            return false;
         }
         return false;
      }
      
      private function enableTimeoutCheck(param1:Function, param2:Number) : void
      {
         clearTimeoutCheck();
         theTimeoutCallback = param1;
         theTimeoutTimer = new Timer(param2 * 1000,1);
         theTimeoutTimer.addEventListener("timerComplete",onTimeout);
         theTimeoutTimer.start();
      }
      
      private function clearTimeoutCheck() : void
      {
         if(theTimeoutTimer != null)
         {
            theTimeoutTimer.stop();
            theTimeoutTimer.removeEventListener("timerComplete",onTimeout);
            theTimeoutTimer = null;
            theTimeoutCallback = null;
         }
      }
      
      private function onTimeout(param1:TimerEvent) : void
      {
         theBusyFlag = false;
         if(theTimeoutCallback != null)
         {
            theTimeoutCallback(new Response(":(",65535));
         }
         clearTimeoutCheck();
      }
      
      protected function finalize(param1:Response) : void
      {
         theBusyFlag = false;
         if(theCallback != null)
         {
            theCallback(param1);
         }
         else
         {
            Debugger.Instance.Write("[BaseBillingHandler::finalize] No callback found to send: " + param1.toString());
         }
         clearTimeoutCheck();
      }
      
      protected function finalizePurchase(param1:Response) : void
      {
         theBusyFlag = false;
         if(thePurchaseCallback != null)
         {
            thePurchaseCallback(param1);
         }
         else
         {
            Debugger.Instance.Write("[BaseBillingHandler::finalizePurchase] No callback found to send: " + param1.toString(),true);
         }
         clearTimeoutCheck();
      }
   }
}
