package nl.hbgames.utils
{
   public class WordParser extends Object
   {
      
      public static const BLANK_TAG:String = "#";
      
      public static const BONUS_TAG:String = "!";
      
      public static const COMBINED_TAG:String = "^";
      
      public static const MULTI_START_TAG:String = "(";
      
      public static const MULTI_END_TAG:String = ")";
       
      public function WordParser()
      {
         super();
      }
      
      public static function CleanForScore(param1:Array) : void
      {
         ReplaceTag(param1,"#","#",0,2);
         RemoveTag(param1,"!");
         ReplaceTag(param1,"^","#",0,2);
      }
      
      public static function RemoveTags(param1:Array) : void
      {
         RemoveTag(param1,"#");
         RemoveTag(param1,"!");
         RemoveTag(param1,"^");
         RemoveTag(param1,"(");
         RemoveTag(param1,")");
      }
      
      public static function RemoveTagsFromString(param1:String, param2:Boolean = true) : String
      {
         if(param2)
         {
            var param1:String = param1.split(",").join("");
         }
         var _loc3_:RegExp = new RegExp("\\#|\\!|\\^|\\(|\\)","g");
         param1 = param1.replace(_loc3_,"");
         return param1;
      }
      
      private static function RemoveTag(param1:Array, param2:String, param3:int = 0, param4:int = 1) : void
      {
         ReplaceTag(param1,param2,"",param3,param4);
      }
      
      private static function ReplaceTag(param1:Array, param2:String, param3:String, param4:int = 0, param5:int = 1) : void
      {
         var _loc8_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         if(param1 == null)
         {
            Debugger.Instance.Write("[WordParser::ReplaceTag] Empty word array specified!",true);
            var param1:Array = [];
         }
         _loc8_ = 0;
         while(_loc8_ < param1.length)
         {
            _loc6_ = param1[_loc8_];
            _loc7_ = _loc6_.indexOf(param2);
            if(_loc7_ != -1)
            {
               _loc6_ = _loc6_.substr(0,_loc7_) + param3 + _loc6_.substr(_loc7_ + param4 + param5);
               param1[_loc8_] = _loc6_;
            }
            _loc8_++;
         }
      }
   }
}
