package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.Localization;
   import flash.display.Bitmap;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.shop.ShopData;
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.data.shop.ShopItemData;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.WordOnGoodsManager;
   import nl.hbgames.utils.Response;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.data.game.TilesetData;
   
   public class BuyTilesBox extends BasePopup
   {
       
      private var _TileData:Object;
      
      private var _ButtonOK:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      private var _LoadInvitesAfterShop:Boolean;
      
      private var _Callback:Function;
      
      private var _CloseCallback:Function;
      
      private var _Initialized:Boolean;
      
      public function BuyTilesBox(param1:int, param2:Function = null, param3:Boolean = false, param4:Function = null)
      {
         _TileData = TilesetData.GetInfo(param1);
         _Callback = param2;
         _CloseCallback = param4;
         _LoadInvitesAfterShop = param3;
         super(new libBuyTilesBox(),true);
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.htmlText = "<b>" + Localization.Get("unlock_tileset_title") + "</b>";
         _Content.lblMessage.htmlText = Localization.Get("unlock_tileset_body");
         _Content.lblTileName.text = _TileData.loca[Localization.ActiveLanguage];
         _Content.mcTile.removeChildren();
         var _loc1_:Bitmap = new Bitmap(AssetManager.GetExternalTileset(_TileData.id));
         _loc1_.smoothing = true;
         _loc1_.x = -(_loc1_.width >> 1);
         _loc1_.y = -(_loc1_.height >> 1);
         _Content.mcTile.addChild(_loc1_);
         _Content.btnOK.visible = false;
         _Content.btnClose.visible = false;
         _Content.mcCurType.visible = false;
         ShopData.LoadData(OnShopDataInit);
      }
      
      private function OnShopDataInit(param1:Boolean) : void
      {
         _Content.btnOK.visible = true;
         _Content.btnClose.visible = true;
         _Content.removeChild(_Content.mcLoader);
         var _loc3_:ShopItemData = ShopData.GetTileByID(ShopItems.GetTilesetName(_TileData.id));
         var _loc2_:* = true;
         if(param1 && _loc3_ != null)
         {
            if(_loc3_.Currency != "money")
            {
               _loc2_ = false;
            }
            _Content.mcCurType.gotoAndStop(_loc3_.Currency);
            _Content.mcCurType.visible = true;
         }
         if(_loc2_)
         {
            _ButtonOK = new PopupButton(_Content.btnOK,OnShopClick,Localization.Get("unlock_visit_shop"));
            _Content.mcCurType.gotoAndStop(1);
            _Content.mcCurType.visible = false;
         }
         else
         {
            _ButtonOK = new PopupButton(_Content.btnOK,OnBuyClick,_loc3_.Cost);
         }
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnCloseClick);
         _Initialized = true;
      }
      
      private function OnBuyClick(param1:MouseEvent) : void
      {
         var _loc2_:ShopItemData = ShopData.GetTileByID(ShopItems.GetTilesetName(_TileData.id));
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
      
      private function OnShopClick(param1:MouseEvent) : void
      {
         PanelManager.Instance.CloseAll();
         PopupManager.Instance.RemoveAll();
         LogicManager.Instance.SetState("ShopOverview",{
            "activeFilter":1,
            "loadInvites":_LoadInvitesAfterShop
         });
         Remove();
      }
      
      private function OnCloseClick(param1:MouseEvent) : void
      {
         if(_CloseCallback != null)
         {
            _CloseCallback();
         }
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
         _TileData = null;
         _Callback = null;
         _CloseCallback = null;
         if(_ButtonOK != null)
         {
            _ButtonOK.Dispose();
            _ButtonOK = null;
         }
         super.Dispose();
      }
   }
}
