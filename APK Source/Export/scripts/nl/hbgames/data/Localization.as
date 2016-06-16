package nl.hbgames.data
{
   import flash.utils.Dictionary;
   import nl.hbgames.utils.Debugger;
   
   public class Localization extends Object
   {
      
      public static const LANG_ENGLISH:String = "en";
      
      public static const LANG_GERMAN:String = "de";
      
      public static const LANG_FRENCH:String = "fr";
      
      public static const LANG_SPANISH:String = "es";
      
      public static const LANG_ITALIAN:String = "it";
      
      public static const LANG_SWEDISH:String = "sv";
      
      public static const LANG_NORWEGIAN:String = "no";
      
      public static const LANG_DANISH:String = "dk";
      
      public static const LANG_DUTCH:String = "nl";
      
      public static const LANG_CZECH:String = "cs";
      
      public static const LANG_TURKISH:String = "tr";
      
      public static const LANGUAGES:Array = [{
         "key":"en",
         "language":"English (US)",
         "hasTranslation":true
      },{
         "key":"de",
         "language":"Deutsch",
         "hasTranslation":true
      },{
         "key":"fr",
         "language":"Français",
         "hasTranslation":true
      },{
         "key":"it",
         "language":"Italiano",
         "hasTranslation":true
      },{
         "key":"es",
         "language":"Español",
         "hasTranslation":true
      },{
         "key":"sv",
         "language":"Svenska",
         "hasTranslation":false
      },{
         "key":"no",
         "language":"Norsk",
         "hasTranslation":false
      },{
         "key":"nl",
         "language":"Nederlands",
         "hasTranslation":true
      }];
      
      private static var _Data:Dictionary = new Dictionary();
      
      private static var _Language:String = "en";
      
      private static var _TextGerman:Class = §wordon_de_xml$9cea2b094bb9fa5f61747b886f8f111c-719848306§;
      
      private static var _TextEnglish:Class = §wordon_en_xml$f4b95727c8689f4a74a79bd2c4b47509-607893338§;
      
      private static var _TextSpanish:Class = §wordon_es_xml$7c9652df09a166e410f6dbaeb9ece505-610411207§;
      
      private static var _TextFrench:Class = §wordon_fr_xml$c56d5fa67e5e850e36f447132ea1110b-650731941§;
      
      private static var _TextItalian:Class = §wordon_it_xml$66617347908adb152b602d26d06c3196-587442396§;
      
      private static var _TextDutch:Class = §wordon_nl_xml$9c8055b02bd60cfd9fff293f9358c836-461056439§;
       
      public function Localization()
      {
         super();
         SetLanguage(AppData.Instance.ApplicationLanguage);
      }
      
      public static function get ActiveLanguage() : String
      {
         return _Language;
      }
      
      public static function GetLanguageID(param1:String, param2:Boolean = false) : int
      {
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         _loc4_ = 0;
         while(_loc4_ < LANGUAGES.length)
         {
            if(LANGUAGES[_loc4_].key == param1)
            {
               if(!param2)
               {
                  return _loc4_;
               }
               return _loc4_ - _loc3_;
            }
            if(!LANGUAGES[_loc4_].hasTranslation)
            {
               _loc3_++;
            }
            _loc4_++;
         }
         return 0;
      }
      
      public static function GetLanguageDescription(param1:String) : String
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < LANGUAGES.length)
         {
            if(LANGUAGES[_loc2_].key == param1)
            {
               return LANGUAGES[_loc2_].language;
            }
            _loc2_++;
         }
         return "";
      }
      
      public static function SetLanguage(param1:String = "en") : void
      {
         var _loc2_:* = null;
         Debugger.Instance.Write("[Localization::SetLanguage] Switching application language to " + param1.toUpperCase());
         _Language = param1;
         _Data = new Dictionary();
         var _loc3_:* = param1;
         if("en" !== _loc3_)
         {
            if("nl" !== _loc3_)
            {
               if("fr" !== _loc3_)
               {
                  if("de" !== _loc3_)
                  {
                     if("it" !== _loc3_)
                     {
                        if("es" !== _loc3_)
                        {
                           _loc2_ = _TextEnglish;
                        }
                        else
                        {
                           _loc2_ = _TextSpanish;
                        }
                     }
                     else
                     {
                        _loc2_ = _TextItalian;
                     }
                  }
                  else
                  {
                     _loc2_ = _TextGerman;
                  }
               }
               else
               {
                  _loc2_ = _TextFrench;
               }
            }
            else
            {
               _loc2_ = _TextDutch;
            }
         }
         else
         {
            _loc2_ = _TextEnglish;
         }
         Process(param1,new XML(new _loc2_()));
      }
      
      public static function Process(param1:String, param2:XML) : void
      {
         var _loc5_:* = null;
         var _loc4_:XMLList = param2.*;
         var _loc7_:* = 0;
         var _loc6_:* = _loc4_;
         for each(var _loc3_ in _loc4_)
         {
            _loc5_ = param1 + "_" + _loc3_.@name;
            _Data[_loc5_] = _loc3_.toString();
         }
      }
      
      public static function Get(param1:String, ... rest) : String
      {
         var _loc4_:* = 0;
         var param1:String = _Language + "_" + param1;
         var _loc3_:String = _Data[param1];
         if(_Data != null && _loc3_ != null)
         {
            if(rest != null && rest.length > 0)
            {
               _loc4_ = 0;
               while(_loc4_ < rest.length)
               {
                  _loc3_ = _loc3_.replace("{" + _loc4_ + "}",rest[_loc4_]);
                  _loc4_++;
               }
            }
            _loc3_ = _loc3_.replace(new RegExp("[\\^]","g"),"\n");
            return _loc3_;
         }
         return "!" + param1;
      }
      
      public static function CheckAvailableLanguages(param1:String, param2:Boolean = false) : String
      {
         var _loc3_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < LANGUAGES.length)
         {
            if(LANGUAGES[_loc3_].key == param1)
            {
               if(!param2)
               {
                  return param1;
               }
               if(LANGUAGES[_loc3_].hasTranslation)
               {
                  return param1;
               }
            }
            _loc3_++;
         }
         return "en";
      }
      
      public function Dispose() : void
      {
         _Data = null;
         _Language = null;
      }
   }
}
