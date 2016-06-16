package nl.hbgames.data
{
   public class MD5 extends Object
   {
      
      public static const HEX_FORMAT_LOWERCASE:uint = 0;
      
      public static const HEX_FORMAT_UPPERCASE:uint = 1;
      
      public static const BASE64_PAD_CHARACTER_DEFAULT_COMPLIANCE:String = "";
      
      public static const BASE64_PAD_CHARACTER_RFC_COMPLIANCE:String = "=";
      
      public static var hexcase:uint = 0;
      
      public static var b64pad:String = "";
       
      public function MD5()
      {
         super();
      }
      
      public static function encrypt(param1:String) : String
      {
         return hex_md5(param1);
      }
      
      public static function hex_md5(param1:String) : String
      {
         return rstr2hex(rstr_md5(str2rstr_utf8(param1)));
      }
      
      public static function b64_md5(param1:String) : String
      {
         return rstr2b64(rstr_md5(str2rstr_utf8(param1)));
      }
      
      public static function any_md5(param1:String, param2:String) : String
      {
         return rstr2any(rstr_md5(str2rstr_utf8(param1)),param2);
      }
      
      public static function hex_hmac_md5(param1:String, param2:String) : String
      {
         return rstr2hex(rstr_hmac_md5(str2rstr_utf8(param1),str2rstr_utf8(param2)));
      }
      
      public static function b64_hmac_md5(param1:String, param2:String) : String
      {
         return rstr2b64(rstr_hmac_md5(str2rstr_utf8(param1),str2rstr_utf8(param2)));
      }
      
      public static function any_hmac_md5(param1:String, param2:String, param3:String) : String
      {
         return rstr2any(rstr_hmac_md5(str2rstr_utf8(param1),str2rstr_utf8(param2)),param3);
      }
      
      public static function md5_vm_test() : Boolean
      {
         return hex_md5("abc") == "900150983cd24fb0d6963f7d28e17f72";
      }
      
      public static function rstr_md5(param1:String) : String
      {
         return binl2rstr(binl_md5(rstr2binl(param1),param1.length * 8));
      }
      
      public static function rstr_hmac_md5(param1:String, param2:String) : String
      {
         var _loc7_:* = NaN;
         var _loc6_:Array = rstr2binl(param1);
         if(_loc6_.length > 16)
         {
            _loc6_ = binl_md5(_loc6_,param1.length * 8);
         }
         var _loc5_:Array = new Array(16);
         var _loc3_:Array = new Array(16);
         _loc7_ = 0.0;
         while(_loc7_ < 16)
         {
            _loc5_[_loc7_] = _loc6_[_loc7_] ^ 909522486;
            _loc3_[_loc7_] = _loc6_[_loc7_] ^ 1549556828;
            _loc7_++;
         }
         var _loc4_:Array = binl_md5(_loc5_.concat(rstr2binl(param2)),512 + param2.length * 8);
         return binl2rstr(binl_md5(_loc3_.concat(_loc4_),640));
      }
      
      public static function rstr2hex(param1:String) : String
      {
         var _loc5_:* = NaN;
         var _loc4_:* = NaN;
         var _loc2_:String = hexcase?"0123456789ABCDEF":"0123456789abcdef";
         var _loc3_:String = "";
         _loc4_ = 0.0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charCodeAt(_loc4_);
            _loc3_ = _loc3_ + (_loc2_.charAt(_loc5_ >>> 4 & 15) + _loc2_.charAt(_loc5_ & 15));
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function rstr2b64(param1:String) : String
      {
         var _loc7_:* = NaN;
         var _loc3_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
         var _loc6_:String = "";
         var _loc4_:Number = param1.length;
         _loc7_ = 0.0;
         while(_loc7_ < _loc4_)
         {
            _loc3_ = param1.charCodeAt(_loc7_) << 16 | (_loc7_ + 1 < _loc4_?param1.charCodeAt(_loc7_ + 1) << 8:0) | (_loc7_ + 2 < _loc4_?param1.charCodeAt(_loc7_ + 2):0.0);
            _loc5_ = 0.0;
            while(_loc5_ < 4)
            {
               if(_loc7_ * 8 + _loc5_ * 6 > param1.length * 8)
               {
                  _loc6_ = _loc6_ + b64pad;
               }
               else
               {
                  _loc6_ = _loc6_ + _loc2_.charAt(_loc3_ >>> 6 * (3 - _loc5_) & 63);
               }
               _loc5_++;
            }
            _loc7_ = _loc7_ + 3;
         }
         return _loc6_;
      }
      
      public static function rstr2any(param1:String, param2:String) : String
      {
         var _loc5_:* = NaN;
         var _loc10_:* = NaN;
         var _loc3_:* = null;
         var _loc9_:* = NaN;
         var _loc7_:Number = param2.length;
         var _loc8_:Array = [];
         var _loc4_:Array = new Array(param1.length / 2);
         _loc9_ = 0.0;
         while(_loc9_ < _loc4_.length)
         {
            _loc4_[_loc9_] = param1.charCodeAt(_loc9_ * 2) << 8 | param1.charCodeAt(_loc9_ * 2 + 1);
            _loc9_++;
         }
         while(_loc4_.length > 0)
         {
            _loc3_ = [];
            _loc10_ = 0.0;
            _loc9_ = 0.0;
            while(_loc9_ < _loc4_.length)
            {
               _loc10_ = (_loc10_ << 16) + _loc4_[_loc9_];
               _loc5_ = Math.floor(_loc10_ / _loc7_);
               _loc10_ = _loc10_ - _loc5_ * _loc7_;
               if(_loc3_.length > 0 || _loc5_ > 0)
               {
                  _loc3_[_loc3_.length] = _loc5_;
               }
               _loc9_++;
            }
            _loc8_[_loc8_.length] = _loc10_;
            _loc4_ = _loc3_;
         }
         var _loc6_:String = "";
         _loc9_ = _loc8_.length - 1;
         while(_loc9_ >= 0)
         {
            _loc6_ = _loc6_ + param2.charAt(_loc8_[_loc9_]);
            _loc9_--;
         }
         return _loc6_;
      }
      
      public static function str2rstr_utf8(param1:String) : String
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc2_:String = "";
         var _loc5_:* = -1.0;
         while(true)
         {
            _loc5_++;
            if(_loc5_ >= param1.length)
            {
               break;
            }
            _loc4_ = param1.charCodeAt(_loc5_);
            _loc3_ = _loc5_ + 1 < param1.length?param1.charCodeAt(_loc5_ + 1):0.0;
            if(55296 <= _loc4_ && _loc4_ <= 56319 && 56320 <= _loc3_ && _loc3_ <= 57343)
            {
               _loc4_ = 65536 + ((_loc4_ & 1023) << 10) + (_loc3_ & 1023);
               _loc5_++;
            }
            if(_loc4_ <= 127)
            {
               _loc2_ = _loc2_ + String.fromCharCode(_loc4_);
            }
            else if(_loc4_ <= 2047)
            {
               _loc2_ = _loc2_ + String.fromCharCode(192 | _loc4_ >>> 6 & 31,128 | _loc4_ & 63);
            }
            else if(_loc4_ <= 65535)
            {
               _loc2_ = _loc2_ + String.fromCharCode(224 | _loc4_ >>> 12 & 15,128 | _loc4_ >>> 6 & 63,128 | _loc4_ & 63);
            }
            else if(_loc4_ <= 2097151)
            {
               _loc2_ = _loc2_ + String.fromCharCode(240 | _loc4_ >>> 18 & 7,128 | _loc4_ >>> 12 & 63,128 | _loc4_ >>> 6 & 63,128 | _loc4_ & 63);
            }
         }
         return _loc2_;
      }
      
      public static function str2rstr_utf16le(param1:String) : String
      {
         var _loc3_:* = NaN;
         var _loc2_:String = "";
         _loc3_ = 0.0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc2_ + String.fromCharCode(param1.charCodeAt(_loc3_) & 255,param1.charCodeAt(_loc3_) >>> 8 & 255);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function str2rstr_utf16be(param1:String) : String
      {
         var _loc3_:* = NaN;
         var _loc2_:String = "";
         _loc3_ = 0.0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc2_ + String.fromCharCode(param1.charCodeAt(_loc3_) >>> 8 & 255,param1.charCodeAt(_loc3_) & 255);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function rstr2binl(param1:String) : Array
      {
         var _loc3_:* = NaN;
         var _loc2_:Array = new Array(param1.length >> 2);
         _loc3_ = 0.0;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = 0;
            _loc3_++;
         }
         _loc3_ = 0.0;
         while(_loc3_ < param1.length * 8)
         {
            var _loc4_:* = _loc3_ >> 5;
            var _loc5_:* = _loc2_[_loc4_] | (param1.charCodeAt(_loc3_ / 8) & 255) << _loc3_ % 32;
            _loc2_[_loc4_] = _loc5_;
            _loc3_ = _loc3_ + 8;
         }
         return _loc2_;
      }
      
      public static function binl2rstr(param1:Array) : String
      {
         var _loc3_:* = NaN;
         var _loc2_:String = "";
         _loc3_ = 0.0;
         while(_loc3_ < param1.length * 32)
         {
            _loc2_ = _loc2_ + String.fromCharCode(param1[_loc3_ >> 5] >>> _loc3_ % 32 & 255);
            _loc3_ = _loc3_ + 8;
         }
         return _loc2_;
      }
      
      public static function binl_md5(param1:Array, param2:Number) : Array
      {
         var _loc11_:* = NaN;
         var _loc8_:* = NaN;
         var _loc6_:* = NaN;
         var _loc5_:* = NaN;
         var _loc3_:* = NaN;
         var _loc12_:* = param2 >> 5;
         var _loc13_:* = param1[_loc12_] | 128 << param2 % 32;
         param1[_loc12_] = _loc13_;
         param1[(param2 + 64 >>> 9 << 4) + 14] = param2;
         var _loc10_:* = 1.732584193E9;
         var _loc7_:* = -2.71733879E8;
         var _loc9_:* = -1.732584194E9;
         var _loc4_:* = 2.71733878E8;
         _loc11_ = 0.0;
         while(_loc11_ < param1.length)
         {
            _loc8_ = _loc10_;
            _loc6_ = _loc7_;
            _loc5_ = _loc9_;
            _loc3_ = _loc4_;
            _loc10_ = md5_ff(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 0],7,-680876936);
            _loc4_ = md5_ff(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 1],12,-389564586);
            _loc9_ = md5_ff(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 2],17,606105819);
            _loc7_ = md5_ff(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 3],22,-1044525330);
            _loc10_ = md5_ff(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 4],7,-176418897);
            _loc4_ = md5_ff(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 5],12,1200080426);
            _loc9_ = md5_ff(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 6],17,-1473231341);
            _loc7_ = md5_ff(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 7],22,-45705983);
            _loc10_ = md5_ff(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 8],7,1770035416);
            _loc4_ = md5_ff(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 9],12,-1958414417);
            _loc9_ = md5_ff(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 10],17,-42063);
            _loc7_ = md5_ff(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 11],22,-1990404162);
            _loc10_ = md5_ff(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 12],7,1804603682);
            _loc4_ = md5_ff(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 13],12,-40341101);
            _loc9_ = md5_ff(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 14],17,-1502002290);
            _loc7_ = md5_ff(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 15],22,1236535329);
            _loc10_ = md5_gg(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 1],5,-165796510);
            _loc4_ = md5_gg(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 6],9,-1069501632);
            _loc9_ = md5_gg(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 11],14,643717713);
            _loc7_ = md5_gg(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 0],20,-373897302);
            _loc10_ = md5_gg(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 5],5,-701558691);
            _loc4_ = md5_gg(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 10],9,38016083);
            _loc9_ = md5_gg(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 15],14,-660478335);
            _loc7_ = md5_gg(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 4],20,-405537848);
            _loc10_ = md5_gg(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 9],5,568446438);
            _loc4_ = md5_gg(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 14],9,-1019803690);
            _loc9_ = md5_gg(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 3],14,-187363961);
            _loc7_ = md5_gg(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 8],20,1163531501);
            _loc10_ = md5_gg(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 13],5,-1444681467);
            _loc4_ = md5_gg(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 2],9,-51403784);
            _loc9_ = md5_gg(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 7],14,1735328473);
            _loc7_ = md5_gg(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 12],20,-1926607734);
            _loc10_ = md5_hh(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 5],4,-378558);
            _loc4_ = md5_hh(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 8],11,-2022574463);
            _loc9_ = md5_hh(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 11],16,1839030562);
            _loc7_ = md5_hh(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 14],23,-35309556);
            _loc10_ = md5_hh(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 1],4,-1530992060);
            _loc4_ = md5_hh(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 4],11,1272893353);
            _loc9_ = md5_hh(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 7],16,-155497632);
            _loc7_ = md5_hh(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 10],23,-1094730640);
            _loc10_ = md5_hh(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 13],4,681279174);
            _loc4_ = md5_hh(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 0],11,-358537222);
            _loc9_ = md5_hh(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 3],16,-722521979);
            _loc7_ = md5_hh(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 6],23,76029189);
            _loc10_ = md5_hh(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 9],4,-640364487);
            _loc4_ = md5_hh(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 12],11,-421815835);
            _loc9_ = md5_hh(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 15],16,530742520);
            _loc7_ = md5_hh(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 2],23,-995338651);
            _loc10_ = md5_ii(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 0],6,-198630844);
            _loc4_ = md5_ii(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 7],10,1126891415);
            _loc9_ = md5_ii(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 14],15,-1416354905);
            _loc7_ = md5_ii(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 5],21,-57434055);
            _loc10_ = md5_ii(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 12],6,1700485571);
            _loc4_ = md5_ii(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 3],10,-1894986606);
            _loc9_ = md5_ii(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 10],15,-1051523);
            _loc7_ = md5_ii(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 1],21,-2054922799);
            _loc10_ = md5_ii(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 8],6,1873313359);
            _loc4_ = md5_ii(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 15],10,-30611744);
            _loc9_ = md5_ii(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 6],15,-1560198380);
            _loc7_ = md5_ii(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 13],21,1309151649);
            _loc10_ = md5_ii(_loc10_,_loc7_,_loc9_,_loc4_,param1[_loc11_ + 4],6,-145523070);
            _loc4_ = md5_ii(_loc4_,_loc10_,_loc7_,_loc9_,param1[_loc11_ + 11],10,-1120210379);
            _loc9_ = md5_ii(_loc9_,_loc4_,_loc10_,_loc7_,param1[_loc11_ + 2],15,718787259);
            _loc7_ = md5_ii(_loc7_,_loc9_,_loc4_,_loc10_,param1[_loc11_ + 9],21,-343485551);
            _loc10_ = safe_add(_loc10_,_loc8_);
            _loc7_ = safe_add(_loc7_,_loc6_);
            _loc9_ = safe_add(_loc9_,_loc5_);
            _loc4_ = safe_add(_loc4_,_loc3_);
            _loc11_ = _loc11_ + 16;
         }
         return [_loc10_,_loc7_,_loc9_,_loc4_];
      }
      
      public static function md5_cmn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Number
      {
         return safe_add(bit_rol(safe_add(safe_add(param2,param1),safe_add(param4,param6)),param5),param3);
      }
      
      public static function md5_ff(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return md5_cmn(param2 & param3 | ~param2 & param4,param1,param2,param5,param6,param7);
      }
      
      public static function md5_gg(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return md5_cmn(param2 & param4 | param3 & ~param4,param1,param2,param5,param6,param7);
      }
      
      public static function md5_hh(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return md5_cmn(param2 ^ param3 ^ param4,param1,param2,param5,param6,param7);
      }
      
      public static function md5_ii(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return md5_cmn(param3 ^ (param2 | ~param4),param1,param2,param5,param6,param7);
      }
      
      public static function safe_add(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = (param1 & 65535) + (param2 & 65535);
         var _loc4_:Number = (param1 >> 16) + (param2 >> 16) + (_loc3_ >> 16);
         return _loc4_ << 16 | _loc3_ & 65535;
      }
      
      public static function bit_rol(param1:Number, param2:Number) : Number
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
   }
}
