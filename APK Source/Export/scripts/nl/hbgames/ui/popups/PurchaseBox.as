package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.data.shop.ShopData;
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.data.shop.ShopItemData;
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   
   public class PurchaseBox extends BasePopup
   {
       
      private var _ItemID:String;
      
      private var _ButtonOK:PopupButton;
      
      public function PurchaseBox(param1:String)
      {
         _ItemID = param1;
         super(new libPurchaseBox());
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         var _loc1_:ShopItemData = ShopData.GetElementByIDSearchAll(ShopItems.GetNormalID(_ItemID));
         _Content.lblTitle.text = Localization.Get("awesome");
         _Content.lblMessage.text = Localization.Get("shop_item_bought",_loc1_ != null?_loc1_.Title:"<unknown>");
         _Content.mcAni.mcImage.gotoAndStop(ShopItems.GetImageID(_ItemID));
         _ButtonOK = new PopupButton(_Content.btnOK,OnOKClick,Localization.Get("general_button_continue"));
      }
      
      private function OnOKClick(param1:MouseEvent = null) : void
      {
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         OnOKClick(null);
      }
      
      override public function Dispose() : void
      {
         _ItemID = null;
         _ButtonOK.Dispose();
         _ButtonOK = null;
         super.Dispose();
      }
   }
}
