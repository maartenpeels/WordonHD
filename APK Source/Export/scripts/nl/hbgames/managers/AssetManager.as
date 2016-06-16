package nl.hbgames.managers
{
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import flash.display.Bitmap;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.display.ScaleBitmap;
   import flash.utils.getQualifiedClassName;
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import nl.hbgames.data.Storage;
   import flash.utils.ByteArray;
   import nl.hbgames.display.PNGDecoder;
   import flash.utils.getDefinitionByName;
   import nl.hbgames.config.Settings;
   
   public class AssetManager extends Object
   {
      
      private static const ASPECT_RATIOS:Array = ["0.5625","0.6000","0.6250","0.6667","0.7500","0.5634"];
      
      private static const DESIGN_SIZES:Array = [{
         "w":720,
         "h":1280
      },{
         "w":768,
         "h":1280
      },{
         "w":800,
         "h":1280
      },{
         "w":640,
         "h":960
      },{
         "w":768,
         "h":1024
      },{
         "w":640,
         "h":1136
      }];
      
      private static const SHARED_ASPECT_IDS:Array = [1,1,1,3,1,3];
      
      private static var _ContentScaleFactor:Number = 0;
      
      private static var _OverdrawY:int = 0;
      
      private static var _OverdrawX:int = 0;
      
      private static var _RatioID:int = 0;
      
      private static var _BGCover:BitmapData = null;
      
      private static var _CachedData:Dictionary = new Dictionary();
      
      private static var _IsInitialized:Boolean = false;
      
      private static var _TileImgWhiteLarge:Class = §tile_default_white_large_png$21f7a28b91d175faba68e02c7016a7e1-1404023264§;
      
      private static var _TileImgWhiteNormal:Class = §tile_default_white_normal_png$9baf716790c9461a09a395fb70142a45-1767684704§;
      
      private static var _TileImgWhiteSmall:Class = tile_default_white_small_png$ee1e61aea2aa6c33d68f3b1ea0bca3fa430070388;
      
      private static var _TileImgGoldLarge:Class = §tile_default_gold_large_png$02bc45124af1fdd2c4471eb248d15e44-79108345§;
      
      private static var _TileImgGoldNormal:Class = tile_default_gold_normal_png$8dcf1c1d28e46e1b75f238b9dd6747a51757282465;
      
      private static var _TileImgGoldSmall:Class = tile_default_gold_small_png$5f972dce86c01b951a8a49cee1ff58371767568219;
       
      public function AssetManager()
      {
         var _loc1_:* = 0;
         var _loc6_:* = NaN;
         var _loc5_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         super();
         var _loc4_:String = (Settings.SCREEN_WIDTH / Settings.SCREEN_HEIGHT).toPrecision(4);
         _RatioID = ASPECT_RATIOS.indexOf(_loc4_);
         if(_RatioID == -1)
         {
            _loc1_ = 999;
            _loc6_ = 999;
            _loc5_ = -1;
            _loc7_ = 0;
            while(_loc7_ < DESIGN_SIZES.length)
            {
               _loc2_ = DESIGN_SIZES[_loc7_].w - Settings.SCREEN_WIDTH;
               if(Math.abs(_loc2_) <= Math.abs(_loc1_))
               {
                  _loc3_ = (ASPECT_RATIOS[_loc7_]) - (_loc4_);
                  if(Math.abs(_loc3_) <= Math.abs(_loc6_))
                  {
                     _loc1_ = _loc2_;
                     _loc6_ = _loc3_;
                     _loc5_ = _loc7_;
                  }
               }
               _loc7_++;
            }
            _RatioID = _loc5_;
         }
         _ContentScaleFactor = Settings.SCREEN_WIDTH / DESIGN_SIZES[_RatioID].w;
         _OverdrawX = DESIGN_SIZES[_RatioID].w * _ContentScaleFactor - Settings.SCREEN_WIDTH;
         _OverdrawY = DESIGN_SIZES[_RatioID].h * _ContentScaleFactor - Settings.SCREEN_HEIGHT;
         PrepareAssets();
         _IsInitialized = true;
         Debugger.Instance.Write("[AssetManager] Using Ratio ID " + _RatioID + " with Scale Factor " + _ContentScaleFactor);
      }
      
      public static function get ContentScaleFactor() : Number
      {
         return _ContentScaleFactor;
      }
      
      public static function get OverdrawX() : int
      {
         return _OverdrawX;
      }
      
      public static function get OverdrawY() : int
      {
         return _OverdrawY;
      }
      
      public static function get RatioID() : int
      {
         return _RatioID;
      }
      
      public static function get BackgroundCover() : BitmapData
      {
         return _BGCover;
      }
      
      public static function get IsInitialized() : Boolean
      {
         return _IsInitialized;
      }
      
      public static function GetAsBitmap(param1:String, param2:Boolean = true, param3:Boolean = false, param4:String = null, param5:Boolean = true, param6:Function = null, param7:Boolean = false) : Bitmap
      {
         var _loc9_:* = GetDefinition(param1,param2,param3);
         if(_loc9_ == null)
         {
            Debugger.Instance.Write("[AssetManager::GetAsBitmap] The requested asset could not be found",true);
            return null;
         }
         var _loc10_:BitmapData = GetFromCache(_loc9_,param4,param5,param7,param6);
         var _loc8_:Bitmap = new Bitmap(_loc10_);
         _loc8_.smoothing = true;
         return _loc8_;
      }
      
      public static function GetAsScaleBitmap(param1:String, param2:Boolean = true, param3:Boolean = false, param4:String = null, param5:Boolean = true, param6:Function = null, param7:Boolean = false) : ScaleBitmap
      {
         var _loc8_:* = GetDefinition(param1,param2,param3);
         if(_loc8_ == null)
         {
            Debugger.Instance.Write("[AssetManager::GetAsScaleBitmap] The requested asset could not be found",true);
            return null;
         }
         var _loc9_:BitmapData = GetFromCache(_loc8_,param4,param5,param7,param6);
         return new ScaleBitmap(_loc9_);
      }
      
      private static function GetFromCache(param1:*, param2:String = null, param3:Boolean = true, param4:Boolean = false, param5:Function = null) : BitmapData
      {
         var _loc6_:String = getQualifiedClassName(param1);
         if(param2 != null && param2 != "")
         {
            _loc6_ = _loc6_ + ("_" + param2);
         }
         var _loc7_:BitmapData = _CachedData[_loc6_];
         if(_loc7_ == null || param4)
         {
            if(param5 != null)
            {
               param5(param1);
            }
            Cache(param1,_loc6_,param3);
            _loc7_ = _CachedData[_loc6_];
         }
         return _loc7_;
      }
      
      public static function Cache(param1:*, param2:String = null, param3:Boolean = false) : void
      {
         if(param2 == null)
         {
            var param2:String = getQualifiedClassName(param1);
         }
         var _loc4_:BitmapData = Flatten(param1,param3);
         if(_loc4_ != null)
         {
            _CachedData[param2] = _loc4_;
         }
      }
      
      public static function Flatten(param1:*, param2:Boolean = false) : BitmapData
      {
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 is Sprite || param1 is MovieClip)
         {
            _loc3_ = param1.getBounds(param1);
            _loc4_ = new Matrix();
            _loc4_.translate(-_loc3_.x,-_loc3_.y);
            if(param2)
            {
               _loc5_ = new BitmapData(Math.round(_loc3_.width * _ContentScaleFactor),Math.round(_loc3_.height * _ContentScaleFactor),true,0);
               _loc4_.scale(_ContentScaleFactor,_ContentScaleFactor);
            }
            else
            {
               _loc5_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            }
            _loc5_.draw(param1,_loc4_,null,null,null,true);
         }
         else if(param1 is Bitmap || param1 is ScaleBitmap)
         {
            _loc5_ = param1.bitmapData.clone();
         }
         else if(param1 is BitmapData)
         {
            _loc5_ = param1.clone();
         }
         else
         {
            Debugger.Instance.Write("[AssetManager::Flatten] asset is not a drawable object!",true);
            return null;
         }
         return _loc5_;
      }
      
      public static function ReadFromCache(param1:String) : BitmapData
      {
         return _CachedData[param1];
      }
      
      public static function RemoveFromCache(param1:String) : void
      {
         var _loc2_:* = _CachedData[param1];
         if(_loc2_ != null)
         {
            if(_loc2_ is BitmapData)
            {
               _loc2_.dispose();
               _loc2_ = null;
            }
            _CachedData[param1] = null;
            delete _CachedData[param1];
         }
      }
      
      public static function ClearCache() : void
      {
         var _loc1_:* = undefined;
         var _loc4_:* = 0;
         var _loc3_:* = _CachedData;
         for(var _loc2_ in _CachedData)
         {
            _loc1_ = _CachedData[_loc2_];
            if(_loc1_ is BitmapData)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            _CachedData[_loc2_] = null;
            delete _CachedData[_loc2_];
         }
      }
      
      public static function GetExternalTileset(param1:int, param2:Boolean = false, param3:Boolean = false) : BitmapData
      {
         var _loc6_:* = null;
         if(param3)
         {
            _loc6_ = "item_tileset_" + param1 + "_small.png";
         }
         else if(param2)
         {
            _loc6_ = "item_tileset_" + param1 + "_normal.png";
         }
         else
         {
            var _loc7_:* = SHARED_ASPECT_IDS[_RatioID];
            if(3 !== _loc7_)
            {
               _loc6_ = "item_tileset_" + param1 + "_large.png";
            }
            else
            {
               _loc6_ = "item_tileset_" + param1 + "_normal.png";
            }
         }
         var _loc4_:BitmapData = ReadFromCache(_loc6_);
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         var _loc5_:ByteArray = Storage.ReadFile("t/" + _loc6_,false,"ios_support",false);
         if(_loc5_ != null)
         {
            _loc4_ = PNGDecoder.decodeImage(_loc5_);
         }
         if(_loc4_ != null)
         {
            Cache(_loc4_,_loc6_);
            return _loc4_;
         }
         return GetExternalTileset(0,param2,param3);
      }
      
      public static function GetDefinition(param1:String, param2:Boolean = true, param3:Boolean = false) : *
      {
         var _loc6_:* = null;
         var _loc5_:* = undefined;
         var _loc4_:String = "";
         var _loc7_:uint = !param3?_RatioID:SHARED_ASPECT_IDS[_RatioID];
         try
         {
            if(param2)
            {
               switch(_loc7_)
               {
                  case 0:
                     _loc4_ = param1 + "_" + "16x9";
                     break;
                  case 1:
                     _loc4_ = param1 + "_" + "5x3";
                     break;
                  case 2:
                     _loc4_ = param1 + "_" + "8x5";
                     break;
                  case 3:
                     _loc4_ = param1 + "_" + "3x2";
                     break;
                  case 4:
                     _loc4_ = param1 + "_" + "4x3";
                     break;
                  case 5:
                     _loc4_ = param1 + "_" + "71x40";
                     break;
               }
            }
            else
            {
               _loc4_ = param1;
            }
            _loc6_ = getDefinitionByName(_loc4_) as Class;
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[AssetManager::GetDefinition] Failed to find a definition for \'" + _loc4_ + "\'",true);
            var _loc9_:* = null;
            return _loc9_;
         }
         try
         {
            _loc5_ = new _loc6_();
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[AssetManager::GetDefinition] Failed to instantiate object with definition \'" + _loc4_ + "\'",true);
            var _loc12_:* = null;
            return _loc12_;
         }
         return _loc5_;
      }
      
      private function PrepareAssets() : void
      {
         var _loc4_:* = 0;
         var _loc3_:* = null;
         Debugger.Instance.Write("[AssetManager::PrepareAssets] Pre-caching items...");
         _BGCover = new BitmapData(Settings.SCREEN_WIDTH,Settings.SCREEN_HEIGHT,true,2.85212672E9);
         var _loc1_:* = true;
         Cache(GetDefinition("libBackground"),null,_loc1_);
         Cache(GetDefinition("avatar_tutorial_small",false),"avatar_tutorial_small");
         Cache(GetDefinition("avatar_bot_beginner_small",false),"avatar_bot_beginner_small");
         Cache(GetDefinition("avatar_bot_experienced_small",false),"avatar_bot_experienced_small");
         Cache(GetDefinition("avatar_bot_expert_small",false),"avatar_bot_expert_small");
         Cache(GetDefinition("avatar_default_small",false),"avatar_default_small");
         Cache(GetDefinition("avatar_default_medium",false),"avatar_default_medium");
         Cache(GetDefinition("avatar_default_large",false),"avatar_default_large");
         var _loc2_:Array = [{
            "name":"item_tileset_0_large.png",
            "cls":_TileImgWhiteLarge
         },{
            "name":"item_tileset_0_normal.png",
            "cls":_TileImgWhiteNormal
         },{
            "name":"item_tileset_0_small.png",
            "cls":_TileImgWhiteSmall
         },{
            "name":"item_tileset_1_large.png",
            "cls":_TileImgGoldLarge
         },{
            "name":"item_tileset_1_normal.png",
            "cls":_TileImgGoldNormal
         },{
            "name":"item_tileset_1_small.png",
            "cls":_TileImgGoldSmall
         }];
         _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = new _loc2_[_loc4_].cls() as Bitmap;
            Cache(_loc3_,_loc2_[_loc4_].name);
            _loc4_++;
         }
         Debugger.Instance.Write("[AssetManager::PrepareAssets] Pre-cache done.");
      }
      
      public function Dispose() : void
      {
         ClearCache();
         _BGCover.dispose();
         _BGCover = null;
         _CachedData = null;
      }
   }
}
