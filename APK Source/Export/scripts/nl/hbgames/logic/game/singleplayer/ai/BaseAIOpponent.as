package nl.hbgames.logic.game.singleplayer.ai
{
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.data.Glossary;
   import nl.hbgames.solver.WordScore;
   
   public class BaseAIOpponent extends Object
   {
       
      protected var theMinSimulatedDelayTime:uint = 3000;
      
      protected var theMaxSimulatedDelayTime:uint = 4000;
      
      private var theName:String;
      
      private var theID:String;
      
      private var theResultCallback:Function;
      
      private var theRack:Array;
      
      private var theWordOns:Array;
      
      private var theGridLayout:Array;
      
      private var theLanguage:String;
      
      public function BaseAIOpponent(param1:String, param2:String)
      {
         super();
         theName = param2;
         theID = param1;
      }
      
      public function get name() : String
      {
         return theName;
      }
      
      public function get id() : String
      {
         return theID;
      }
      
      public function get minSimulatedDelayTime() : uint
      {
         return theMinSimulatedDelayTime;
      }
      
      public function get maxSimulatedDelayTime() : uint
      {
         return theMaxSimulatedDelayTime;
      }
      
      public function handleTurn(param1:Function, param2:String, param3:Array, param4:Array, param5:Array) : void
      {
         theRack = param3 != null?param3.concat():[];
         theWordOns = param4 != null?param4.concat():[];
         theLanguage = param2;
         theGridLayout = param5.concat();
         theResultCallback = param1;
         buildWordList();
      }
      
      protected function buildWordList() : void
      {
         var _loc3_:Array = theWordOns.concat(theRack);
         WordParser.CleanForScore(_loc3_);
         var _loc4_:Vector.<String> = Glossary.Instance.GetAllPossibleWords(theLanguage,_loc3_);
         var _loc1_:Array = [];
         WordParser.CleanForScore(theWordOns);
         var _loc2_:Vector.<WordScore> = Glossary.Instance.GetBestWordList(_loc4_,theRack,theWordOns,theGridLayout);
         if(_loc2_ != null && _loc2_.length > 0)
         {
            pickWord(_loc2_);
         }
         else
         {
            processResult(null);
         }
      }
      
      protected function pickWord(param1:Vector.<WordScore>) : void
      {
         processResult(null);
      }
      
      protected function processResult(param1:WordScore) : void
      {
         theResultCallback(param1 != null?param1.FormattedWord.concat():null);
         theRack = null;
         theWordOns = null;
         theLanguage = null;
         theGridLayout = null;
         theResultCallback = null;
      }
      
      public function dispose() : void
      {
         theName = null;
         theID = null;
         theRack = null;
         theWordOns = null;
         theLanguage = null;
         theGridLayout = null;
      }
   }
}
