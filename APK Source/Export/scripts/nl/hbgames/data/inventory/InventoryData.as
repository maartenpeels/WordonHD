package nl.hbgames.data.inventory
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import nl.hbgames.utils.Debugger;
   
   public class InventoryData extends EventDispatcher
   {
       
      private var _Items:Dictionary;
      
      private var _TotalCoins:int = 0;
      
      private var _TotalStars:int = 0;
      
      private var _ExpireItems:Vector.<InventoryItem>;
      
      public function InventoryData()
      {
         super();
         _Items = new Dictionary();
         _ExpireItems = new Vector.<InventoryItem>();
      }
      
      public function get TotalCoins() : int
      {
         return _TotalCoins;
      }
      
      public function set TotalCoins(param1:int) : void
      {
         if(param1 != _TotalCoins)
         {
            _TotalCoins = param1;
            this.dispatchEvent(new Event("change"));
         }
      }
      
      public function get TotalStars() : int
      {
         return _TotalStars;
      }
      
      public function set TotalStars(param1:int) : void
      {
         if(param1 != _TotalStars)
         {
            _TotalStars = param1;
            this.dispatchEvent(new Event("change"));
         }
      }
      
      public function Get(param1:String) : InventoryItem
      {
         if(_Items[param1] == undefined)
         {
            return new InventoryItem("undefined");
         }
         return _Items[param1];
      }
      
      public function Add(param1:InventoryItem) : void
      {
         if(_Items[param1.ID.toLowerCase()] == undefined)
         {
            Keep(param1);
         }
      }
      
      public function Set(param1:Object) : void
      {
         var _loc6_:* = 0;
         var _loc3_:* = null;
         var _loc2_:* = 0;
         var _loc5_:* = NaN;
         var _loc4_:* = null;
         if(param1.inventory)
         {
            _loc6_ = 0;
            while(_loc6_ < param1.inventory.length)
            {
               _loc3_ = param1.inventory[_loc6_];
               _loc2_ = _loc3_.total;
               _loc5_ = _loc3_.lifetime?_loc3_.lifetime:0.0;
               _loc4_ = (_loc3_.id).toLowerCase();
               Keep(new InventoryItem(_loc4_,_loc2_,_loc5_));
               _loc6_++;
            }
         }
         if(param1.user)
         {
            if(param1.user.coins != null)
            {
               _TotalCoins = param1.user.coins;
            }
            if(param1.user.stars != null)
            {
               _TotalStars = param1.user.stars;
            }
         }
         if(param1.inventory || param1.user)
         {
            OnItemChanged();
         }
      }
      
      private function Keep(param1:InventoryItem) : void
      {
         param1.SetChangeCallback(OnItemChanged);
         _Items[param1.ID.toLowerCase()] = param1;
         if(param1.Expires)
         {
            _ExpireItems.push(param1);
         }
      }
      
      private function Discard(param1:InventoryItem) : void
      {
         Debugger.Instance.Write("[InventoryData::Discard] Item \'" + param1.ID + "\' will be discarded.");
         var _loc2_:int = _ExpireItems.indexOf(param1);
         if(_loc2_ != -1)
         {
            _ExpireItems.splice(_loc2_,1);
         }
         if(_Items[param1.ID] != undefined)
         {
            _Items[param1.ID].Dispose();
            _Items[param1.ID] = null;
            delete _Items[param1.ID];
         }
      }
      
      public function Update() : void
      {
         var _loc2_:* = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < _ExpireItems.length)
         {
            _loc1_ = _ExpireItems[_loc2_];
            _loc1_.CheckExpiration();
            _loc2_++;
         }
      }
      
      private function OnItemChanged(param1:InventoryItem = null) : void
      {
         this.dispatchEvent(new Event("change"));
         if(param1 != null)
         {
            if(param1.Amount == 0)
            {
               Discard(param1);
            }
         }
      }
      
      public function Dispose() : void
      {
         _Items = null;
         _ExpireItems = null;
      }
   }
}
