package nl.hbgames.solver
{
   import nl.hbgames.utils.Random;
   import nl.hbgames.utils.WordParser;
   
   public class WordScore extends Object
   {
       
      private var _DictIndex:int;
      
      private var _Word:Array;
      
      private var _FormattedWord:Array;
      
      private var _Score:int;
      
      private var _UsedHintIndices:Array;
      
      private var _HintHistory:Array;
      
      private var _HintsRequested:uint = 0;
      
      private var _MaxHintRequests:uint = 0;
      
      public function WordScore(param1:int, param2:String, param3:int, param4:Vector.<String>)
      {
         var _loc9_:* = 0;
         var _loc5_:* = null;
         super();
         _DictIndex = param1;
         _Score = param3;
         _Word = [];
         _FormattedWord = [];
         _UsedHintIndices = [];
         _HintsRequested = 0;
         _HintHistory = [];
         var _loc7_:* = false;
         var _loc6_:String = "";
         var _loc8_:String = "";
         _loc9_ = 0;
         while(_loc9_ < param2.length)
         {
            _loc6_ = param2.charAt(_loc9_);
            if(!_loc7_)
            {
               if(_loc6_ != "(")
               {
                  _Word.push(_loc6_);
               }
               else
               {
                  _loc7_ = true;
               }
            }
            else if(_loc6_ != ")")
            {
               _loc8_ = _loc8_ + _loc6_;
            }
            else
            {
               _Word.push("(" + _loc8_ + ")");
               _loc8_ = "";
               _loc7_ = false;
            }
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < _Word.length)
         {
            _loc5_ = _Word[_loc9_];
            _FormattedWord.push(_loc9_ < param4.length && param4[_loc9_] != null?param4[_loc9_] + _loc5_:_loc5_);
            _loc9_++;
         }
         _MaxHintRequests = _Word.length;
      }
      
      public function get DictIndex() : int
      {
         return _DictIndex;
      }
      
      public function get Word() : Array
      {
         return _Word;
      }
      
      public function get FormattedWord() : Array
      {
         return _FormattedWord;
      }
      
      public function get Score() : int
      {
         return _Score;
      }
      
      public function get HintsUsed() : uint
      {
         return _HintsRequested;
      }
      
      public function get MaxHints() : uint
      {
         return _MaxHintRequests;
      }
      
      public function get HintHistory() : Array
      {
         return _HintHistory;
      }
      
      public function GetHint() : Object
      {
         var _loc2_:* = null;
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         var _loc1_:Object = null;
         if(_HintsRequested < _MaxHintRequests)
         {
            _HintsRequested = _HintsRequested + 1;
            _loc2_ = [];
            _loc4_ = 0;
            while(_loc4_ < _Word.length)
            {
               if(_UsedHintIndices.indexOf(_loc4_) == -1)
               {
                  _loc2_.push(_loc4_);
               }
               _loc4_++;
            }
            _loc3_ = Random.pick(_loc2_);
            _UsedHintIndices.push(_loc3_);
            _loc1_ = {
               "index":_loc3_,
               "letter":WordParser.RemoveTagsFromString(_Word[_loc3_],false),
               "hintsLeft":_MaxHintRequests - _HintsRequested,
               "isBlank":false
            };
            _HintHistory.push(_loc1_);
         }
         return _loc1_;
      }
      
      public function FlagAsBlankHint(param1:int) : void
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _HintHistory.length)
         {
            if(_HintHistory[_loc2_].index == param1)
            {
               _HintHistory[_loc2_].isBlank = true;
               break;
            }
            _loc2_++;
         }
      }
      
      public function Dispose() : void
      {
         _DictIndex = 0;
         _Score = 0;
         _Word = null;
         _FormattedWord = null;
         _UsedHintIndices = null;
         _HintsRequested = 0;
         _HintHistory = null;
      }
   }
}
