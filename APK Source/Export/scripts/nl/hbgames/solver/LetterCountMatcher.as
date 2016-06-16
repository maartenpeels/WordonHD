package nl.hbgames.solver
{
   import flash.utils.ByteArray;
   import nl.hbgames.data.LetterDictionary;
   import nl.hbgames.utils.Debugger;
   
   public class LetterCountMatcher extends Object
   {
       
      public function LetterCountMatcher()
      {
         super();
      }
      
      public function Match(param1:Array, param2:String, param3:ByteArray, param4:Array) : Vector.<String>
      {
         var _loc10_:* = 0;
         var _loc13_:* = 0;
         var _loc11_:int = param1.length;
         while(true)
         {
            _loc10_ = §§dup(param1.indexOf(param2));
            if(param1.indexOf(param2) == -1)
            {
               break;
            }
            param1.splice(_loc10_,1);
         }
         var _loc9_:int = _loc11_ - param1.length;
         var _loc8_:Vector.<uint> = CountLetters(param1);
         var _loc7_:Vector.<uint> = new Vector.<uint>();
         var _loc6_:Number = new Date().getTime();
         CheckNode(0,_loc8_,param3,_loc7_,_loc9_);
         var _loc5_:Number = new Date().getTime();
         var _loc12_:Vector.<String> = new Vector.<String>(_loc7_.length);
         _loc13_ = 0;
         while(_loc13_ < _loc7_.length)
         {
            _loc12_[_loc13_] = param4[_loc7_[_loc13_]];
            _loc13_++;
         }
         return _loc12_;
      }
      
      private function CheckNode(param1:uint, param2:Vector.<uint>, param3:ByteArray, param4:Vector.<uint>, param5:int) : void
      {
         var _loc9_:* = 0;
         _loc9_ = 3;
         var _loc10_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc6_:int = param2[param3[param1]] - param3[param1 + 1];
         var param1:uint = param1 + 2;
         if(_loc6_ + param5 < 0)
         {
            return;
         }
         if(_loc6_ < 0)
         {
            var param5:int = param5 + _loc6_;
         }
         _loc7_ = param3[param1];
         param1++;
         _loc10_ = 0;
         while(_loc10_ < _loc7_)
         {
            param4.push(readThreeAsUint(param3,param1));
            param1 = param1 + 3;
            _loc10_++;
         }
         _loc7_ = param3[param1];
         param1++;
         _loc10_ = 0;
         while(_loc10_ < _loc7_)
         {
            _loc8_ = readThreeAsUint(param3,param1);
            param1 = param1 + 3;
            CheckNode(_loc8_,param2,param3,param4,param5);
            _loc10_++;
         }
      }
      
      public function CountLetters(param1:Array) : Vector.<uint>
      {
         var _loc7_:* = 0;
         var _loc4_:* = null;
         var _loc6_:* = 0;
         var _loc3_:Vector.<String> = LetterDictionary.SYMBOLS;
         var _loc5_:Vector.<String> = new Vector.<String>();
         _loc7_ = 0;
         while(_loc7_ < _loc3_.length)
         {
            if(_loc3_[_loc7_].length < 2)
            {
               _loc5_.push(_loc3_[_loc7_]);
            }
            else
            {
               _loc5_.push("(" + _loc3_[_loc7_] + ")");
            }
            _loc7_++;
         }
         Debugger.Instance.Write("[LetterCountMatcher::CountLetters] using symbols: " + _loc3_.toString(),false);
         Debugger.Instance.Write("[LetterCountMatcher::CountLetters] using letters: " + param1.toString(),false);
         var _loc2_:Vector.<uint> = new Vector.<uint>(_loc5_.length);
         _loc2_.fixed = true;
         _loc7_ = 0;
         while(_loc7_ < param1.length)
         {
            _loc4_ = param1[_loc7_];
            _loc6_ = _loc5_.indexOf(_loc4_);
            if(_loc6_ == -1)
            {
               Debugger.Instance.Write("[LetterCountMatcher::CountLetters] WARNING: symbol " + _loc4_ + " was not found with pos: " + _loc6_,true);
            }
            else
            {
               var _loc8_:* = _loc6_;
               var _loc9_:* = _loc2_[_loc8_] + 1;
               _loc2_[_loc8_] = _loc9_;
            }
            _loc7_++;
         }
         return _loc2_;
      }
      
      private function readThreeAsUint(param1:ByteArray, param2:uint) : uint
      {
         var _loc3_:* = 0;
         _loc3_ = _loc3_ | param1[param2];
         _loc3_ = _loc3_ << 8;
         _loc3_ = _loc3_ | param1[param2 + 1];
         _loc3_ = _loc3_ << 8;
         _loc3_ = _loc3_ | param1[param2 + 2];
         return _loc3_;
      }
   }
}
