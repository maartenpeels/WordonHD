package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.shop.ShopData;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.managers.billing.BillingManager;
   import nl.hbgames.config.Settings;
   import nl.hbgames.managers.WordOnGoodsManager;
   import nl.hbgames.utils.Response;
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.managers.billing.StoreProduct;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.utils.TextfieldUtil;
   import flash.events.MouseEvent;
   import nl.hbgames.data.shop.ShopItemData;
   
   public class BuyStarsBox extends BasePopup
   {
       
      private var _ButtonOK:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      private var _HasEnoughCoins:Boolean;
      
      private var _Callback:Function;
      
      private var _StarsNeeded:uint;
      
      private var _FeatureLabel:String;
      
      private var _Initialized:Boolean;
      
      private const STARS_GAINED:int = 25;
      
      public function BuyStarsBox(param1:uint, param2:String, param3:Function = null)
      {
         _Callback = param3;
         _StarsNeeded = param1;
         _FeatureLabel = param2;
         super(new libBuyStarsBox(),true);
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = Localization.Get("shop_not_enough_stars_title");
         _Content.lblMessage1.text = "";
         _Content.lblAmount1.text = "";
         _Content.lblAmount2.text = "";
         _Content.mcSymbol.visible = false;
         _Content.btnOK.visible = false;
         _Content.btnClose.visible = false;
         _Content.mcCurType1.visible = false;
         _Content.mcCurType2.visible = false;
         _Content.mcFrame.visible = false;
         _Content.mcFrame.gotoAndStop(1);
         _Content.mcItems.visible = false;
         _Content.mcItems.gotoAndStop(1);
      }
      
      override public function OnShow() : void
      {
         super.OnShow();
         ShopData.LoadData(function(param1:Boolean):void
         {
            if(param1)
            {
               _HasEnoughCoins = ClientData.Instance.Inventory.TotalCoins >= ShopData.GetCoinByID("stars_coins_small").Cost;
               if(_HasEnoughCoins)
               {
                  _Content.lblMessage1.text = Localization.Get("shop_buy_stars_quickly_coins",25,ShopData.GetCoinByID("stars_coins_small").Cost,_StarsNeeded,_FeatureLabel);
                  _Content.lblAmount1.text = ShopData.GetCoinByID("stars_coins_small").Cost;
                  _Content.mcCurType1.gotoAndStop("coins");
                  _Content.mcCurType1.visible = true;
                  _ButtonOK = new PopupButton(_Content.btnOK,OnBuyClick,Localization.Get("shop_buy_stars_quickly_proceed"));
                  ShowElements();
               }
               else
               {
                  BillingManager.instance.connect(onStoreConnected,Settings.IS_ANDROID?"MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAty5gCEaSJdTRr5NlgSi59zc95iJjCr8aGndDgvUUtIHJtJmd8xp9uyvLOnPppKb4A9JXx8jSojsv2FySs5hMN0wQIX79H0GpZMvi45HDc5TCnIhN/nsbmOln7gdcc7x851br/2W2HL5P5xCQVatUDOdLDqAtRqYtWLyx9XcfrA4GsdrnYU8BJP3FwKL4fWIlJ6VOi+T5XlRSX+k1ChCqXWa7mJW2LEnLbCGxLZIe8dsGGshsJB1M8oGZidMYEiGO7mEPmJfCLxvNH9QQGaHyACq9uD4jILm/aei0QP75vnJdNuYQhAXrb010tiMSAfZXwNzcCnjW3OYfohoe2qudewIDAQAB":null);
               }
            }
            else
            {
               Remove();
               WordOnGoodsManager.showNoStarsGoToShop();
            }
         });
      }
      
      private function onStoreConnected(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            BillingManager.instance.getProducts(ShopItems.GetAllProductListForBilling(),onProductsReceived);
         }
         else
         {
            Remove();
            WordOnGoodsManager.showNoStarsGoToShop();
         }
      }
      
      private function onProductsReceived(param1:Response) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc2_:* = null;
         if(param1.isSuccess)
         {
            _loc3_ = param1.data;
            _loc4_ = ShopData.GetStarByID("stars_rlm_small").Cost;
            if(_loc3_)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc2_ = _loc3_[_loc5_];
                  if(_loc2_.id == ShopItems.GetBillingID("stars_rlm_small"))
                  {
                     _loc4_ = _loc2_.localizedCost;
                  }
                  _loc5_++;
               }
            }
            _Content.lblMessage1.text = Localization.Get("shop_buy_stars_quickly_rlm",25,_loc4_,_StarsNeeded,_FeatureLabel);
            _Content.lblAmount1.text = _loc4_;
            _Content.lblAmount1.x = _Content.lblAmount1.x + 40 * AssetManager.ContentScaleFactor;
            _Content.mcCurType1.gotoAndStop("money");
            _Content.mcCurType1.visible = true;
            _ButtonOK = new PopupButton(_Content.btnOK,OnBuyClick,Localization.Get("shop_buy_stars_quickly_proceed"));
            ShowElements();
         }
         else
         {
            Remove();
            WordOnGoodsManager.showNoStarsGoToShop();
         }
      }
      
      private function ShowElements() : void
      {
         _Content.mcItems.visible = true;
         _Content.mcItems.gotoAndStop(ShopItems.GetImageID(_HasEnoughCoins?"stars_coins_small":"stars_rlm_small"));
         _Content.lblAmount2.text = 25;
         _Content.mcCurType2.gotoAndStop("stars");
         _Content.mcCurType2.visible = true;
         TextfieldUtil.AlignVertically(_Content.lblMessage1);
         _Content.btnOK.visible = true;
         _Content.btnClose.visible = true;
         _Content.removeChild(_Content.mcLoader);
         _Content.mcSymbol.visible = true;
         _Content.mcSymbol.gotoAndPlay(1);
         _Content.mcFrame.visible = true;
         _Content.mcFrame.play();
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnCloseClick);
         _Initialized = true;
      }
      
      private function OnBuyClick(param1:MouseEvent) : void
      {
         var _loc2_:ShopItemData = _HasEnoughCoins?ShopData.GetCoinByID("stars_coins_small"):ShopData.GetStarByID("stars_rlm_small");
         this.visible = false;
         WordOnGoodsManager.buy(OnItemBought,_loc2_.ID,_loc2_.Currency,true);
      }
      
      private function OnItemBought(param1:Response) : void
      {
         this.visible = true;
         if(param1.isSuccess)
         {
            if(_Callback != null)
            {
               _Callback();
            }
         }
         OnCloseClick(null);
      }
      
      private function OnCloseClick(param1:MouseEvent = null) : void
      {
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         if(_Initialized)
         {
            OnCloseClick(null);
         }
      }
      
      override public function Dispose() : void
      {
         _Callback = null;
         if(_ButtonOK != null)
         {
            _ButtonOK.Dispose();
            _ButtonOK = null;
         }
         if(_ButtonClose != null)
         {
            _ButtonClose.Dispose();
            _ButtonClose = null;
         }
         super.Dispose();
      }
   }
}
