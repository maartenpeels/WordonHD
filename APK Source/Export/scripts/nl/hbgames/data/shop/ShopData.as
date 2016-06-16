package nl.hbgames.data.shop
{
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.utils.Debugger;
   
   public class ShopData extends Object
   {
      
      private static var _ItemList:Vector.<ShopItemData>;
      
      private static var _CoinList:Vector.<ShopItemData>;
      
      private static var _StarList:Vector.<ShopItemData>;
      
      private static var _TileList:Vector.<ShopItemData>;
      
      private static var _Callback:Function;
      
      private static var _LastUpdateTime:Number = 0;
      
      private static const REFRESH_TIME:Number = 2.88E7;
       
      public function ShopData()
      {
         super();
      }
      
      public static function GetItemList() : Vector.<ShopItemData>
      {
         return _ItemList;
      }
      
      public static function GetCoinList() : Vector.<ShopItemData>
      {
         return _CoinList;
      }
      
      public static function GetStarList() : Vector.<ShopItemData>
      {
         return _StarList;
      }
      
      public static function GetTileList() : Vector.<ShopItemData>
      {
         return _TileList;
      }
      
      public static function LoadData(param1:Function, param2:Boolean = false) : void
      {
         _Callback = param1;
         if(param2 || new Date().getTime() > _LastUpdateTime + 28800000)
         {
            PHPWrapper.GetShopOverview(OnShopItemsReceived);
         }
         else
         {
            _Callback(true);
         }
      }
      
      private static function OnShopItemsReceived(param1:Object) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc2_:* = null;
         var _loc3_:* = undefined;
         var _loc4_:* = 0;
         if(param1.result == ":)")
         {
            _LastUpdateTime = new Date().getTime();
            if(ClientData.Instance && ClientData.Instance.IsLoggedIn)
            {
               ClientData.Instance.Inventory.Set(param1);
            }
            try
            {
               _ItemList = new Vector.<ShopItemData>();
               _CoinList = new Vector.<ShopItemData>();
               _StarList = new Vector.<ShopItemData>();
               _TileList = new Vector.<ShopItemData>();
               _loc5_ = [{
                  "source":param1.item,
                  "target":_ItemList
               },{
                  "source":param1.stars,
                  "target":_StarList
               },{
                  "source":param1.money,
                  "target":_StarList
               },{
                  "source":param1.coins,
                  "target":_CoinList
               },{
                  "source":param1.tiles,
                  "target":_TileList
               }];
               _loc6_ = 0;
               while(_loc6_ < _loc5_.length)
               {
                  _loc2_ = _loc5_[_loc6_].source;
                  if(_loc2_ != null)
                  {
                     _loc3_ = _loc5_[_loc6_].target;
                     _loc4_ = 0;
                     while(_loc4_ < _loc2_.length)
                     {
                        _loc3_.push(new ShopItemData(_loc2_[_loc4_]));
                        _loc4_++;
                     }
                  }
                  _loc6_++;
               }
               _Callback(true);
            }
            catch(e:Error)
            {
               Debugger.Instance.Write("[ShopData::OnShopItemsReceived] Corrupt shop data encountered!",true);
               _Callback(false);
            }
         }
         else
         {
            _Callback(false);
         }
      }
      
      public static function GetItemByID(param1:String) : ShopItemData
      {
         return GetByID(param1,_ItemList);
      }
      
      public static function GetCoinByID(param1:String) : ShopItemData
      {
         return GetByID(param1,_CoinList);
      }
      
      public static function GetTileByID(param1:String) : ShopItemData
      {
         return GetByID(param1,_TileList);
      }
      
      public static function GetStarByID(param1:String) : ShopItemData
      {
         return GetByID(param1,_StarList);
      }
      
      public static function GetElementByIDSearchAll(param1:String) : ShopItemData
      {
         var _loc4_:* = 0;
         var _loc2_:* = null;
         var _loc3_:Array = [_ItemList,_CoinList,_TileList,_StarList];
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_ = GetByID(param1,_loc3_[_loc4_]);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc4_++;
         }
         return null;
      }
      
      private static function GetByID(param1:String, param2:Vector.<ShopItemData>) : ShopItemData
      {
         var _loc3_:* = 0;
         if(param2 != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param2.length)
            {
               if(param2[_loc3_].ID == param1)
               {
                  return param2[_loc3_];
               }
               _loc3_++;
            }
         }
         return null;
      }
   }
}
