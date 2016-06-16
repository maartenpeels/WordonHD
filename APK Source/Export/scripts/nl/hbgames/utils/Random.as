package nl.hbgames.utils
{
   public class Random extends Object
   {
      
      private static var theSeed:uint = Math.random() * 65535;
       
      public function Random()
      {
         super();
      }
      
      public static function get seed() : uint
      {
         return theSeed;
      }
      
      public static function nextSignedFloat() : Number
      {
         return Random.nextFloat() * 2 - 1;
      }
      
      public static function nextFloat() : Number
      {
         return generateSeed() / 2147483647;
      }
      
      public static function nextFloatRange(param1:Number, param2:Number) : Number
      {
         return param1 + (param2 - param1) * nextFloat();
      }
      
      public static function nextInt() : uint
      {
         return generateSeed();
      }
      
      public static function nextIntRange(param1:int, param2:int) : int
      {
         return Math.round(param1 + (param2 - param1) * nextFloat());
      }
      
      public static function variance(param1:Number, param2:Number) : Number
      {
         return param1 - param2 + nextFloat() * param2 * 2;
      }
      
      public static function pick(param1:*) : *
      {
         var _loc2_:* = 0;
         if(param1 != null)
         {
            if(param1 is Array || isVector(param1))
            {
               if(param1.length > 0)
               {
                  _loc2_ = Random.nextIntRange(0,param1.length - 1);
                  return param1[_loc2_];
               }
            }
         }
         return null;
      }
      
      public static function shuffle(param1:*) : void
      {
         var _loc3_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = NaN;
         var _loc4_:* = undefined;
         if(param1 is Array || isVector(param1))
         {
            if(param1.length > 1)
            {
               _loc3_ = 0;
               while(_loc3_ < 10)
               {
                  _loc5_ = param1.length - 1;
                  while(_loc5_ > 0)
                  {
                     _loc2_ = nextIntRange(-0.499,param1.length - 1 + 0.499);
                     _loc4_ = param1[_loc2_];
                     param1[_loc2_] = param1[_loc5_];
                     param1[_loc5_] = _loc4_;
                     _loc5_--;
                  }
                  _loc3_++;
               }
            }
         }
      }
      
      public static function randomDistribution(param1:Number, param2:Number, param3:int, param4:Number = 1.0, param5:Number = 1.0) : Array
      {
         var _loc10_:* = 0;
         var _loc6_:Array = [];
         var _loc8_:Number = param2 - param1;
         var _loc9_:Number = _loc8_ / param3;
         var _loc7_:* = 0.0;
         _loc10_ = 0;
         while(_loc10_ < param3)
         {
            _loc7_ = _loc7_ + _loc9_ * Random.nextFloatRange(param4,param5);
            _loc6_.push(_loc7_);
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc6_.length)
         {
            _loc6_[_loc10_] = param1 + _loc6_[_loc10_] * _loc8_ / _loc7_;
            _loc10_++;
         }
         return _loc6_;
      }
      
      public static function sign(param1:Number = 0.5) : int
      {
         return Random.nextFloat() < param1?1:-1.0;
      }
      
      private static function generateSeed() : uint
      {
         theSeed = §§dup(theSeed * 16807 % 2147483647);
         return theSeed * 16807 % 2147483647;
      }
      
      private static function isVector(param1:*) : Boolean
      {
         return param1 is Vector.<*> || param1 is Vector.<Number> || param1 is Vector.<int> || param1 is Vector.<uint>;
      }
   }
}
