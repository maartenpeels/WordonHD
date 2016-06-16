package nl.hbgames.managers
{
   import nl.hbgames.utils.Response;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.billing.BillingManager;
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.billing.StoreProduct;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.config.Settings;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.utils.Time;
   import nl.hbgames.WordOn;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.TrackingData;
   import nl.hbgames.managers.ads.AdManager;
   import nl.hbgames.data.shop.ShopItemData;
   import nl.hbgames.data.shop.ShopData;
   import nl.hbgames.ui.popups.BuyStarsBox;
   
   public class WordOnGoodsManager extends Object
   {
      
      private static var thePurchaseResponseCallback:Function;
      
      private static var theInvokeCallbackAfterNokMessageFlag:Boolean = false;
      
      private static var theLastPurchasedItem:String;
      
      private static var theResponseQueue:Vector.<Response> = new Vector.<Response>();
       
      public function WordOnGoodsManager()
      {
         super();
      }
      
      public static function processResponseQueue() : void
      {
         if(theResponseQueue && theResponseQueue.length > 0)
         {
            while(theResponseQueue.length > 0)
            {
               handleShopPurchaseResponse(theResponseQueue.shift());
            }
         }
      }
      
      public static function buy(param1:Function, param2:String, param3:String, param4:Boolean = false) : void
      {
         thePurchaseResponseCallback = param1;
         theLastPurchasedItem = param2;
         theInvokeCallbackAfterNokMessageFlag = param4;
         WaitBox.Show();
         if(param3 == "money")
         {
            BillingManager.instance.getProducts(ShopItems.GetAllProductListForBilling(),onProductsReceived);
         }
         else
         {
            PHPWrapper.BuyConsumable(onProcessVirtualPurchase,param2);
         }
      }
      
      public static function restore() : void
      {
         BillingManager.instance.restoreTransactions(onRestoreStatus);
      }
      
      private static function onRestoreStatus(param1:Response) : void
      {
         WaitBox.Hide();
      }
      
      private static function onProductsReceived(param1:Response) : void
      {
         aResponse = param1;
         if(theInvokeCallbackAfterNokMessageFlag)
         {
            var nokCB:Function = function():void
            {
               invokeResponseCallback(new Response(":(",66));
            };
         }
         if(aResponse.isSuccess && ClientData.Instance.Player && aResponse.data != null && aResponse.data.length > 0)
         {
            var productList:Vector.<StoreProduct> = aResponse.data;
            theLastPurchasedItem = Settings.IS_IOS && theLastPurchasedItem == "item_no_ads"?"item_no_ads_nonconsumable":theLastPurchasedItem;
            var storeProductID:String = ShopItems.GetBillingID(theLastPurchasedItem);
            var i:uint = 0;
            while(i < productList.length)
            {
               if(productList[i].id == storeProductID)
               {
                  var product:StoreProduct = productList[i];
                  break;
               }
               i = i + 1;
            }
            if(product != null)
            {
               var verifier:String = ClientData.Instance.Player.ID + "#" + SWRVETracker.Instance.SessionID + "|" + (Settings.IS_IOS?"AppStore":"GooglePlay") + "|" + product.cost + "|" + (product.currencyLocale?product.currencyLocale:product.currencySymbol) + "|" + "1.88" + "|" + Time.SessionTime + "|" + "coins" + "|" + ShopItems.GetSwrveID(theLastPurchasedItem) + "|" + "rlm";
               WaitBox.Show();
               BillingManager.instance.purchase(storeProductID,verifier,verifier);
            }
            else
            {
               WaitBox.Hide();
               var isError:Boolean = true;
               displayGenericError(21,null,nokCB);
            }
         }
         else
         {
            WaitBox.Hide();
            isError = true;
            if(!ClientData.Instance.Player)
            {
               displayGenericError(10,null,nokCB);
            }
            else
            {
               displayGenericError(20,aResponse.errorData,nokCB);
            }
         }
         if(isError && !theInvokeCallbackAfterNokMessageFlag)
         {
            invokeResponseCallback(new Response(":(",66));
         }
      }
      
      public static function handleShopPurchaseResponse(param1:Response) : void
      {
         var _loc3_:* = false;
         if(!WordOn.Instance.IsInitialized)
         {
            Debugger.Instance.Write("[WordOnGoodsManager::handleShopPurchaseResponse] Application booting. Response queued.");
            theResponseQueue.push(param1);
            return;
         }
         var _loc2_:StoreProduct = param1.data;
         var _loc4_:Array = ShopItems.GetConsumableProductListForBilling();
         if(param1.isSuccess)
         {
            if(_loc4_.indexOf(_loc2_.id) != -1)
            {
               BillingManager.instance.consume(_loc2_.id,onShopItemConsumed);
            }
            else
            {
               finalizePurchase(_loc2_);
            }
         }
         else
         {
            _loc3_ = true;
            switch(param1.errorCode - 66)
            {
               case 0:
                  displayGenericError(30,param1.errorData);
                  break;
               case 1:
                  new MessageBox(Localization.Get("whoops"),Localization.Get("shop_purchase_inventory_fail"),true);
                  break;
               case 2:
                  _loc3_ = false;
                  if(_loc4_.indexOf(_loc2_.id) != -1)
                  {
                     BillingManager.instance.consume(_loc2_.id,onShopItemDenied);
                  }
                  else
                  {
                     onShopItemDenied(new Response(":)"));
                  }
                  break;
               case 3:
                  new MessageBox(Localization.Get("whoops"),Localization.Get("shop_purchase_validation_error"),true);
                  break;
               case 4:
                  break;
               case 5:
                  break;
               default:
                  displayGenericError(0,param1.errorData);
            }
            if(_loc3_)
            {
               WaitBox.Hide();
               invokeResponseCallback(param1);
            }
         }
      }
      
      private static function onShopItemConsumed(param1:Response) : void
      {
         var _loc2_:* = null;
         if(param1.isSuccess)
         {
            _loc2_ = param1.data;
            Debugger.Instance.Write("[WordOnGoodsManager::onShopItemConsumed] " + _loc2_.id);
            finalizePurchase(_loc2_);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("shop_purchase_inventory_fail"),true);
            invokeResponseCallback(param1);
         }
      }
      
      private static function onShopItemDenied(param1:Response) : void
      {
         WaitBox.Hide();
         if(param1.isSuccess)
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("shop_purchase_validation_mismatch"),true);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("shop_purchase_inventory_fail"),true);
         }
         invokeResponseCallback(new Response(":(",66));
      }
      
      private static function finalizePurchase(param1:StoreProduct) : void
      {
         TrackingData.Instance.SetBought();
         if(param1.id == ShopItems.GetBillingID("item_no_ads") || param1.id == ShopItems.GetBillingID("item_no_ads_nonconsumable"))
         {
            AdManager.instance.removeAllNetworks();
         }
         if(ClientData.Instance != null && ClientData.Instance.IsLoggedIn)
         {
            WaitBox.Show();
            PHPWrapper.GetInventory(onPlayerInventoryReceived);
         }
         else
         {
            WaitBox.Hide();
            new MessageBox(Localization.Get("whoops"),Localization.Get("inventory_update_failed"),true);
         }
      }
      
      private static function onPlayerInventoryReceived(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Inventory.Set(param1);
            invokeResponseCallback(new Response(":)"));
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("inventory_update_failed"),true);
            invokeResponseCallback(new Response(":(",65530));
         }
      }
      
      private static function onProcessVirtualPurchase(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            ClientData.Instance.Inventory.Set(response);
            var trackingID:String = ShopItems.GetSwrveID(theLastPurchasedItem);
            var _loc3_:* = theLastPurchasedItem;
            if("stars_huge" !== _loc3_)
            {
               if("stars_large" !== _loc3_)
               {
                  if("stars_medium" !== _loc3_)
                  {
                     if("stars_small" !== _loc3_)
                     {
                        var tileData:ShopItemData = ShopData.GetTileByID(theLastPurchasedItem);
                        if(tileData != null)
                        {
                           SWRVETracker.Instance.TrackVirtualPurchase(1,trackingID,tileData.Cost,tileData.Currency == "stars"?"stars":"coins");
                        }
                     }
                     else
                     {
                        SWRVETracker.Instance.TrackVirtualPurchase(1,"pack.stars.small",1000,"coins");
                        SWRVETracker.Instance.TrackCurrencyGiven("stars",30);
                     }
                  }
                  else
                  {
                     SWRVETracker.Instance.TrackVirtualPurchase(1,"pack.stars.medium",1800,"coins");
                     SWRVETracker.Instance.TrackCurrencyGiven("stars",60);
                  }
               }
               else
               {
                  SWRVETracker.Instance.TrackVirtualPurchase(1,"pack.stars.large",4000,"coins");
                  SWRVETracker.Instance.TrackCurrencyGiven("stars",150);
               }
            }
            else
            {
               SWRVETracker.Instance.TrackVirtualPurchase(1,"pack.stars.huge",10000,"coins");
               SWRVETracker.Instance.TrackCurrencyGiven("stars",450);
            }
            invokeResponseCallback(new Response(":)"));
         }
         else
         {
            var nokCB:Function = null;
            if(theInvokeCallbackAfterNokMessageFlag)
            {
               nokCB = function():void
               {
                  invokeResponseCallback(new Response(":(",66));
               };
            }
            if(response.error == 12)
            {
               new MessageBox(Localization.Get("whoops"),Localization.Get("shop_already_has_item"),false,true,nokCB);
            }
            else if(response.error == 13)
            {
               new MessageBox(Localization.Get("sorry"),Localization.Get("shop_not_enough_coins"),true,true,nokCB);
            }
            else if(response.error == 20)
            {
               new MessageBox(Localization.Get("shop_not_enough_stars_title"),Localization.Get("shop_not_enough_stars_to_buy"),true,true,nokCB);
            }
            else
            {
               displayGenericError(40,-2147483648,nokCB);
            }
            if(!theInvokeCallbackAfterNokMessageFlag)
            {
               invokeResponseCallback(new Response(":(",66));
            }
         }
      }
      
      public static function checkStarFlow(param1:int, param2:Function, param3:String) : Boolean
      {
         if(ClientData.Instance.Inventory.TotalStars < param1)
         {
            if(ClientData.Instance.HasStarsForRLM)
            {
               new BuyStarsBox(param1,param3,param2);
            }
            else
            {
               showNoStarsGoToShop();
            }
            return false;
         }
         return true;
      }
      
      public static function showNoStarsGoToShop() : void
      {
      }
      
      private static function invokeResponseCallback(param1:Response) : void
      {
         if(thePurchaseResponseCallback != null)
         {
            thePurchaseResponseCallback(param1);
            thePurchaseResponseCallback = null;
         }
      }
      
      private static function displayGenericError(param1:int, param2:Object = null, param3:Function = null) : void
      {
         var _loc4_:String = "";
         if(param2 == null || param2.errorID == null)
         {
            _loc4_ = " (#" + param1 + ")";
         }
         else
         {
            _loc4_ = " (#" + param1 + "-" + param2.errorID + ")";
         }
      }
   }
}
