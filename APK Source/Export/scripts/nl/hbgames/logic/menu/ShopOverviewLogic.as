package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.buttons.ActionButton;
   import nl.hbgames.ui.buttons.ListButton;
   import nl.hbgames.managers.billing.StoreProduct;
   import nl.hbgames.data.Localization;
   import nl.hbgames.config.Settings;
   import flash.events.MouseEvent;
   import nl.hbgames.data.shop.ShopData;
   import nl.hbgames.ui.list.OfferWallListItem;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.ui.popups.TileUpdateBox;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.WordOn;
   import nl.hbgames.ui.list.ScrollingList;
   import nl.hbgames.managers.offerwalls.OfferWallManager;
   import nl.hbgames.managers.billing.BillingManager;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.utils.Response;
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.data.shop.ShopItemData;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.ui.list.NoteListItem;
   import nl.hbgames.ui.list.ShopListItem;
   import nl.hbgames.ui.list.ShopListTileItem;
   import flash.events.Event;
   import nl.hbgames.ui.list.BaseListItem;
   import nl.hbgames.ui.list.BaseShopListItem;
   import nl.hbgames.managers.WordOnGoodsManager;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.net.SWRVETracker;
   
   public class ShopOverviewLogic extends Logic
   {
       
      private const MAX_FILTERS:int = 1;
      
      private var _FilterType:int = -1;
      
      private var _ActiveFilterOnOpen:int = 0;
      
      private var _LoadInvitesOnExit:Boolean = false;
      
      private var _BtnRestore:ActionButton;
      
      private var _BtnCoins:ListButton;
      
      private var _BtnTiles:ListButton;
      
      private var _IsIAPBlocked:Boolean;
      
      private var theStoreProducts:Vector.<StoreProduct>;
      
      public function ShopOverviewLogic()
      {
         super(new libShopOverviewScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _BtnRestore = new ActionButton(_Content.btnRestore,OnRestoreClick,Localization.Get("restore_purchases"));
         _BtnCoins = new ListButton(_Content.btn0,OnShowCoins,Localization.Get("shop_filter_coins_stars_items"));
         _BtnTiles = new ListButton(_Content.btn1,OnShowTiles,Localization.Get("shop_filter_tilesets"));
         _IsIAPBlocked = false;
         _BtnCoins.Disable();
         _BtnTiles.Disable();
         _BtnRestore.Disable(0);
         if(!Settings.IS_IOS)
         {
            _BtnRestore.Disable(0);
         }
      }
      
      private function OnShowCoins(param1:MouseEvent) : void
      {
         SetFilterType(0);
      }
      
      private function OnShowTiles(param1:MouseEvent) : void
      {
         SetFilterType(1);
      }
      
      private function SetFilterType(param1:int) : void
      {
         if(_FilterType != param1)
         {
            _FilterType = param1 >= 0?param1:0;
            if(_FilterType > 1)
            {
               _FilterType = 1;
            }
            _BtnCoins.ShowHighlight(false);
            _BtnTiles.ShowHighlight(false);
            _List.Clear();
            switch(_FilterType)
            {
               case 0:
                  _BtnCoins.ShowHighlight(true);
                  ShowCategory(Localization.Get("shop_overview_items"),ShopData.GetItemList(),1);
                  _List.Add(new OfferWallListItem(Localization.Get("shop_offerwall_item_title"),OnOfferWallClick));
                  ShowCategory(Localization.Get("shop_overview_stars"),ShopData.GetStarList(),2);
                  ShowCategory(Localization.Get(!ClientData.Instance.HasStarsForRLM?"shop_overview_coins":"shop_overview_convert_coins"),ShopData.GetCoinList(),3);
                  break;
               case 1:
                  _BtnTiles.ShowHighlight(true);
                  ShowCategory(Localization.Get("shop_overview_tiles"),ShopData.GetTileList(),1,true);
                  break;
            }
            CenterList();
         }
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         if(param1 != null)
         {
            if(param1.activeFilter)
            {
               _ActiveFilterOnOpen = param1.activeFilter;
            }
            if(param1.loadInvites)
            {
               _LoadInvitesOnExit = param1.loadInvites;
            }
         }
         if(TilesetData.IsUpdateAvailable)
         {
            new TileUpdateBox(LoadShopData);
         }
         else
         {
            LoadShopData();
         }
      }
      
      private function LoadShopData() : void
      {
         WaitBox.Show();
         ShopData.LoadData(OnShopDataInit,true);
         WordOn.Instance.Audio.Play("sfxShop");
      }
      
      private function OnOfferWallClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            OfferWallManager.instance.showOffers();
         }
      }
      
      private function OnShopDataInit(param1:Boolean) : void
      {
         if(param1)
         {
            BillingManager.instance.connect(onStoreConnected,Settings.IS_ANDROID?"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAty5gCEaSJdTRr5NlgSi59zc95iJjCr8aGndDgvUUtIHJtJmd8xp9uyvLOnPppKb4A9JXx8jSojsv2FySs5hMN0wQIX79H0GpZMvi45HDc5TCnIhN/nsbmOln7gdcc7x851br/2W2HL5P5xCQVatUDOdLDqAtRqYtWLyx9XcfrA4GsdrnYU8BJP3FwKL4fWIlJ6VOi+T5XlRSX+k1ChCqXWa7mJW2LEnLbCGxLZIe8dsGGshsJB1M8oGZidMYEiGO7mEPmJfCLxvNH9QQGaHyACq9uD4jILm/aei0QP75vnJdNuYQhAXrb010tiMSAfZXwNzcCnjW3OYfohoe2qudewIDAQAB":null);
         }
         else
         {
            WaitBox.Hide();
            new MessageBox(Localization.Get("whoops"),Localization.Get("shop_load_error"),false,true,OnBackClick);
         }
      }
      
      private function onStoreConnected(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            BillingManager.instance.getProducts(ShopItems.GetAllProductListForBilling(),onProductsReceived);
         }
         else
         {
            WaitBox.Hide();
            if(param1.errorCode == 72)
            {
               new MessageBox(Localization.Get("attention"),Localization.Get(Settings.IS_ANDROID?"shop_iap_blocked_android":"shop_iap_blocked_ios"),true);
               _IsIAPBlocked = true;
               DisplayShop();
            }
            else
            {
               new MessageBox(Localization.Get("whoops"),Localization.Get(Settings.IS_ANDROID?"shop_playstore_connection_error":"shop_appstore_connection_error"),true,true,OnBackClick);
            }
         }
      }
      
      private function onProductsReceived(param1:Response) : void
      {
         WaitBox.Hide();
         if(param1.isSuccess)
         {
            theStoreProducts = param1.data;
            DisplayShop();
            if(Settings.IS_IOS)
            {
               _BtnRestore.Enable();
            }
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get(Settings.IS_ANDROID?"shop_playstore_connection_error":"shop_appstore_connection_error"),true,true,OnBackClick);
         }
      }
      
      private function DisplayShop() : void
      {
         ClientData.Instance.Inventory.addEventListener("change",OnInventoryChanged);
         SetFilterType(_ActiveFilterOnOpen);
         _BtnCoins.Enable();
         _BtnTiles.Enable();
      }
      
      private function ShowCategory(param1:String, param2:Vector.<ShopItemData>, param3:uint = 1, param4:Boolean = false) : void
      {
         var _loc10_:* = 0;
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = 0;
         var _loc5_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         _List.Add(new LabelListItem(param1,param3));
         if(param4)
         {
            _List.Add(new NoteListItem(Localization.Get("shop_label_tiles_description"),true));
         }
         _loc10_ = 0;
         while(_loc10_ < param2.length)
         {
            _loc7_ = param2[_loc10_].Cost;
            _loc6_ = param2[_loc10_].ID;
            if(theStoreProducts != null)
            {
               _loc8_ = ShopItems.GetBillingID(_loc6_ == "item_no_ads" && Settings.IS_IOS?"item_no_ads_nonconsumable":_loc6_);
               _loc9_ = 0;
               while(_loc9_ < theStoreProducts.length)
               {
                  _loc5_ = theStoreProducts[_loc9_];
                  if(_loc5_.id == _loc8_)
                  {
                     _loc7_ = _loc5_.localizedCost;
                  }
                  _loc9_++;
               }
            }
            if(!param4)
            {
               if(ShopItems.GetImageID(_loc6_))
               {
                  _List.Add(new ShopListItem(_loc6_,param2[_loc10_].Title,param2[_loc10_].Description,_loc7_,param2[_loc10_].Currency,param2[_loc10_].Lifetime,_IsIAPBlocked,param2[_loc10_].LintLabel,OnItemBought));
               }
            }
            else if(ShopItems.IsValidTilesetItem(_loc6_))
            {
               _List.Add(new ShopListTileItem(_loc6_,param2[_loc10_].Title,param2[_loc10_].Description,_loc7_,param2[_loc10_].Currency,_IsIAPBlocked,param2[_loc10_].LintLabel,OnItemBought));
            }
            _loc10_++;
         }
      }
      
      private function OnInventoryChanged(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = 0;
         if(_List != null)
         {
            _loc2_ = _List.Items;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc2_[_loc3_] is BaseShopListItem)
               {
                  (_loc2_[_loc3_] as BaseShopListItem).CheckPurchaseStatus();
               }
               _loc3_++;
            }
         }
      }
      
      private function OnRestoreClick(param1:MouseEvent) : void
      {
         WaitBox.Show();
         WordOnGoodsManager.restore();
      }
      
      private function OnItemBought(param1:BaseShopListItem) : void
      {
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         LogicManager.Instance.SetState(LogicManager.Instance.PrevState,LogicManager.Instance.PrevData,"AnimRight");
      }
      
      override public function Dispose() : void
      {
         ClientData.Instance.Inventory.removeEventListener("change",OnInventoryChanged);
         SWRVETracker.Instance.TrackCustomEvent("screen.shop");
         if(_LoadInvitesOnExit)
         {
            ClientData.Instance.CheckOpenInvites();
         }
         _BtnRestore.Dispose();
         _BtnCoins.Dispose();
         _BtnTiles.Dispose();
         _BtnRestore = null;
         _BtnTiles = null;
         _IsIAPBlocked = false;
         theStoreProducts = null;
         super.Dispose();
      }
   }
}
