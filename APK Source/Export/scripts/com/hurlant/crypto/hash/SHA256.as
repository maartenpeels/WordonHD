package com.hurlant.crypto.hash
{
   public class SHA256 extends SHABase implements IHash
   {
      
      protected static const k:Array = [1116352408,1899447441,3.049323471E9,3.921009573E9,961987163,1508970993,2.453635748E9,2.870763221E9,3.62438108E9,310598401,607225278,1426881987,1925078388,2.162078206E9,2.614888103E9,3.24822258E9,3.835390401E9,4.022224774E9,264347078,604807628,770255983,1249150122,1555081692,1996064986,2.554220882E9,2.821834349E9,2.952996808E9,3.210313671E9,3.336571891E9,3.584528711E9,113926993,338241895,666307205,773529912,1294757372,1396182291,1695183700,1986661051,2.17702635E9,2.456956037E9,2.730485921E9,2.820302411E9,3.2597308E9,3.345764771E9,3.516065817E9,3.600352804E9,4.094571909E9,275423344,430227734,506948616,659060556,883997877,958139571,1322822218,1537002063,1747873779,1955562222,2024104815,2.227730452E9,2.361852424E9,2.428436474E9,2.756734187E9,3.204031479E9,3.329325298E9];
       
      protected var ha:Array;
      
      public function SHA256()
      {
         ha = [1779033703,3.144134277E9,1013904242,2.773480762E9,1359893119,2.600822924E9,528734635,1541459225];
         super();
      }
      
      override public function getHashSize() : uint
      {
         return 32;
      }
      
      override protected function core(param1:Array, param2:uint) : Array
      {
         var _loc18_:* = 0;
         var _loc25_:* = 0;
         var _loc24_:* = 0;
         var _loc23_:* = 0;
         var _loc22_:* = 0;
         var _loc21_:* = 0;
         var _loc20_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc16_:* = 0;
         var _loc8_:* = 0;
         var _loc12_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc26_:* = param2 >> 5;
         var _loc27_:* = param1[_loc26_] | 128 << 24 - param2 % 32;
         param1[_loc26_] = _loc27_;
         param1[(param2 + 64 >> 9 << 4) + 15] = param2;
         var _loc19_:Array = [];
         var _loc15_:uint = ha[0];
         var _loc13_:uint = ha[1];
         var _loc14_:uint = ha[2];
         var _loc10_:uint = ha[3];
         var _loc11_:uint = ha[4];
         var _loc7_:uint = ha[5];
         var _loc9_:uint = ha[6];
         var _loc17_:uint = ha[7];
         _loc18_ = 0;
         while(_loc18_ < param1.length)
         {
            _loc25_ = _loc15_;
            _loc24_ = _loc13_;
            _loc23_ = _loc14_;
            _loc22_ = _loc10_;
            _loc21_ = _loc11_;
            _loc20_ = _loc7_;
            _loc5_ = _loc9_;
            _loc6_ = _loc17_;
            _loc16_ = 0;
            while(_loc16_ < 64)
            {
               if(_loc16_ < 16)
               {
                  _loc19_[_loc16_] = param1[_loc18_ + _loc16_] || 0;
               }
               else
               {
                  _loc8_ = rrol(_loc19_[_loc16_ - 15],7) ^ rrol(_loc19_[_loc16_ - 15],18) ^ _loc19_[_loc16_ - 15] >>> 3;
                  _loc12_ = rrol(_loc19_[_loc16_ - 2],17) ^ rrol(_loc19_[_loc16_ - 2],19) ^ _loc19_[_loc16_ - 2] >>> 10;
                  _loc19_[_loc16_] = _loc19_[_loc16_ - 16] + _loc8_ + _loc19_[_loc16_ - 7] + _loc12_;
               }
               _loc3_ = (rrol(_loc15_,2) ^ rrol(_loc15_,13) ^ rrol(_loc15_,22)) + (_loc15_ & _loc13_ ^ _loc15_ & _loc14_ ^ _loc13_ & _loc14_);
               _loc4_ = _loc17_ + (rrol(_loc11_,6) ^ rrol(_loc11_,11) ^ rrol(_loc11_,25)) + (_loc11_ & _loc7_ ^ _loc9_ & ~_loc11_) + k[_loc16_] + _loc19_[_loc16_];
               _loc17_ = _loc9_;
               _loc9_ = _loc7_;
               _loc7_ = _loc11_;
               _loc11_ = _loc10_ + _loc4_;
               _loc10_ = _loc14_;
               _loc14_ = _loc13_;
               _loc13_ = _loc15_;
               _loc15_ = _loc4_ + _loc3_;
               _loc16_++;
            }
            _loc15_ = _loc15_ + _loc25_;
            _loc13_ = _loc13_ + _loc24_;
            _loc14_ = _loc14_ + _loc23_;
            _loc10_ = _loc10_ + _loc22_;
            _loc11_ = _loc11_ + _loc21_;
            _loc7_ = _loc7_ + _loc20_;
            _loc9_ = _loc9_ + _loc5_;
            _loc17_ = _loc17_ + _loc6_;
            _loc18_ = _loc18_ + 16;
         }
         return [_loc15_,_loc13_,_loc14_,_loc10_,_loc11_,_loc7_,_loc9_,_loc17_];
      }
      
      protected function rrol(param1:uint, param2:uint) : uint
      {
         return param1 << 32 - param2 | param1 >>> param2;
      }
      
      override public function toString() : String
      {
         return "sha256";
      }
   }
}
