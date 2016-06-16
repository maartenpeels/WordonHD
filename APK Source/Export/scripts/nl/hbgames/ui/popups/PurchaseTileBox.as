package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.data.Localization;
   import flash.display.MovieClip;
   import flash.display.Bitmap;
   import nl.hbgames.managers.AssetManager;
   import flash.events.MouseEvent;
   
   public class PurchaseTileBox extends BasePopup
   {
       
      private var _TileData:Object;
      
      private var _ButtonOK:PopupButton;
      
      private var _Callback:Function;
      
      public function PurchaseTileBox(param1:Object, param2:Function = null)
      {
         _TileData = param1;
         _Callback = param2;
         super(new libPurchaseTileBox());
      }
      
      override public function Initialize() : void
      {
         var _loc3_:* = 0;
         var _loc1_:* = null;
         var _loc2_:* = null;
         super.Initialize();
         _Content.lblTitle.htmlText = "<b>" + Localization.Get("awesome") + "</b>";
         _Content.lblMessage.htmlText = Localization.Get("shop_unlocked_tileset");
         _loc3_ = 0;
         while(_loc3_ < 3)
         {
            _loc1_ = _Content.mcTileAnim["mcTile" + (_loc3_ + 1)];
            _loc1_.removeChildren();
            if(_TileData != null)
            {
               _loc2_ = new Bitmap(AssetManager.GetExternalTileset(_TileData.id));
               _loc2_.smoothing = true;
               _loc1_.addChild(_loc2_);
            }
            _loc3_++;
         }
         _ButtonOK = new PopupButton(_Content.btnOK,OnOKClick,Localization.Get("general_button_continue"));
      }
      
      private function OnOKClick(param1:MouseEvent = null) : void
      {
         if(_Callback != null)
         {
            _Callback();
         }
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         OnOKClick(null);
      }
      
      override public function Dispose() : void
      {
         _TileData = null;
         _Callback = null;
         _ButtonOK.Dispose();
         _ButtonOK = null;
         super.Dispose();
      }
   }
}
