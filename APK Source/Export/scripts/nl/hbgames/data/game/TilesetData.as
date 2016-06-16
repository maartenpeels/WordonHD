package nl.hbgames.data.game
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import nl.hbgames.config.Settings;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.events.ProgressEvent;
   import deng.fzip.FZip;
   import deng.fzip.FZipFile;
   import nl.hbgames.data.Storage;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.enums.ShopItems;
   
   public class TilesetData extends Object
   {
      
      private static var _IsInitialized:Boolean = false;
      
      private static var _TileInfoVersionInfo:String = "0";
      
      private static var _TileInfo:Array;
      
      private static var _IsUpdateAvailable:Boolean = false;
      
      private static var _URLLoader:URLLoader;
      
      private static var _Callback:Function;
      
      private static var _ProgressCallback:Function;
      
      public static const DEFAULT_WHITE:int = 0;
      
      public static const DEFAULT_GOLD:int = 1;
       
      public function TilesetData()
      {
         super();
      }
      
      public static function get IsUpdateAvailable() : Boolean
      {
         return _IsUpdateAvailable;
      }
      
      public static function Initialize() : void
      {
         if(!_IsInitialized)
         {
            _IsUpdateAvailable = !ParseTileInfo();
            _IsInitialized = true;
         }
      }
      
      public static function CheckVersion(param1:String) : void
      {
         if(param1 > _TileInfoVersionInfo)
         {
            _IsUpdateAvailable = true;
         }
      }
      
      public static function DownloadPackage(param1:Function = null, param2:Function = null) : void
      {
         _Callback = param1;
         _ProgressCallback = param2;
         CreateLoader();
         _URLLoader.load(new URLRequest(Settings.CONTENT_URL + "/tiles/tilesets.zip"));
      }
      
      private static function OnDownloadComplete(param1:Event) : void
      {
         var _loc2_:Boolean = ExtractPackageAndParse(_URLLoader.data as ByteArray);
         _IsUpdateAvailable = !_loc2_;
         DisposeLoader();
         if(_Callback != null)
         {
            _Callback(_loc2_);
         }
      }
      
      private static function OnDownloadProgress(param1:ProgressEvent) : void
      {
         if(_ProgressCallback != null)
         {
            _ProgressCallback(param1.bytesLoaded / param1.bytesTotal);
         }
      }
      
      private static function OnDownloadError(param1:*) : void
      {
         DisposeLoader();
         if(_Callback != null)
         {
            _Callback(false);
         }
      }
      
      private static function ExtractPackageAndParse(param1:ByteArray) : Boolean
      {
         var _loc8_:* = 0;
         var _loc3_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = false;
         var _loc5_:* = true;
         var _loc6_:FZip = new FZip();
         _loc6_.loadBytes(param1);
         var _loc4_:int = _loc6_.getFileCount();
         if(_loc4_ <= 1)
         {
            _loc5_ = false;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc4_)
         {
            _loc3_ = _loc6_.getFileAt(_loc8_);
            _loc7_ = _loc3_.filename.toLowerCase();
            _loc2_ = Storage.WriteFile("t/" + _loc7_,_loc3_.content,false,false,"ios_support",true);
            if(!_loc2_)
            {
               _loc5_ = false;
            }
            else
            {
               AssetManager.RemoveFromCache(_loc7_);
            }
            _loc8_++;
         }
         if(_loc5_)
         {
            _loc5_ = ParseTileInfo();
         }
         return _loc5_;
      }
      
      private static function ParseTileInfo() : Boolean
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc5_:* = 0;
         var _loc2_:* = 0;
         var _loc4_:* = false;
         var _loc1_:* = null;
         _TileInfo = [];
         AddTileData(0,true,1059941,{
            "nl":"Klassiek Wit",
            "en":"Classic White",
            "de":"Klassisch Weiß",
            "fr":"Blanc classique",
            "es":"Blanco clásico",
            "it":"Classico bianco"
         });
         AddTileData(1,false,13255424,{
            "nl":"",
            "en":"",
            "de":"",
            "fr":"",
            "es":"",
            "it":""
         });
         var _loc3_:ByteArray = Storage.ReadFile("t/tiledata.xml",false,"ios_support",false);
         if(_loc3_ != null)
         {
            try
            {
               _loc8_ = new XML(_loc3_.readUTFBytes(_loc3_.length));
               _TileInfoVersionInfo = _loc8_.config.timestamp;
               _loc9_ = _loc8_.sets.*;
               var _loc14_:* = 0;
               var _loc13_:* = _loc9_;
               for each(var _loc6_ in _loc9_)
               {
                  _loc5_ = _loc6_.@id;
                  _loc2_ = _loc6_.@fontColor;
                  _loc4_ = _loc6_.@enabled != undefined?_loc6_.@enabled == "true":true;
                  _loc1_ = {};
                  var _loc12_:* = 0;
                  var _loc11_:* = _loc6_.children();
                  for each(var _loc7_ in _loc6_.children())
                  {
                     _loc1_[_loc7_.name()] = _loc7_.toString();
                  }
                  AddTileData(_loc5_,_loc4_,_loc2_,_loc1_);
               }
               _loc12_ = true;
               return _loc12_;
            }
            catch(e:Error)
            {
               _TileInfoVersionInfo = "0";
               Debugger.Instance.Write("[TilesetData::ParseTileInfo] Something went wrong while parsing the XML",true);
            }
         }
         return false;
      }
      
      private static function AddTileData(param1:int, param2:Boolean, param3:int, param4:Object) : Boolean
      {
         var _loc5_:* = 0;
         if(_TileInfo == null)
         {
            _TileInfo = [];
         }
         _loc5_ = 0;
         while(_loc5_ < _TileInfo.length)
         {
            if(_TileInfo[_loc5_].id == param1)
            {
               Debugger.Instance.Write("[TilesetData::AddTileData] Specified TileID (" + param1 + ") already reserved!",true);
               return false;
            }
            _loc5_++;
         }
         _TileInfo.push({
            "id":param1,
            "selectable":param2,
            "fontColor":param3,
            "loca":param4
         });
         return true;
      }
      
      public static function GetSelectableTiles() : Array
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         var _loc1_:Array = [];
         _loc3_ = 0;
         while(_loc3_ < _TileInfo.length)
         {
            _loc2_ = _TileInfo[_loc3_];
            if(_loc2_.selectable || ClientData.Instance.IsLoggedIn && ClientData.Instance.Inventory.Get(ShopItems.GetTilesetName(_loc2_.id)).IsAvailable)
            {
               _loc1_.push(_loc2_);
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      public static function GetTileListIndex(param1:int) : int
      {
         var _loc4_:* = 0;
         var _loc2_:Array = GetSelectableTiles();
         var _loc3_:* = 0;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].id == param1)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function GetInfo(param1:int, param2:Boolean = true) : Object
      {
         var _loc4_:* = 0;
         var _loc3_:int = param1 - 1;
         if(_loc3_ >= 0 && _loc3_ < _TileInfo.length)
         {
            if(_TileInfo[_loc3_].id == param1)
            {
               return _TileInfo[_loc3_];
            }
            _loc4_ = 0;
            while(_loc4_ < _TileInfo.length)
            {
               if(_TileInfo[_loc4_].id == param1)
               {
                  return _TileInfo[_loc4_];
               }
               _loc4_++;
            }
         }
         if(param2)
         {
            return _TileInfo[0];
         }
         return null;
      }
      
      public static function GetInfoByShopID(param1:String, param2:Boolean = true) : Object
      {
         if(param1 == null)
         {
            var param1:String = "";
         }
         return GetInfo(param1.replace("item_tileset_",""),param2);
      }
      
      public static function MakeValid(param1:int) : int
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _TileInfo.length)
         {
            if(_TileInfo[_loc2_].id == param1)
            {
               return param1;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public static function IsValid(param1:int) : Boolean
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _TileInfo.length)
         {
            if(_TileInfo[_loc2_].id == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private static function CreateLoader() : void
      {
         if(_URLLoader == null)
         {
            _URLLoader = new URLLoader();
            _URLLoader.dataFormat = "binary";
            _URLLoader.addEventListener("complete",OnDownloadComplete);
            _URLLoader.addEventListener("progress",OnDownloadProgress);
            _URLLoader.addEventListener("ioError",OnDownloadError);
            _URLLoader.addEventListener("securityError",OnDownloadError);
         }
      }
      
      private static function DisposeLoader() : void
      {
         if(_URLLoader != null)
         {
            try
            {
               _URLLoader.close();
            }
            catch(err:Error)
            {
            }
            _URLLoader.removeEventListener("complete",OnDownloadComplete);
            _URLLoader.removeEventListener("progress",OnDownloadProgress);
            _URLLoader.removeEventListener("ioError",OnDownloadError);
            _URLLoader.removeEventListener("securityError",OnDownloadError);
            _URLLoader = null;
         }
      }
   }
}
