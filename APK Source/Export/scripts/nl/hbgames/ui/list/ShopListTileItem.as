package nl.hbgames.ui.list
{
   import flash.display.Bitmap;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.Response;
   import nl.hbgames.ui.popups.PurchaseTileBox;
   
   public class ShopListTileItem extends BaseShopListItem
   {
       
      private var _TileImage:Bitmap;
      
      public function ShopListTileItem(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Boolean = false, param7:String = null, param8:Function = null)
      {
         super("libListShopItemTileContent",param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         var _loc1_:Object = TilesetData.GetInfoByShopID(_ItemID);
         if(_loc1_ != null)
         {
            _TileImage = new Bitmap(AssetManager.GetExternalTileset(_loc1_.id));
            _Content.mcTile.addChild(_TileImage);
            _Content.lblTitle.text = _loc1_.loca[Localization.ActiveLanguage];
         }
         if(_LintLabel != null)
         {
            _Content.mcLint.label.text = _LintLabel;
         }
         else if(_Content.contains(_Content.mcLint))
         {
            _Content.removeChild(_Content.mcLint);
         }
      }
      
      override protected function OnItemBought(param1:Response) : void
      {
         super.OnItemBought(param1);
         if(param1.isSuccess && _ItemID != null)
         {
            new PurchaseTileBox(TilesetData.GetInfoByShopID(_ItemID));
         }
      }
      
      override public function Dispose() : void
      {
         if(_TileImage != null)
         {
            _Content.mcTile.removeChild(_TileImage);
            _TileImage = null;
         }
         super.Dispose();
      }
   }
}
