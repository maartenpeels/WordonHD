package nl.hbgames.logic.game.singleplayer
{
   import flash.events.EventDispatcher;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.logic.game.singleplayer.ai.BaseAIOpponent;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.data.LetterDictionary;
   import nl.hbgames.utils.Random;
   import nl.hbgames.ui.panels.SneakPeekPanel;
   import flash.events.Event;
   import flash.utils.setTimeout;
   import flash.utils.clearInterval;
   
   public class AIGameHandler extends EventDispatcher
   {
      
      public static const EVENT_AI_STARTS_THINKING:String = "aiStartsThinking";
      
      public static const EVENT_AI_HAS_SOLUTION:String = "aiHasSolution";
      
      public static const EVENT_AI_HAS_PLAYED:String = "aiHasPlayed";
       
      private const BLOCKS_NEEDED_FOR_SWAP:uint = 2;
      
      private const MAX_PLAYER_LETTER_AMOUNT:uint = 7;
      
      private const MAX_GRID_SLOTS:uint = 7;
      
      private const MAX_WORDON_AMOUNT:uint = 2;
      
      private const MAX_HINTS:uint = 10;
      
      private const MAX_PASSES:uint = 2;
      
      private const GRID_LAYOUTS:Array = [[3,1,3,0,0,0,4],[0,3,0,3,2,0,4],[0,0,3,1,3,0,4],[2,0,0,3,0,3,4],[3,1,0,3,0,0,4],[0,3,2,0,3,0,4],[0,0,0,3,1,3,4],[0,3,3,0,0,2,4],[3,0,0,1,0,3,4],[2,3,0,0,3,0,4]];
      
      private var _SessionData:GameSessionData;
      
      private var _Callback:Function;
      
      private var _OpponentAI:BaseAIOpponent;
      
      private var _YourScore:int;
      
      private var _OtherScore:int;
      
      private var _HintsLeft:int;
      
      private var _Pile:Array;
      
      private var _YourLetters:Array;
      
      private var _YourGrid:Array;
      
      private var _YourGridID:int;
      
      private var _YourTilesetID:int = 0;
      
      private var _OtherLetters:Array;
      
      private var _OtherGrid:Array;
      
      private var _OtherTilesetID:int = 0;
      
      private var _OtherGridID:int;
      
      private var _WordOns:Array;
      
      private var _State:int;
      
      private var _ActivePlayerID:String;
      
      private var _StartPlayerID:String;
      
      private var _LastScore:int;
      
      private var _LastWord:Array;
      
      private var _LastGrid:Array;
      
      private var _PassAmount:int;
      
      private var _TurnAmount:int;
      
      private var _IsPileDepleted:Boolean;
      
      private var _CPUThinkTimeoutID:uint;
      
      private var _CPUAlmostDoneTimeoutID:uint;
      
      public function AIGameHandler(param1:BaseAIOpponent, param2:GameSessionData, param3:int = -1)
      {
         var _loc5_:* = 0;
         var _loc4_:* = null;
         super();
         _SessionData = param2;
         _OpponentAI = param1;
         _HintsLeft = 10;
         _State = 1;
         _ActivePlayerID = §§dup(Random.pick([_OpponentAI.id,_SessionData.You.ID]));
         _StartPlayerID = Random.pick([_OpponentAI.id,_SessionData.You.ID]);
         _YourTilesetID = param3;
         _OtherTilesetID = 0;
         _Pile = [];
         _YourLetters = [];
         _OtherLetters = [];
         _WordOns = [];
         _Pile = AIPileData.GetInitialPile(_SessionData.DictionaryLanguage);
         _loc5_ = 0;
         while(_loc5_ < 7)
         {
            _YourLetters.push(_Pile.shift());
            _OtherLetters.push(_Pile.shift());
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < 2)
         {
            _loc4_ = _Pile.shift();
            _WordOns.push(_loc4_ != "#"?"!" + _loc4_:"^");
            _loc5_++;
         }
         if(_StartPlayerID == _SessionData.You.ID)
         {
            _YourGridID = 0;
            _OtherGridID = GRID_LAYOUTS[GRID_LAYOUTS.length - 1];
         }
         else
         {
            _YourGridID = GRID_LAYOUTS[GRID_LAYOUTS.length - 1];
            _OtherGridID = 0;
         }
         _YourGrid = GRID_LAYOUTS[_YourGridID];
         _OtherGrid = GRID_LAYOUTS[_OtherGridID];
      }
      
      public function get IsPlayerTurn() : Boolean
      {
         return _ActivePlayerID == _SessionData.You.ID;
      }
      
      public function Initialize(param1:Function) : void
      {
         _Callback = param1;
         Respond(":)",{"game":BuildGameOutput()});
      }
      
      public function PlayWord(param1:Function, param2:Array) : void
      {
         var _loc4_:* = null;
         var _loc7_:* = 0;
         var _loc3_:* = null;
         var _loc5_:* = 0;
         if(param1 == null)
         {
            Debugger.Instance.Write("[AIGameHandler::PlayWord] Missing callback!",true);
            return;
         }
         if(param2 == null || param2.length < 2 || param2.length > 7)
         {
            Debugger.Instance.Write("[AIGameHandler::PlayWord] Missing or invalid word: \'" + param2 + "\'. Redirect to pass.",true);
            PassTurn(param1);
            return;
         }
         var _loc9_:uint = 0;
         _Callback = param1;
         _PassAmount = 0;
         var _loc6_:Array = this.IsPlayerTurn?_YourLetters:_OtherLetters;
         var _loc8_:Array = [];
         _LastWord = param2.concat();
         _LastGrid = this.IsPlayerTurn?_YourGrid.concat():_OtherGrid.concat();
         _LastScore = 0;
         _loc9_ = 0;
         while(_loc9_ < param2.length)
         {
            _loc4_ = param2[_loc9_];
            if(_loc4_.charAt(0) == "!" || _loc4_.charAt(0) == "^")
            {
               _WordOns.splice(_WordOns.indexOf(_loc4_),1);
            }
            else if(_loc4_.charAt(0) == "#")
            {
               _loc6_.splice(_loc6_.indexOf("#"),1);
            }
            else
            {
               _loc6_.splice(_loc6_.indexOf(_loc4_),1);
            }
            _loc9_++;
         }
         while(_loc6_.length < 7 && _Pile.length > 0)
         {
            _loc6_.push(_Pile.shift());
         }
         _loc9_ = 0;
         while(_loc9_ < _LastWord.length)
         {
            _loc7_ = _LastGrid[_loc9_];
            _loc3_ = WordParser.RemoveTagsFromString(_LastWord[_loc9_],false);
            _loc5_ = LetterDictionary.GetValue(_SessionData.DictionaryLanguage,_loc3_);
            switch(_loc7_ - 1)
            {
               case 0:
                  _LastScore = §§dup()._LastScore + _loc5_ * 2;
                  break;
               case 1:
                  _LastScore = §§dup()._LastScore + _loc5_ * 3;
                  break;
               case 2:
                  if(_LastWord[_loc9_].charAt(0) != "#" && _LastWord[_loc9_].charAt(0) != "^")
                  {
                     _loc8_.push("!" + _loc3_);
                  }
                  else
                  {
                     _loc8_.push("^");
                  }
               case 3:
                  _LastScore = §§dup()._LastScore + (_loc5_ + 10);
                  break;
               default:
                  _LastScore = §§dup()._LastScore + _loc5_;
            }
            _loc9_++;
         }
         if(_WordOns.length == 0)
         {
            _LastScore = §§dup()._LastScore * 2;
         }
         else
         {
            _loc9_ = 0;
            while(_loc9_ < _WordOns.length)
            {
               _loc5_ = LetterDictionary.GetValue(_SessionData.DictionaryLanguage,WordParser.RemoveTagsFromString(_WordOns[_loc9_],false));
               _LastScore = §§dup()._LastScore - _loc5_;
               _loc9_++;
            }
         }
         EndTurn(_loc8_);
      }
      
      public function PassTurn(param1:Function) : void
      {
         var _loc2_:* = 0;
         var _loc5_:* = 0;
         _Callback = param1;
         var _loc3_:Array = this.IsPlayerTurn?_YourLetters:_OtherLetters;
         var _loc4_:Array = [];
         _LastWord = [];
         _LastGrid = this.IsPlayerTurn?_YourGrid.concat():_OtherGrid.concat();
         _LastScore = 0;
         _loc5_ = 0;
         while(_loc5_ < _WordOns.length)
         {
            _loc2_ = LetterDictionary.GetValue(_SessionData.DictionaryLanguage,WordParser.RemoveTagsFromString(_WordOns[_loc5_],false));
            _LastScore = §§dup()._LastScore - _loc2_;
            _loc5_++;
         }
         if(_Pile.length >= 2)
         {
            _loc5_ = 0;
            while(_loc5_ < 2)
            {
               _loc4_.push("!" + _loc3_.splice(Random.nextIntRange(0,_loc3_.length - 1),1)[0]);
               _loc5_++;
            }
            while(_loc3_.length < 7 && _Pile.length > 0)
            {
               _loc3_.push(_Pile.shift());
            }
         }
         else
         {
            _PassAmount = _PassAmount + 1;
         }
         EndTurn(_loc4_);
      }
      
      public function SwapAll(param1:Function, param2:Boolean = true) : void
      {
         _Callback = param1;
         var _loc3_:Array = this.IsPlayerTurn?_YourLetters:_OtherLetters;
         if(_Pile.length >= 7)
         {
            while(_loc3_.length > 0)
            {
               _Pile.push(_loc3_.shift());
            }
            while(_loc3_.length < 7 && _Pile.length > 0)
            {
               _loc3_.push(_Pile.shift());
            }
         }
         EndTurn(_WordOns,param2);
      }
      
      public function Peek() : void
      {
      }
      
      public function Hint(param1:Function) : void
      {
         var _loc2_:Object = {};
         if(_HintsLeft > 0)
         {
            _HintsLeft = _HintsLeft - 1;
            _loc2_.result = ":)";
            _loc2_.hint = {"hintsLeft":_HintsLeft};
         }
         else
         {
            _loc2_.result = ":(";
         }
      }
      
      private function EndTurn(param1:Array = null, param2:Boolean = false) : void
      {
         StepGrid();
         if(param1 == null)
         {
            var param1:Array = [];
         }
         _WordOns = param1;
         if(!param2)
         {
            if(this.IsPlayerTurn)
            {
               _YourScore = §§dup()._YourScore + _LastScore;
            }
            else
            {
               _OtherScore = §§dup()._OtherScore + _LastScore;
            }
            _ActivePlayerID = this.IsPlayerTurn?_OpponentAI.id:_SessionData.You.ID;
         }
         if(_PassAmount >= 2 || _YourLetters.length == 0 || _OtherLetters.length == 0)
         {
            _State = 2;
         }
         _TurnAmount = _TurnAmount + 1;
         Respond(":)",{"game":BuildGameOutput()});
      }
      
      private function StepGrid() : void
      {
         if(this.IsPlayerTurn)
         {
            if(_StartPlayerID == _SessionData.You.ID)
            {
               _YourGridID = _YourGridID + 1;
               if(_YourGridID > GRID_LAYOUTS.length - 1)
               {
                  _YourGridID = 0;
               }
            }
            else
            {
               _YourGridID = _YourGridID - 1;
               if(_YourGridID < 0)
               {
                  _YourGridID = GRID_LAYOUTS.length - 1;
               }
            }
            _YourGrid = GRID_LAYOUTS[_YourGridID];
         }
         else
         {
            if(_StartPlayerID != _SessionData.You.ID)
            {
               _OtherGridID = _OtherGridID + 1;
               if(_OtherGridID > GRID_LAYOUTS.length - 1)
               {
                  _OtherGridID = 0;
               }
            }
            else
            {
               _OtherGridID = _OtherGridID - 1;
               if(_OtherGridID < 0)
               {
                  _OtherGridID = GRID_LAYOUTS.length - 1;
               }
            }
            _OtherGrid = GRID_LAYOUTS[_OtherGridID];
         }
      }
      
      public function CheckForCPUTurn() : void
      {
         if(_State == 1 && !this.IsPlayerTurn)
         {
            dispatchEvent(new Event("aiStartsThinking"));
            var solveDelay:uint = Random.nextIntRange(_OpponentAI.minSimulatedDelayTime,_OpponentAI.maxSimulatedDelayTime);
            var thinkDelay:uint = solveDelay - 750;
            _CPUAlmostDoneTimeoutID = setTimeout(function():void
            {
               dispatchEvent(new Event("aiHasSolution"));
            },thinkDelay);
            _CPUThinkTimeoutID = setTimeout(_OpponentAI.handleTurn,solveDelay,OnCPUResponse,_SessionData.DictionaryLanguage,_OtherLetters.concat(),_WordOns.concat(),_OtherGrid.concat());
         }
      }
      
      private function OnCPUResponse(param1:Array = null) : void
      {
         word = param1;
         if(word != null && word.length >= 2)
         {
            PlayWord(function(param1:Object):void
            {
               _SessionData.Set(param1.game);
            },word);
         }
         else
         {
            PassTurn(function(param1:Object):void
            {
               _SessionData.Set(param1.game);
            });
         }
         dispatchEvent(new Event("aiHasPlayed"));
      }
      
      private function BuildGameOutput() : Object
      {
         var _loc1_:Object = {};
         _loc1_.id = _SessionData.GameID;
         if(_TurnAmount == 0)
         {
            _loc1_.otherName = _OpponentAI.name;
            _loc1_.otherId = _OpponentAI.id;
            _loc1_.otherTilesetId = _OtherTilesetID;
            _loc1_.yourTilesetId = _YourTilesetID;
            _TurnAmount = 1;
         }
         _loc1_.hintsLeft = _HintsLeft;
         if(this.IsPlayerTurn)
         {
            _loc1_.yourWordons = _WordOns.join(",");
         }
         else
         {
            _loc1_.otherWordons = _WordOns.join(",");
         }
         _loc1_.state = _State;
         _loc1_.yourLetters = _YourLetters.join(",");
         _loc1_.yourGrid = _YourGrid;
         _loc1_.otherGrid = this.IsPlayerTurn && _LastGrid != null?_LastGrid:_OtherGrid;
         _loc1_.yourScore = _YourScore;
         _loc1_.otherScore = _OtherScore;
         _loc1_.lastScore = _LastScore;
         if(_LastWord != null)
         {
            _loc1_.lastWord = _LastWord.join(",");
         }
         if(_LastGrid != null)
         {
            _loc1_.lastGrid = _LastGrid.join(",");
         }
         _loc1_.passes = _PassAmount;
         _loc1_.playerOptions = 1;
         _loc1_.tiles = _Pile.length;
         _loc1_.cycle = _TurnAmount;
         if(!_IsPileDepleted && _Pile.length == 0)
         {
            _IsPileDepleted = true;
            _loc1_.ending = 1;
         }
         return _loc1_;
      }
      
      private function Respond(param1:String, param2:Object) : void
      {
         var _loc3_:* = null;
         if(_Callback != null)
         {
            _loc3_ = {};
            var _loc6_:* = 0;
            var _loc5_:* = param2;
            for(var _loc4_ in param2)
            {
               _loc3_[_loc4_] = param2[_loc4_];
            }
            _loc3_.result = param1;
            _Callback(_loc3_);
         }
      }
      
      public function Dispose() : void
      {
         clearInterval(_CPUThinkTimeoutID);
         clearInterval(_CPUAlmostDoneTimeoutID);
         _OpponentAI.dispose();
         _OpponentAI = null;
         _Callback = null;
         _SessionData = null;
      }
   }
}
