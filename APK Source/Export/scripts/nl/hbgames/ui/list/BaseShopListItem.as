package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.ListButton;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.inventory.InventoryItem;
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.WordOnGoodsManager;
   import nl.hbgames.utils.Response;
   
   public class BaseShopListItem extends BaseListItem
   {
       
      protected var _ItemID:String;
      
      protected var _Title:String;
      
      protected var _Description:String;
      
      protected var _Cost:String;
      
      protected var _CurType:String;
      
      protected var _LintLabel:String;
      
      protected var _BtnBuy:ListButton;
      
      protected var _BuyCallback:Function;
      
      protected var _IsEnabled:Boolean;
      
      protected var _BlockRLMPurchase:Boolean;
      
      public function BaseShopListItem(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Boolean = false, param8:String = null, param9:Function = null)
      {
         _ItemID = param2.toLowerCase();
         _Title = param3;
         _Description = param4;
         _Cost = param5;
         _CurType = param6;
         _BuyCallback = param9;
         _LintLabel = param8;
         _IsEnabled = true;
         _BlockRLMPurchase = param7;
         super(AssetManager.GetDefinition(param1,true,true));
      }
      
      public function get ItemID() : String
      {
         return _ItemID;
      }
      
      public function get CurType() : String
      {
         return _CurType;
      }
      
      override public function get ItemHeight() : Number
      {
         return _Content.mcFrame.height * AssetManager.ContentScaleFactor;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         var _loc1_:String = _Cost;
         _Content.lblTitle.text = _Title;
         if(_Content.lblDescription != null)
         {
            _Content.lblDescription.text = _Description != null?_Description:"";
         }
         _Content.mcCurType.gotoAndStop(_CurType);
         var _loc2_:InventoryItem = ClientData.Instance.Inventory.Get(_ItemID);
         if(_loc2_.Amount > 0)
         {
            _Content.removeChild(_Content.mcCurType);
            _IsEnabled = false;
            if(!_loc2_.Expires)
            {
               _loc1_ = Localization.Get("shop_item_in_inventory");
            }
            else
            {
               _loc1_ = _loc2_.ExpireTimeFormatted;
            }
         }
         _BtnBuy = new ListButton(_Content.btnBuy,OnBuyClick,_loc1_);
         if(_BlockRLMPurchase && _CurType == "money")
         {
            _IsEnabled = false;
            _BtnBuy.SetLabel(Localization.Get("shop_item_blocked"));
         }
         if(_IsEnabled)
         {
            _Content.addEventListener("click",OnBuyClick);
         }
         else
         {
            _BtnBuy.Disable(0.7);
         }
      }
      
      protected function OnBuyClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(!ScrollingList.IsDragging)
         {
            WordOnGoodsManager.buy(OnItemBought,_ItemID,_CurType);
         }
      }
      
      protected function OnItemBought(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            if(_BuyCallback != null)
            {
               _BuyCallback(this);
            }
         }
      }
      
      public function CheckPurchaseStatus() : void
      {
         if(ClientData.Instance.Inventory.Get(_ItemID).IsAvailable)
         {
            _BtnBuy.SetLabel(Localization.Get("shop_item_in_inventory"));
            _BtnBuy.Disable(0.6);
            _Content.removeEventListener("click",OnBuyClick);
            _Content.mcCurType.visible = false;
         }
      }
      
      override public function Dispose() : void
      {
         _BtnBuy.Dispose();
         _BtnBuy = null;
         _BuyCallback = null;
         _LintLabel = null;
         _Title = null;
         _Description = null;
         _ItemID = null;
         _Cost = null;
         _Content.removeEventListener("click",OnBuyClick);
         super.Dispose();
      }
   }
}
