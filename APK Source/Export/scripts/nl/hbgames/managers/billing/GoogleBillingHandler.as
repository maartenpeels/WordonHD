package nl.hbgames.managers.billing
{
   import com.milkmangames.nativeextensions.android.AndroidPurchase;
   import com.milkmangames.nativeextensions.android.AndroidIAB;
   import nl.hbgames.utils.Response;
   import nl.hbgames.utils.Debugger;
   import com.milkmangames.nativeextensions.android.events.AndroidBillingEvent;
   import com.milkmangames.nativeextensions.android.AndroidItemDetails;
   import com.milkmangames.nativeextensions.android.events.AndroidBillingErrorEvent;
   import nl.hbgames.net.PHPWrapper;
   
   public class GoogleBillingHandler extends BaseBillingHandler implements IStoreHandler
   {
       
      private var theInventory:Vector.<AndroidPurchase>;
      
      private var theContinueHandler:Function;
      
      private var theContinueParams:Array;
      
      private const DEBUG_TO_SCREEN:Boolean = false;
      
      public function GoogleBillingHandler()
      {
         super();
      }
      
      override public function initialize(param1:Function) : void
      {
         super.initialize(param1);
         theInventory = new Vector.<AndroidPurchase>();
         if(AndroidIAB.isSupported())
         {
            AndroidIAB.create();
         }
      }
      
      override public function connect(param1:Function, param2:String = null) : void
      {
         super.connect(param1,param2);
         if(!theConnectedFlag)
         {
            if(!AndroidIAB.androidIAB.hasEventListener("iabBillingServiceReady"))
            {
               AndroidIAB.androidIAB.addEventListener("iabBillingServiceReady",onServiceReady);
               AndroidIAB.androidIAB.addEventListener("iabBillingServiceNotSupported",onServiceUnsupported);
            }
            if(param2 != null)
            {
               AndroidIAB.androidIAB.startBillingService(theIdentifierKey);
            }
            else
            {
               finalize(new Response(":(",64));
            }
         }
         else
         {
            finalize(new Response(":)"));
         }
      }
      
      override public function getProducts(param1:Vector.<String>, param2:Function) : void
      {
         super.getProducts(param1,param2);
         Debugger.Instance.Write("[GoogleBillingHandler::getProducts] Fetching product and player inventory.",false,false);
         if(!sendCachedProducts())
         {
            AndroidIAB.androidIAB.addEventListener("INVENTORY_LOADED",onInventoryAndProductsUpdate);
            AndroidIAB.androidIAB.addEventListener("INVENTORY_FAILED",onInventoryAndProductsUpdate);
            AndroidIAB.androidIAB.addEventListener("ITEM_DETAILS_FAILED",onInventoryAndProductsUpdate);
            AndroidIAB.androidIAB.loadPlayerInventory(true,param1);
         }
      }
      
      override public function purchase(param1:String, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = 0;
         super.purchase(param1,param2,param3);
         if(theInventory != null)
         {
            _loc4_ = 0;
            while(_loc4_ < theInventory.length)
            {
               if(theInventory[_loc4_].itemId == param1)
               {
                  Debugger.Instance.Write("[GoogleBillingHandler::purchase] Using unprocessed receipt for " + param1,false,false);
                  processPurchase(theInventory[_loc4_]);
                  return;
               }
               _loc4_++;
            }
         }
         if(!AndroidIAB.androidIAB.hasEventListener("iabPurchaseSucceeded"))
         {
            AndroidIAB.androidIAB.addEventListener("iabPurchaseSucceeded",onPurchaseSuccess);
            AndroidIAB.androidIAB.addEventListener("iabPurchaseFailed",onPurchaseFailed);
         }
         theContinueHandler = AndroidIAB.androidIAB.purchaseItem;
         theContinueParams = [param1,param2];
         AndroidIAB.androidIAB.loadPlayerInventory();
      }
      
      override public function consume(param1:String, param2:Function) : void
      {
         super.consume(param1,param2);
         theContinueHandler = AndroidIAB.androidIAB.consumeItem;
         theContinueParams = [param1];
         AndroidIAB.androidIAB.loadPlayerInventory();
      }
      
      override public function restoreTransactions(param1:Function) : void
      {
         super.restoreTransactions(param1);
         finalize(new Response(":(",73));
      }
      
      override public function getAndroidInventory(param1:Function) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = 0;
         super.restoreTransactions(param1);
         if(theProducts != null)
         {
            _loc2_ = new Response(":)");
            _loc4_ = [];
            if(theInventory != null)
            {
               _loc3_ = 0;
               while(_loc3_ < theInventory.length)
               {
                  _loc4_.push(theInventory[_loc3_].itemId);
                  _loc3_++;
               }
            }
            _loc2_.data = _loc4_;
            finalize(_loc2_);
         }
         else
         {
            finalize(new Response(":(",77));
         }
      }
      
      private function onServiceReady(param1:AndroidBillingEvent) : void
      {
         theConnectedFlag = true;
         finalize(new Response(":)"));
      }
      
      private function onServiceUnsupported(param1:AndroidBillingEvent) : void
      {
         theConnectedFlag = false;
         finalize(new Response(":(",64));
      }
      
      private function onInventoryAndProductsUpdate(param1:*) : void
      {
         var _loc4_:* = null;
         var _loc2_:* = null;
         AndroidIAB.androidIAB.removeEventListener("INVENTORY_LOADED",onInventoryAndProductsUpdate);
         AndroidIAB.androidIAB.removeEventListener("INVENTORY_FAILED",onInventoryAndProductsUpdate);
         if(param1 is AndroidBillingEvent)
         {
            Debugger.Instance.Write("[GoogleBillingHandler::onInventoryAndProductsUpdate] Products received.",false,false);
            AndroidIAB.androidIAB.addEventListener("CONSUME_SUCCEEDED",onConsumeState);
            AndroidIAB.androidIAB.addEventListener("CONSUME_FAILED",onConsumeState);
            AndroidIAB.androidIAB.addEventListener("INVENTORY_LOADED",onInventoryUpdate);
            AndroidIAB.androidIAB.addEventListener("INVENTORY_FAILED",onInventoryUpdate);
            theProducts = new Vector.<StoreProduct>();
            var _loc6_:* = 0;
            var _loc5_:* = param1.itemDetails;
            for each(var _loc3_ in param1.itemDetails)
            {
               _loc4_ = _loc3_.price.replace(new RegExp("[,]","g"),".");
               _loc4_ = _loc4_.replace(new RegExp("[^0-9.]","g"),"");
               _loc2_ = new StoreProduct(_loc3_.itemId,_loc3_.title,_loc3_.description);
               _loc2_.setRealCost(_loc4_,_loc3_.price,null);
               theProducts.push(_loc2_);
            }
            processInventory(param1.purchases);
            sendCachedProducts();
         }
         else
         {
            finalize(new Response(":(",65,{"errorID":(param1 as AndroidBillingErrorEvent).errorID}));
         }
      }
      
      private function onConsumeState(param1:*) : void
      {
         var _loc2_:* = null;
         if(param1 is AndroidBillingEvent)
         {
            _loc2_ = new Response(":)");
            _loc2_.data = getProductFromCache((param1 as AndroidBillingEvent).itemId);
         }
         else
         {
            _loc2_ = new Response(":(",68);
         }
         theContinueHandler = finalize;
         theContinueParams = [_loc2_];
         AndroidIAB.androidIAB.loadPlayerInventory();
      }
      
      private function onPurchaseSuccess(param1:AndroidBillingEvent) : void
      {
         var _loc2_:AndroidPurchase = param1.purchases[0];
         theInventory.push(_loc2_);
         processPurchase(_loc2_);
      }
      
      private function processPurchase(param1:AndroidPurchase) : void
      {
         var _loc2_:* = null;
         Debugger.Instance.Write("[GoogleBillingHandler::processPurchase] Processing: " + param1.itemId + " (bought @ " + param1.purchaseTime + ")",false,false);
         if(this.hasVerificationServer)
         {
            verify("/android",onVerificationStatus,param1.itemId,param1.jsonData,param1.signature);
         }
         else
         {
            _loc2_ = new Response(":)");
            _loc2_.data.itemId = param1.itemId;
            onVerificationStatus(_loc2_);
         }
      }
      
      private function onVerificationStatus(param1:Response) : void
      {
         var _loc3_:String = null;
         var _loc2_:String = null;
         if(param1.data != null)
         {
            _loc3_ = param1.data.transactionId;
            _loc2_ = param1.data.itemId;
         }
         if(param1.isSuccess)
         {
            Debugger.Instance.Write("[GoogleBillingHandler::onVerificationStatus] Passed.",false,false);
         }
         else
         {
            Debugger.Instance.Write("[GoogleBillingHandler::onVerificationStatus] Failed: " + param1.toString(),true,false);
         }
         param1.data = getProductFromCache(_loc2_);
         theContinueHandler = finalizePurchase;
         theContinueParams = [param1];
         AndroidIAB.androidIAB.loadPlayerInventory();
      }
      
      private function onInventoryUpdate(param1:*) : void
      {
         if(param1 is AndroidBillingEvent)
         {
            processInventory(param1.purchases);
         }
         else
         {
            Debugger.Instance.Write("[GoogleBillingHandler::onInventoryUpdate] " + param1.text,true,false);
         }
         if(theContinueHandler != null)
         {
            theContinueHandler.apply(null,theContinueParams);
         }
      }
      
      private function onPurchaseFailed(param1:AndroidBillingErrorEvent) : void
      {
         var _loc2_:* = null;
         if(param1.errorID == 7)
         {
            _loc2_ = new Response(":(",71);
         }
         else if(param1.errorID == -1005)
         {
            _loc2_ = new Response(":(",74);
         }
         else
         {
            PHPWrapper.Catch("GoogleBillingHandler","onPurchaseFailed","Could not complete purchase (item: " + param1.itemId + ")",param1.text,param1.errorID);
            _loc2_ = new Response(":(",66,{"errorID":param1.errorID});
         }
         finalizePurchase(_loc2_);
      }
      
      private function processInventory(param1:Vector.<AndroidPurchase>) : void
      {
         if(param1 != null)
         {
            Debugger.Instance.Write("[GoogleBillingHandler::processInventory] Inventory updated: " + param1.length + " purchases found.",false,false);
            theInventory = param1;
         }
      }
   }
}
