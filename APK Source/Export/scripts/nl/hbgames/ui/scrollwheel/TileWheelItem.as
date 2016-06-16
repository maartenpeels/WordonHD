package nl.hbgames.ui.scrollwheel
{
   import flash.display.MovieClip;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.managers.AssetManager;
   import flash.display.Bitmap;
   import nl.hbgames.data.Localization;
   
   public class TileWheelItem extends BaseWheelItem
   {
       
      private var _ID:int;
      
      private var _LockIcon:MovieClip;
      
      public function TileWheelItem(param1:Object)
      {
         super(new Bitmap(AssetManager.GetExternalTileset(param1.id)));
         _ID = param1.id;
         _Output = param1.loca[Localization.ActiveLanguage] != null?param1.loca[Localization.ActiveLanguage]:param1.loca["en"];
         if(_Output == null)
         {
            _Output = "";
         }
         Refresh();
      }
      
      public function get ID() : int
      {
         return _ID;
      }
      
      public function get IsAvailable() : Boolean
      {
         return ClientData.Instance.Inventory.Get(ShopItems.GetTilesetName(_ID)).IsAvailable;
      }
      
      override public function Refresh() : void
      {
         super.Refresh();
         if(!this.IsAvailable && _LockIcon == null)
         {
            _LockIcon = AssetManager.GetDefinition("libLockIconDark",false);
            _LockIcon.x = this.width / 2 - 4 * AssetManager.ContentScaleFactor;
            _LockIcon.y = this.height / 2 - 6 * AssetManager.ContentScaleFactor;
            this.addChild(_LockIcon);
         }
         else if(this.IsAvailable && _LockIcon != null)
         {
            if(this.contains(_LockIcon))
            {
               this.removeChild(_LockIcon);
               _LockIcon = null;
            }
         }
      }
      
      override public function Dispose() : void
      {
         if(_LockIcon != null)
         {
            this.removeChild(_LockIcon);
            _LockIcon = null;
         }
         super.Dispose();
      }
   }
}
