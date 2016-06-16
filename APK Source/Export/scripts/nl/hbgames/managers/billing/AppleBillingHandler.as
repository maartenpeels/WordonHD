package nl.hbgames.managers.billing
{
   import com.milkmangames.nativeextensions.ios.StoreKit;
   import nl.hbgames.utils.Response;
   import nl.hbgames.utils.Debugger;
   import com.milkmangames.nativeextensions.ios.events.StoreKitEvent;
   import com.milkmangames.nativeextensions.ios.StoreKitProduct;
   import com.milkmangames.nativeextensions.ios.events.StoreKitErrorEvent;
   import nl.hbgames.net.PHPWrapper;
   
   public class AppleBillingHandler extends BaseBillingHandler implements IStoreHandler
   {
       
      private var theUnprocessedPurchases:Vector.<ApplePurchase>;
      
      private const DEBUG_TO_SCREEN:Boolean = false;
      
      public function AppleBillingHandler()
      {
         super();
      }
      
      override public function initialize(param1:Function) : void
      {
         super.initialize(param1);
         if(StoreKit.isSupported())
         {
            StoreKit.create(true);
            theUnprocessedPurchases = new Vector.<ApplePurchase>();
            StoreKit.storeKit.addEventListener("skProductDetailsLoaded",onProductsLoaded);
            StoreKit.storeKit.addEventListener("skPurchaseSucceeded",onPurchaseSuccess);
            StoreKit.storeKit.addEventListener("skPurchaseCancelled",onPurchaseCancelled);
            StoreKit.storeKit.addEventListener("skTransactionsRestored",onTransactionsRestored);
            StoreKit.storeKit.addEventListener("skPurchaseDeferred",onPurchaseDeferred);
            StoreKit.storeKit.addEventListener("skProductDetailsFailed",onProductsFailed);
            StoreKit.storeKit.addEventListener("skPurchaseFailed",onPurchaseFailed);
            StoreKit.storeKit.addEventListener("skTransactionRestoreFailed",onTransactionsRestoredFailed);
            StoreKit.storeKit.setManualTransactionMode(true);
         }
      }
      
      override public function connect(param1:Function, param2:String = null) : void
      {
         super.connect(param1,param2);
         if(!StoreKit.storeKit.isStoreKitAvailable())
         {
            finalize(new Response(":(",72));
            return;
         }
         theConnectedFlag = true;
         finalize(new Response(":)"));
      }
      
      override public function getProducts(param1:Vector.<String>, param2:Function) : void
      {
         super.getProducts(param1,param2);
         Debugger.Instance.Write("[AppleBillingHandler::getProducts] Fetching product details.",false,false);
         if(!sendCachedProducts())
         {
            StoreKit.storeKit.loadProductDetails(param1);
         }
      }
      
      override public function purchase(param1:String, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = 0;
         super.purchase(param1,param2,param3);
         if(theUnprocessedPurchases && theUnprocessedPurchases.length > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < theUnprocessedPurchases.length)
            {
               if(theUnprocessedPurchases[_loc4_].productID == param1)
               {
                  Debugger.Instance.Write("[AppleBillingHandler::purchase] Found unprocessed previous purchase.",false,false);
                  processPurchase(theUnprocessedPurchases[_loc4_]);
                  return;
               }
               _loc4_++;
            }
         }
         StoreKit.storeKit.purchaseProduct(param1,1);
      }
      
      override public function consume(param1:String, param2:Function) : void
      {
         super.consume(param1,param2);
         var _loc3_:Response = new Response(":)");
         _loc3_.data = getProductFromCache(param1);
         finalize(_loc3_);
      }
      
      override public function restoreTransactions(param1:Function) : void
      {
         super.restoreTransactions(param1);
         Debugger.Instance.Write("[AppleBillingHandler::restoreTransactions] Start restore.",false,false);
         StoreKit.storeKit.restoreTransactions();
      }
      
      override public function getAndroidInventory(param1:Function) : void
      {
         super.restoreTransactions(param1);
         finalize(new Response(":(",77));
      }
      
      private function onProductsLoaded(param1:StoreKitEvent) : void
      {
         var _loc2_:* = null;
         Debugger.Instance.Write("[AppleBillingHandler::onProductsLoaded] Items received (" + param1.validProducts.length + "/" + param1.invalidProductIds.length + ")",false,false);
         theProducts = new Vector.<StoreProduct>();
         var _loc5_:* = 0;
         var _loc4_:* = param1.validProducts;
         for each(var _loc3_ in param1.validProducts)
         {
            _loc2_ = new StoreProduct(_loc3_.productId,_loc3_.title,_loc3_.description);
            _loc2_.setRealCost(_loc3_.price,_loc3_.localizedPrice,_loc3_.localeId);
            theProducts.push(_loc2_);
         }
         sendCachedProducts();
      }
      
      private function onProductsFailed(param1:StoreKitErrorEvent) : void
      {
         PHPWrapper.Catch("AppleBillingHandler","onProductsFailed","Failed to retrieve products from Apple backend",param1.text,param1.errorId);
         finalize(new Response(":(",65,{"errorID":param1.errorId}));
      }
      
      private function onPurchaseSuccess(param1:StoreKitEvent) : void
      {
         var _loc2_:ApplePurchase = new ApplePurchase(param1.productId,param1.receipt,param1.transactionId);
         addPurchaseForProcessing(_loc2_);
         processPurchase(_loc2_);
      }
      
      private function processPurchase(param1:ApplePurchase) : void
      {
         var _loc2_:* = null;
         Debugger.Instance.Write("[AppleBillingHandler::processPurchase] Verifying: " + param1.productID + " (transID: " + param1.transactionID + ")",false,false);
         if(this.hasVerificationServer)
         {
            verify("/itunes",onVerificationStatus,param1.productID,param1.receipt,null,param1.transactionID);
         }
         else
         {
            _loc2_ = new Response(":)");
            _loc2_.data.transactionId = param1.transactionID;
            _loc2_.data.itemId = param1.productID;
            onVerificationStatus(_loc2_);
         }
      }
      
      private function onVerificationStatus(param1:Response) : void
      {
         var _loc2_:* = null;
         var _loc4_:String = null;
         var _loc3_:String = null;
         if(param1.data != null)
         {
            _loc4_ = param1.data.transactionId;
            _loc3_ = param1.data.itemId;
         }
         if(param1.isSuccess)
         {
            Debugger.Instance.Write("[AppleBillingHandler::onVerificationStatus] Passed (transID:" + _loc4_ + ")",false,false);
            markPurchaseAsProcessed(_loc3_,_loc4_);
            _loc2_ = new Response(":)");
            _loc2_.data = getProductFromCache(_loc3_);
            finalizePurchase(_loc2_);
         }
         else
         {
            Debugger.Instance.Write("[AppleBillingHandler::onVerificationStatus] Failed: " + param1.toString(),true,false);
            if(param1.errorCode != 70)
            {
               markPurchaseAsProcessed(_loc3_,_loc4_);
            }
            param1.data = getProductFromCache(_loc3_);
            finalizePurchase(param1);
         }
      }
      
      private function addPurchaseForProcessing(param1:ApplePurchase) : void
      {
         if(theUnprocessedPurchases.indexOf(param1) == -1)
         {
            theUnprocessedPurchases.push(param1);
         }
      }
      
      private function markPurchaseAsProcessed(param1:String, param2:String) : void
      {
         var _loc4_:* = 0;
         if(param1 == null || param2 == null)
         {
            Debugger.Instance.Write("[AppleBillingHandler::markPurchaseAsProcessed] Missing arguments!",true,false);
            return;
         }
         StoreKit.storeKit.manualFinishTransaction(param2);
         var _loc3_:* = false;
         _loc4_ = 0;
         while(_loc4_ < theUnprocessedPurchases.length)
         {
            if(theUnprocessedPurchases[_loc4_].productID == param1 && theUnprocessedPurchases[_loc4_].transactionID == param2)
            {
               Debugger.Instance.Write("[AppleBillingHandler::markPurchaseAsProcessed] Receipt handled (" + param2 + ")",false,false);
               theUnprocessedPurchases.splice(_loc4_,1);
               _loc3_ = true;
            }
            _loc4_++;
         }
         if(!_loc3_)
         {
            Debugger.Instance.Write("[AppleBillingHandler::markPurchaseAsProcessed] No receipt found for " + param2,true,false);
         }
      }
      
      private function onPurchaseCancelled(param1:StoreKitEvent) : void
      {
         Debugger.Instance.Write("[AppleBillingHandler::onPurchaseCancelled] Cancelled by user.",false,false);
         if(param1.transactionId)
         {
            StoreKit.storeKit.manualFinishTransaction(param1.transactionId);
         }
         finalizePurchase(new Response(":(",74));
      }
      
      private function onPurchaseFailed(param1:StoreKitErrorEvent) : void
      {
         if(param1.transactionId)
         {
            StoreKit.storeKit.manualFinishTransaction(param1.transactionId);
         }
         PHPWrapper.Catch("AppleBillingHandler","onPurchaseFailed","Player could not purchase an item (transaction: " + param1.transactionId + ")",param1.text,param1.errorId);
         finalizePurchase(new Response(":(",66,{"errorID":param1.errorId}));
      }
      
      private function onTransactionsRestored(param1:StoreKitEvent) : void
      {
         Debugger.Instance.Write("[AppleBillingHandler::onTransactionsRestored] Done.",false,false);
         finalize(new Response(":)"));
      }
      
      private function onPurchaseDeferred(param1:StoreKitEvent) : void
      {
         Debugger.Instance.Write("[AppleBillingHandler::onPurchaseDeferred] Purchase held back.",false,false);
      }
      
      private function onTransactionsRestoredFailed(param1:StoreKitErrorEvent) : void
      {
         PHPWrapper.Catch("AppleBillingHandler","onTransactionsRestoredFailed","Could not restore previous transactions",param1.text,param1.errorId);
         finalize(new Response(":(",73,{"errorID":param1.errorId}));
      }
   }
}
