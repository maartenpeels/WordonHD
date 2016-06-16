package nl.hbgames.data
{
   import flash.utils.Dictionary;
   
   public class LetterDictionary extends Object
   {
      
      private static var LETTER_LIST:Dictionary;
      
      public static var SYMBOLS:Vector.<String>;
      
      public static var VALUES:Vector.<int>;
       
      public function LetterDictionary()
      {
         var _loc2_:* = null;
         super();
         LETTER_LIST = new Dictionary();
         var _loc1_:String = "#";
         _loc2_ = "nl";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"C",5);
         SetValue(_loc2_,"D",2);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"F",4);
         SetValue(_loc2_,"G",3);
         SetValue(_loc2_,"H",4);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"J",4);
         SetValue(_loc2_,"K",3);
         SetValue(_loc2_,"L",3);
         SetValue(_loc2_,"M",3);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"O",1);
         SetValue(_loc2_,"P",3);
         SetValue(_loc2_,"Q",10);
         SetValue(_loc2_,"R",2);
         SetValue(_loc2_,"S",2);
         SetValue(_loc2_,"T",2);
         SetValue(_loc2_,"U",4);
         SetValue(_loc2_,"V",4);
         SetValue(_loc2_,"W",5);
         SetValue(_loc2_,"X",8);
         SetValue(_loc2_,"Y",8);
         SetValue(_loc2_,"Z",4);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "en";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"C",3);
         SetValue(_loc2_,"D",2);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"F",4);
         SetValue(_loc2_,"G",2);
         SetValue(_loc2_,"H",4);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"J",8);
         SetValue(_loc2_,"K",5);
         SetValue(_loc2_,"L",1);
         SetValue(_loc2_,"M",3);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"O",1);
         SetValue(_loc2_,"P",3);
         SetValue(_loc2_,"Q",10);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"S",1);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"U",1);
         SetValue(_loc2_,"V",4);
         SetValue(_loc2_,"W",4);
         SetValue(_loc2_,"X",8);
         SetValue(_loc2_,"Y",4);
         SetValue(_loc2_,"Z",10);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "de";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"Ä",6);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"C",4);
         SetValue(_loc2_,"D",1);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"F",4);
         SetValue(_loc2_,"G",2);
         SetValue(_loc2_,"H",2);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"J",6);
         SetValue(_loc2_,"K",4);
         SetValue(_loc2_,"L",2);
         SetValue(_loc2_,"M",3);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"O",2);
         SetValue(_loc2_,"Ö",8);
         SetValue(_loc2_,"P",4);
         SetValue(_loc2_,"Q",10);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"S",1);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"U",1);
         SetValue(_loc2_,"Ü",6);
         SetValue(_loc2_,"V",6);
         SetValue(_loc2_,"W",3);
         SetValue(_loc2_,"X",8);
         SetValue(_loc2_,"Y",10);
         SetValue(_loc2_,"Z",3);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "fr";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"C",3);
         SetValue(_loc2_,"D",2);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"F",4);
         SetValue(_loc2_,"G",2);
         SetValue(_loc2_,"H",4);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"J",8);
         SetValue(_loc2_,"K",10);
         SetValue(_loc2_,"L",1);
         SetValue(_loc2_,"M",2);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"O",1);
         SetValue(_loc2_,"P",3);
         SetValue(_loc2_,"Q",8);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"S",1);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"U",1);
         SetValue(_loc2_,"V",4);
         SetValue(_loc2_,"W",10);
         SetValue(_loc2_,"X",10);
         SetValue(_loc2_,"Y",10);
         SetValue(_loc2_,"Z",10);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "es";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"C",3);
         SetValue(_loc2_,"CH",5);
         SetValue(_loc2_,"D",2);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"F",4);
         SetValue(_loc2_,"G",2);
         SetValue(_loc2_,"H",4);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"J",8);
         SetValue(_loc2_,"L",1);
         SetValue(_loc2_,"LL",8);
         SetValue(_loc2_,"M",3);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"Ñ",8);
         SetValue(_loc2_,"O",1);
         SetValue(_loc2_,"P",3);
         SetValue(_loc2_,"Q",5);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"RR",8);
         SetValue(_loc2_,"S",1);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"U",1);
         SetValue(_loc2_,"V",4);
         SetValue(_loc2_,"X",8);
         SetValue(_loc2_,"Y",4);
         SetValue(_loc2_,"Z",10);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "it";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"B",5);
         SetValue(_loc2_,"C",2);
         SetValue(_loc2_,"D",5);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"F",5);
         SetValue(_loc2_,"G",8);
         SetValue(_loc2_,"H",8);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"L",3);
         SetValue(_loc2_,"M",3);
         SetValue(_loc2_,"N",3);
         SetValue(_loc2_,"O",1);
         SetValue(_loc2_,"P",5);
         SetValue(_loc2_,"Q",10);
         SetValue(_loc2_,"R",2);
         SetValue(_loc2_,"S",2);
         SetValue(_loc2_,"T",2);
         SetValue(_loc2_,"U",3);
         SetValue(_loc2_,"V",5);
         SetValue(_loc2_,"Z",8);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "sv";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"Å",4);
         SetValue(_loc2_,"Ä",3);
         SetValue(_loc2_,"B",4);
         SetValue(_loc2_,"C",8);
         SetValue(_loc2_,"D",1);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"F",3);
         SetValue(_loc2_,"G",2);
         SetValue(_loc2_,"H",2);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"J",5);
         SetValue(_loc2_,"K",2);
         SetValue(_loc2_,"L",1);
         SetValue(_loc2_,"M",2);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"O",2);
         SetValue(_loc2_,"Ö",4);
         SetValue(_loc2_,"P",4);
         SetValue(_loc2_,"Q",0);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"S",1);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"U",3);
         SetValue(_loc2_,"Ü",0);
         SetValue(_loc2_,"V",3);
         SetValue(_loc2_,"W",0);
         SetValue(_loc2_,"X",8);
         SetValue(_loc2_,"Y",7);
         SetValue(_loc2_,"Z",8);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "dk";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"Å",4);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"C",8);
         SetValue(_loc2_,"D",2);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"Æ",4);
         SetValue(_loc2_,"F",3);
         SetValue(_loc2_,"G",3);
         SetValue(_loc2_,"H",4);
         SetValue(_loc2_,"I",3);
         SetValue(_loc2_,"J",4);
         SetValue(_loc2_,"K",3);
         SetValue(_loc2_,"L",2);
         SetValue(_loc2_,"M",3);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"O",2);
         SetValue(_loc2_,"Ø",4);
         SetValue(_loc2_,"P",4);
         SetValue(_loc2_,"Q",0);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"S",2);
         SetValue(_loc2_,"T",2);
         SetValue(_loc2_,"U",3);
         SetValue(_loc2_,"Ü",0);
         SetValue(_loc2_,"V",3);
         SetValue(_loc2_,"W",0);
         SetValue(_loc2_,"X",8);
         SetValue(_loc2_,"Y",4);
         SetValue(_loc2_,"Z",8);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "no";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"Å",4);
         SetValue(_loc2_,"B",4);
         SetValue(_loc2_,"C",10);
         SetValue(_loc2_,"D",1);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"Æ",6);
         SetValue(_loc2_,"F",2);
         SetValue(_loc2_,"G",2);
         SetValue(_loc2_,"H",3);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"J",4);
         SetValue(_loc2_,"K",2);
         SetValue(_loc2_,"L",1);
         SetValue(_loc2_,"M",2);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"O",2);
         SetValue(_loc2_,"Ø",5);
         SetValue(_loc2_,"P",4);
         SetValue(_loc2_,"Q",0);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"S",2);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"U",4);
         SetValue(_loc2_,"Ü",0);
         SetValue(_loc2_,"V",4);
         SetValue(_loc2_,"W",8);
         SetValue(_loc2_,"X",0);
         SetValue(_loc2_,"Y",6);
         SetValue(_loc2_,"Z",0);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "cs";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"Á",2);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"C",2);
         SetValue(_loc2_,"Č",4);
         SetValue(_loc2_,"D",1);
         SetValue(_loc2_,"Ď",8);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"É",3);
         SetValue(_loc2_,"Ě",3);
         SetValue(_loc2_,"F",5);
         SetValue(_loc2_,"G",5);
         SetValue(_loc2_,"H",2);
         SetValue(_loc2_,"I",1);
         SetValue(_loc2_,"Í",2);
         SetValue(_loc2_,"J",2);
         SetValue(_loc2_,"K",1);
         SetValue(_loc2_,"L",1);
         SetValue(_loc2_,"M",2);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"Ň",6);
         SetValue(_loc2_,"O",1);
         SetValue(_loc2_,"Ó",7);
         SetValue(_loc2_,"P",1);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"Ř",4);
         SetValue(_loc2_,"S",1);
         SetValue(_loc2_,"Š",4);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"Ť",7);
         SetValue(_loc2_,"U",2);
         SetValue(_loc2_,"Ů",4);
         SetValue(_loc2_,"Ú",5);
         SetValue(_loc2_,"V",1);
         SetValue(_loc2_,"X",10);
         SetValue(_loc2_,"Y",2);
         SetValue(_loc2_,"Ý",4);
         SetValue(_loc2_,"Z",2);
         SetValue(_loc2_,"Ž",4);
         SetValue(_loc2_,_loc1_,0);
         _loc2_ = "tr";
         SetValue(_loc2_,"A",1);
         SetValue(_loc2_,"E",1);
         SetValue(_loc2_,"İ",1);
         SetValue(_loc2_,"K",1);
         SetValue(_loc2_,"L",1);
         SetValue(_loc2_,"R",1);
         SetValue(_loc2_,"N",1);
         SetValue(_loc2_,"T",1);
         SetValue(_loc2_,"I",2);
         SetValue(_loc2_,"M",2);
         SetValue(_loc2_,"O",2);
         SetValue(_loc2_,"S",2);
         SetValue(_loc2_,"U",2);
         SetValue(_loc2_,"B",3);
         SetValue(_loc2_,"D",3);
         SetValue(_loc2_,"Y",3);
         SetValue(_loc2_,"Ü",3);
         SetValue(_loc2_,"C",4);
         SetValue(_loc2_,"Ş",4);
         SetValue(_loc2_,"Z",4);
         SetValue(_loc2_,"Ç",4);
         SetValue(_loc2_,"H",5);
         SetValue(_loc2_,"P",5);
         SetValue(_loc2_,"G",5);
         SetValue(_loc2_,"F",7);
         SetValue(_loc2_,"V",7);
         SetValue(_loc2_,"Ö",7);
         SetValue(_loc2_,"Ğ",8);
         SetValue(_loc2_,"J",10);
         SetValue(_loc2_,_loc1_,0);
      }
      
      private static function SetValue(param1:String, param2:String, param3:int) : void
      {
         if(LETTER_LIST[param1] == undefined)
         {
            LETTER_LIST[param1] = new Dictionary();
         }
         LETTER_LIST[param1][param2] = param3;
      }
      
      public static function GetValue(param1:String, param2:String) : int
      {
         if(LETTER_LIST[param1] != undefined && LETTER_LIST[param1][param2] != undefined)
         {
            return LETTER_LIST[param1][param2];
         }
         return 0;
      }
      
      public static function GetLettersInLanguage(param1:String) : Dictionary
      {
         if(LETTER_LIST[param1] != undefined)
         {
            return LETTER_LIST[param1];
         }
         return null;
      }
      
      public static function InitVectors(param1:String) : void
      {
         var _loc2_:* = null;
         SYMBOLS = new Vector.<String>();
         VALUES = new Vector.<int>();
         if(LETTER_LIST[param1] != undefined)
         {
            _loc2_ = LETTER_LIST[param1];
            var _loc5_:* = 0;
            var _loc4_:* = _loc2_;
            for(var _loc3_ in _loc2_)
            {
               if(_loc3_ != "#")
               {
                  SYMBOLS.push(_loc3_);
                  VALUES.push(_loc2_[_loc3_]);
               }
            }
            SortVectors();
         }
         SYMBOLS.fixed = true;
         VALUES.fixed = true;
      }
      
      private static function SortVectors() : void
      {
         var _loc6_:* = null;
         var _loc3_:* = 0;
         var _loc12_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:* = 0;
         var _loc8_:* = false;
         var _loc11_:* = false;
         var _loc10_:* = 0;
         var _loc5_:* = 0;
         var _loc7_:* = 0;
         var _loc4_:uint = SYMBOLS.length;
         var _loc2_:* = true;
         _loc12_ = 0;
         while(_loc12_ < _loc4_)
         {
            if(_loc2_)
            {
               _loc2_ = false;
               _loc9_ = 0;
               while(_loc9_ < _loc4_ - _loc12_ - 1)
               {
                  _loc1_ = SYMBOLS[_loc9_].length > SYMBOLS[_loc9_ + 1].length?SYMBOLS[_loc9_ + 1].length:SYMBOLS[_loc9_].length;
                  _loc8_ = false;
                  _loc11_ = false;
                  _loc10_ = 0;
                  while(_loc10_ < _loc1_)
                  {
                     _loc5_ = SYMBOLS[_loc9_].charCodeAt(_loc10_);
                     _loc7_ = SYMBOLS[_loc9_ + 1].charCodeAt(_loc10_);
                     if(_loc5_ == _loc7_)
                     {
                        _loc11_ = true;
                     }
                     else if(_loc5_ > _loc7_)
                     {
                        _loc8_ = true;
                        break;
                     }
                     _loc10_++;
                  }
                  if(_loc11_ && SYMBOLS[_loc9_].length > SYMBOLS[_loc9_ + 1].length)
                  {
                     _loc8_ = true;
                  }
                  if(_loc8_)
                  {
                     _loc2_ = true;
                     _loc6_ = SYMBOLS[_loc9_];
                     SYMBOLS[_loc9_] = SYMBOLS[_loc9_ + 1];
                     SYMBOLS[_loc9_ + 1] = _loc6_;
                     _loc3_ = VALUES[_loc9_];
                     VALUES[_loc9_] = VALUES[_loc9_ + 1];
                     VALUES[_loc9_ + 1] = _loc3_;
                  }
                  _loc9_++;
               }
               _loc12_++;
               continue;
            }
            break;
         }
      }
      
      public static function DetermineIndices(param1:String, param2:Vector.<int>) : Vector.<int>
      {
         var _loc7_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         param2.fixed = false;
         param2.length = 0;
         var _loc6_:int = param1.length;
         _loc7_ = 0;
         while(_loc7_ < _loc6_)
         {
            _loc4_ = param1.charAt(_loc7_);
            if(_loc4_ == "(")
            {
               _loc5_ = param1.indexOf(")",_loc7_);
               _loc3_ = param1.substring(_loc7_ + 1,_loc5_);
               _loc7_ = _loc5_;
            }
            else
            {
               _loc3_ = _loc4_;
            }
            param2.push(SYMBOLS.indexOf(_loc3_));
            _loc7_++;
         }
         param2.fixed = true;
         return param2;
      }
      
      public function Dispose() : void
      {
         var _loc3_:* = null;
         var _loc7_:* = 0;
         var _loc6_:* = LETTER_LIST;
         for(var _loc2_ in LETTER_LIST)
         {
            _loc3_ = LETTER_LIST[_loc2_];
            var _loc5_:* = 0;
            var _loc4_:* = _loc3_;
            for(var _loc1_ in _loc3_)
            {
               delete _loc3_[_loc1_];
               _loc3_[_loc1_] = null;
            }
            delete LETTER_LIST[_loc2_];
            LETTER_LIST[_loc2_] = null;
         }
         SYMBOLS = null;
         VALUES = null;
         LETTER_LIST = null;
      }
   }
}
