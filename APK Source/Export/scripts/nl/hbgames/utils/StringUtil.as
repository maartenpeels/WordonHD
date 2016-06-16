package nl.hbgames.utils
{
   import nl.hbgames.data.Localization;
   
   public class StringUtil extends Object
   {
      
      public static const WHITESPACE:String = " \t\n\r";
       
      public function StringUtil()
      {
         super();
      }
      
      public static function Prefix(param1:String, param2:String, param3:uint) : String
      {
         if(param1.length >= param3)
         {
            return param1;
         }
         return Prefix(param2 + param1,param2,param3);
      }
      
      public static function Postfix(param1:String, param2:String, param3:uint) : String
      {
         if(param1.length >= param3)
         {
            return param1;
         }
         return Postfix(param1 + param2,param2,param3);
      }
      
      public static function Reverse(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = param1.length;
         while(_loc3_ > 0)
         {
            _loc2_ = _loc2_ + param1.substr(_loc3_ - 1,1);
            _loc3_--;
         }
         return _loc2_;
      }
      
      public static function DotInt(param1:int) : String
      {
         var _loc5_:* = 0;
         if(param1 > -999 && param1 < 999)
         {
            return param1.toString();
         }
         var _loc2_:int = param1 >= 0?1:-1.0;
         var param1:int = Math.abs(param1);
         var _loc4_:String = param1.toString();
         var _loc3_:Array = _loc4_.split("");
         _loc3_ = _loc3_.reverse();
         _loc4_ = "";
         _loc5_ = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc4_ + _loc3_[_loc5_];
            if(_loc5_ % 3 == 0 && _loc5_ > 0)
            {
               _loc4_ = _loc4_ + ".";
            }
            _loc5_--;
         }
         if(_loc2_ == -1)
         {
            _loc4_ = "-" + _loc4_;
         }
         return _loc4_;
      }
      
      public static function IsUpperCase(param1:String) : Boolean
      {
         if(param1 != param1.toUpperCase())
         {
            return false;
         }
         return true;
      }
      
      public static function IsLowerCase(param1:String) : Boolean
      {
         if(param1 != param1.toLowerCase())
         {
            return false;
         }
         return true;
      }
      
      public static function IsNumber(param1:String) : Boolean
      {
         var _loc2_:String = StringUtil.Trim(param1);
         if(_loc2_.length < param1.length || param1.length == 0)
         {
            return false;
         }
         return !isNaN(param1);
      }
      
      public static function NumbersFromString(param1:String) : String
      {
         var _loc2_:RegExp = new RegExp("[^0-9]","g");
         return param1.replace(_loc2_,"");
      }
      
      public static function TrimLeft(param1:String, param2:String = " \t\n\r") : String
      {
         var _loc3_:RegExp = new RegExp("^[" + param2 + "]+","");
         return param1.replace(_loc3_,"");
      }
      
      public static function TrimRight(param1:String, param2:String = " \t\n\r") : String
      {
         var _loc3_:RegExp = new RegExp("[" + param2 + "]+$","");
         return param1.replace(_loc3_,"");
      }
      
      public static function Trim(param1:String, param2:String = " \t\n\r") : String
      {
         var _loc3_:RegExp = new RegExp("^[" + param2 + "]+|[" + param2 + "]+$","gs");
         return param1.replace(_loc3_,"");
      }
      
      public static function Replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function Count(param1:String, param2:String) : int
      {
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         _loc4_ = 0;
         while(_loc4_ < param1.length)
         {
            if(param1.charAt(_loc4_) == param2)
            {
               _loc3_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function ParseTimestamp(param1:String) : Date
      {
         var _loc5_:* = 0;
         var _loc4_:* = 0;
         var _loc2_:* = 0;
         var _loc7_:* = 0;
         var _loc6_:* = 0;
         var _loc3_:* = 0;
         if(param1.charAt(4) == "-")
         {
            _loc5_ = param1.substr(0,4);
            _loc4_ = param1.substr(5,2) - 1;
            _loc2_ = param1.substr(8,2);
         }
         else if(param1.charAt(2) == "-")
         {
            _loc2_ = param1.substr(0,2);
            _loc4_ = param1.substr(3,2) - 1;
            _loc5_ = param1.substr(6,4);
         }
         if(param1.length > 11)
         {
            _loc7_ = param1.substr(11,2);
            _loc6_ = param1.substr(14,2);
            _loc3_ = param1.substr(17,2);
         }
         return new Date(_loc5_,_loc4_,_loc2_,_loc7_,_loc6_,_loc3_);
      }
      
      public static function DescribeTime(param1:int, param2:Boolean = false) : String
      {
         var _loc3_:* = 0;
         if(param1 < 0)
         {
            var param1:* = 0;
         }
         var _loc4_:String = "";
         if(param1 < 60)
         {
            if(param1 == 1)
            {
               _loc4_ = param2?param1 + "m":param1 + " minute";
            }
            else
            {
               _loc4_ = param2?param1 + "m":param1 + " minutes";
            }
         }
         else
         {
            _loc3_ = param1 / 60;
            if(_loc3_ == 1)
            {
               _loc4_ = param2?_loc3_ + "h":_loc3_ + " hour";
            }
            else
            {
               _loc4_ = param2?_loc3_ + "h":_loc3_ + " hours";
            }
         }
         return _loc4_;
      }
      
      public static function LocalizedTime(param1:Number) : String
      {
         var _loc3_:int = Math.floor(param1 / 3600);
         var _loc2_:int = Math.floor(_loc3_ / 24);
         if(_loc2_ > 0)
         {
            if(_loc2_ > 1)
            {
               return Localization.Get("expire_days_left",_loc2_);
            }
            return Localization.Get("expire_day_left",_loc2_);
         }
         if(_loc3_ > 1)
         {
            return Localization.Get("expire_hours_left",_loc3_);
         }
         if(_loc3_ == 1)
         {
            return Localization.Get("expire_hour_left",_loc3_);
         }
         if(param1 > 0)
         {
            return Localization.Get("expire_hour_left","&#60;1");
         }
         return Localization.Get("expire_hour_left","0");
      }
      
      public static function FormatTime(param1:Number, param2:Boolean = false) : String
      {
         var _loc5_:* = NaN;
         if(param1 <= 0 || isNaN(param1))
         {
            return param2?"00:00:00":"00:00";
         }
         var _loc9_:Number = param1 / 3600;
         _loc5_ = _loc9_ - Math.floor(_loc9_);
         _loc9_ = Math.floor(_loc9_);
         var _loc7_:Number = _loc5_ * 60;
         _loc5_ = _loc7_ - Math.floor(_loc7_);
         _loc7_ = Math.floor(_loc7_);
         var _loc8_:Number = _loc5_ * 60;
         _loc5_ = _loc8_ - Math.floor(_loc8_);
         _loc8_ = Math.floor(_loc8_);
         var _loc3_:Number = _loc5_ * 100;
         _loc5_ = _loc3_ - Math.floor(_loc3_);
         _loc3_ = Math.floor(_loc3_);
         var _loc11_:String = _loc9_ < 10?"0" + _loc9_:"" + _loc9_;
         var _loc6_:String = _loc7_ < 10?"0" + _loc7_:"" + _loc7_;
         var _loc10_:String = _loc8_ < 10?"0" + _loc8_:"" + _loc8_;
         var _loc12_:String = _loc3_ < 10?"0" + _loc3_:"" + _loc3_;
         var _loc4_:String = _loc6_ + ":" + _loc10_;
         if(_loc9_ > 0)
         {
            _loc4_ = _loc11_ + ":" + _loc4_;
         }
         if(param2)
         {
            _loc4_ = _loc4_ + (":" + _loc12_);
         }
         return _loc4_;
      }
      
      public static function UTF8Decode(param1:String) : String
      {
         var _loc9_:* = null;
         var _loc4_:* = null;
         var _loc6_:* = 0;
         var _loc10_:* = 0;
         var _loc3_:* = null;
         var _loc2_:String = "";
         var _loc5_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:int = param1.length;
         while(true)
         {
            _loc5_ = param1.indexOf("\\",_loc7_);
            if(_loc5_ >= 0)
            {
               _loc2_ = _loc2_ + param1.substr(_loc7_,_loc5_ - _loc7_);
               _loc7_ = _loc5_ + 2;
               _loc9_ = param1.charAt(_loc5_ + 1);
               var _loc11_:* = _loc9_;
               if("\"" !== _loc11_)
               {
                  if("\\" !== _loc11_)
                  {
                     if("n" !== _loc11_)
                     {
                        if("r" !== _loc11_)
                        {
                           if("t" !== _loc11_)
                           {
                              if("u" !== _loc11_)
                              {
                                 if("f" !== _loc11_)
                                 {
                                    if("/" !== _loc11_)
                                    {
                                       if("b" !== _loc11_)
                                       {
                                          _loc2_ = _loc2_ + ("\\" + _loc9_);
                                       }
                                       else
                                       {
                                          _loc2_ = _loc2_ + "\b";
                                       }
                                    }
                                    else
                                    {
                                       _loc2_ = _loc2_ + "/";
                                    }
                                 }
                                 else
                                 {
                                    _loc2_ = _loc2_ + "\f";
                                 }
                              }
                              else
                              {
                                 _loc4_ = "";
                                 _loc6_ = _loc7_ + 4;
                                 if(_loc6_ > _loc8_)
                                 {
                                    ShowError("Unexpected end of input.  Expecting 4 hex digits after \\u.");
                                 }
                                 _loc10_ = _loc7_;
                                 while(_loc10_ < _loc6_)
                                 {
                                    _loc3_ = param1.charAt(_loc10_);
                                    if(!IsHexDigit(_loc3_))
                                    {
                                       ShowError("Excepted a hex digit, but found: " + _loc3_);
                                    }
                                    _loc4_ = _loc4_ + _loc3_;
                                    _loc10_++;
                                 }
                                 _loc2_ = _loc2_ + String.fromCharCode(parseInt(_loc4_,16));
                                 _loc7_ = _loc6_;
                              }
                           }
                           else
                           {
                              _loc2_ = _loc2_ + "\t";
                           }
                        }
                        else
                        {
                           _loc2_ = _loc2_ + "\r";
                        }
                     }
                     else
                     {
                        _loc2_ = _loc2_ + "\n";
                     }
                  }
                  else
                  {
                     _loc2_ = _loc2_ + _loc9_;
                  }
               }
               else
               {
                  _loc2_ = _loc2_ + _loc9_;
               }
               if(_loc7_ >= _loc8_)
               {
                  break;
               }
               continue;
            }
            _loc2_ = _loc2_ + param1.substr(_loc7_);
            break;
         }
         return _loc2_;
      }
      
      public static function ValueToCurrency(param1:Number, param2:Number = 2, param3:String = "$", param4:String = ".", param5:String = ",") : String
      {
         var _loc11_:* = 0;
         if(param1 == 0)
         {
            return param1.toString();
         }
         var _loc6_:* = param1 < 0;
         var param1:Number = Math.abs(param1);
         var _loc15_:String = param1.toFixed(param2);
         var _loc10_:Array = _loc15_.split(",");
         var _loc9_:String = _loc10_[0];
         var _loc7_:String = _loc10_[1];
         var _loc8_:String = "";
         var _loc13_:* = 0;
         _loc13_;
         while(_loc13_ < _loc9_.length)
         {
            if(_loc13_ > 0 && _loc13_ % 3 == 0)
            {
               _loc8_ = param4 + _loc8_;
            }
            _loc8_ = _loc9_.substr(-_loc13_ - 1,1) + _loc8_;
            _loc13_++;
         }
         var _loc12_:String = _loc7_;
         var _loc14_:int = param2 - _loc12_.length;
         if(_loc12_.length < param2)
         {
            _loc11_ = 0;
            while(_loc11_ < _loc14_)
            {
               _loc12_ = _loc12_ + "0";
               _loc11_++;
            }
         }
         var _loc16_:String = "";
         if(_loc6_)
         {
            _loc16_ = "-" + param3 + _loc8_;
         }
         else
         {
            _loc16_ = param3 + _loc8_;
         }
         if(param2 > 0)
         {
            _loc16_ = _loc16_ + (param5 + _loc12_);
         }
         return _loc16_;
      }
      
      private static function IsDigit(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private static function IsHexDigit(param1:String) : Boolean
      {
         return IsDigit(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      private static function ShowError(param1:String) : void
      {
         throw new Error(param1);
      }
   }
}
