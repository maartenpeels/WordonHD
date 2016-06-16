package com.greensock.easing
{
   public class RoughEase extends Object
   {
      
      private static var _count:uint = 0;
      
      private static var _lookup:Object = {};
       
      private var _first:EasePoint;
      
      private var _last:EasePoint;
      
      private var _name:String;
      
      public function RoughEase(param1:Number = 1, param2:uint = 20, param3:Boolean = false, param4:Function = null, param5:String = "none", param6:Boolean = true, param7:String = "")
      {
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         super();
         if(param7 == "")
         {
            _name = "roughEase" + _count++;
         }
         else
         {
            _name = param7;
            _lookup[_name] = this;
         }
         if(param5 == "" || param5 == null)
         {
            var param5:String = "none";
         }
         var _loc8_:Array = [];
         var _loc9_:* = 0;
         var param1:Number = param1 * 0.4;
         var _loc15_:int = param2;
         while(--_loc15_ > -1)
         {
            _loc10_ = param6?Math.random():1 / param2 * _loc15_;
            _loc11_ = param4 != null?param4(_loc10_,0,1,1):_loc10_;
            if(param5 == "none")
            {
               _loc12_ = param1;
            }
            else if(param5 == "out")
            {
               _loc13_ = 1 - _loc10_;
               _loc12_ = _loc13_ * _loc13_ * param1;
            }
            else if(param5 == "in")
            {
               _loc12_ = _loc10_ * _loc10_ * param1;
            }
            else if(_loc10_ < 0.5)
            {
               _loc13_ = _loc10_ * 2;
               _loc12_ = _loc13_ * _loc13_ * 0.5 * param1;
            }
            else
            {
               _loc13_ = (1 - _loc10_) * 2;
               _loc12_ = _loc13_ * _loc13_ * 0.5 * param1;
            }
            if(param6)
            {
               _loc11_ = _loc11_ + (Math.random() * _loc12_ - _loc12_ * 0.5);
            }
            else if(_loc15_ % 2)
            {
               _loc11_ = _loc11_ + _loc12_ * 0.5;
            }
            else
            {
               _loc11_ = _loc11_ - _loc12_ * 0.5;
            }
            if(param3)
            {
               if(_loc11_ > 1)
               {
                  _loc11_ = 1.0;
               }
               else if(_loc11_ < 0)
               {
                  _loc11_ = 0.0;
               }
            }
            _loc8_[_loc9_++] = {
               "x":_loc10_,
               "y":_loc11_
            };
         }
         _loc8_.sortOn("x",Array.NUMERIC);
         _first = _last = new EasePoint(1,1,null);
         _loc15_ = param2;
         while(--_loc15_ > -1)
         {
            _loc14_ = _loc8_[_loc15_];
            _first = new EasePoint(_loc14_.x,_loc14_.y,_first);
         }
         _first = new EasePoint(0,0,_first.time != 0?_first:_first.next);
      }
      
      public static function byName(param1:String) : Function
      {
         return _lookup[param1].ease;
      }
      
      public static function create(param1:Number = 1, param2:uint = 20, param3:Boolean = false, param4:Function = null, param5:String = "none", param6:Boolean = true, param7:String = "") : Function
      {
         var _loc8_:RoughEase = new RoughEase(param1,param2,param3,param4,param5,param6,param7);
         return _loc8_.ease;
      }
      
      public function set name(param1:String) : void
      {
         delete _lookup[_name];
         _name = param1;
         _lookup[_name] = this;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function ease(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc6_:EasePoint = null;
         var _loc5_:Number = param1 / param4;
         if(_loc5_ < 0.5)
         {
            _loc6_ = _first;
            while(_loc6_.time <= _loc5_)
            {
               _loc6_ = _loc6_.next;
            }
            _loc6_ = _loc6_.prev;
         }
         else
         {
            _loc6_ = _last;
            while(_loc6_.time >= _loc5_)
            {
               _loc6_ = _loc6_.prev;
            }
         }
         return param2 + (_loc6_.value + (_loc5_ - _loc6_.time) / _loc6_.gap * _loc6_.change) * param3;
      }
      
      public function dispose() : void
      {
      }
   }
}

class EasePoint extends Object
{
    
   public var prev:EasePoint;
   
   public var time:Number;
   
   public var change:Number;
   
   public var value:Number;
   
   public var next:EasePoint;
   
   public var gap:Number;
   
   function EasePoint(param1:Number, param2:Number, param3:EasePoint)
   {
      super();
      this.time = param1;
      this.value = param2;
      if(param3)
      {
         this.next = param3;
         param3.prev = this;
         this.change = param3.value - param2;
         this.gap = param3.time - param1;
      }
   }
}
