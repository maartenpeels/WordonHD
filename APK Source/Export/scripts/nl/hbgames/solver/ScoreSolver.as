package nl.hbgames.solver
{
   import nl.hbgames.data.LetterDictionary;
   import nl.hbgames.utils.Debugger;
   
   public class ScoreSolver extends Object
   {
       
      private const LOWER_THAN_MAX:int = -2147483648;
      
      private const NOT_FOUND:int = -1;
      
      private const WILDCARD:int = -1;
      
      private const WORDON:int = 1;
      
      private const EMPTY:int = 0;
      
      private const MAX_WORD_LENGTH:uint = 7;
      
      private var _IsMyTurn:Boolean;
      
      public function ScoreSolver()
      {
         super();
      }
      
      public function FindOptimalScore(param1:Vector.<String>, param2:Array, param3:Array, param4:Array) : Vector.<WordScore>
      {
         var _loc12_:* = 0;
         var _loc16_:* = 0;
         _IsMyTurn = param3 != null;
         if(param3 == null)
         {
            var param3:Array = [];
         }
         var _loc8_:Vector.<int> = LetterDictionary.DetermineIndices(param2.join(""),new Vector.<int>());
         var _loc7_:Vector.<int> = LetterDictionary.DetermineIndices(param3.join(""),new Vector.<int>());
         var _loc11_:Vector.<Boolean> = new Vector.<Boolean>(_loc8_.length,true);
         var _loc15_:Vector.<Boolean> = new Vector.<Boolean>(_loc7_.length,true);
         var _loc5_:Vector.<String> = new Vector.<String>(7,true);
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc9_:* = -2147483648;
         var _loc13_:* = -2147483648;
         var _loc14_:GridTool = new GridTool(param4);
         var _loc6_:Vector.<WordScore> = new Vector.<WordScore>();
         _loc16_ = param1.length - 1;
         while(_loc16_ >= 0)
         {
            if(param1[_loc16_] != null)
            {
               _loc14_.Reset();
               _loc12_ = CheckScore(param1[_loc16_],_loc8_,_loc7_,_loc11_,_loc15_,_loc5_,_loc9_,_loc14_,_loc10_);
               if(_loc12_ > _loc9_)
               {
                  _loc9_ = _loc12_;
                  _loc13_ = _loc16_;
                  _loc6_.unshift(new WordScore(_loc13_,param1[_loc13_],_loc9_,_loc5_));
               }
            }
            _loc16_--;
         }
         if(_loc13_ == -2147483648)
         {
            Debugger.Instance.Write("[ScoreSolver::FindOptimalScore] No words possible.");
            return null;
         }
         Debugger.Instance.Write("[ScoreSolver::FindOptimalScore] The optimal word is \'" + param1[_loc13_] + "\' (" + _loc9_ + " points)");
         return _loc6_;
      }
      
      private function CheckScore(param1:String, param2:Vector.<int>, param3:Vector.<int>, param4:Vector.<Boolean>, param5:Vector.<Boolean>, param6:Vector.<String>, param7:int, param8:GridTool, param9:Vector.<int>) : int
      {
         var _loc24_:* = 0;
         var _loc11_:* = false;
         var _loc17_:* = 0;
         var _loc23_:* = 0;
         var _loc18_:* = 0;
         var _loc13_:* = 0;
         var _loc19_:* = 0;
         if(param1.length == 0)
         {
            return -2147483648;
         }
         var _loc12_:Vector.<int> = LetterDictionary.VALUES;
         var _loc10_:Vector.<int> = param8.multipliers;
         var _loc25_:Vector.<int> = param8.bonus;
         var _loc26_:Vector.<int> = LetterDictionary.DetermineIndices(param1,param9);
         var _loc21_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:int = _loc26_.length;
         _loc24_ = 0;
         while(_loc24_ < _loc15_)
         {
            if(_loc26_[_loc24_] != -1)
            {
               _loc14_ = _loc14_ + _loc12_[_loc26_[_loc24_]] * _loc10_[_loc24_];
               _loc14_ = _loc14_ + _loc25_[_loc24_];
               _loc24_++;
               continue;
            }
            return -2147483648;
         }
         _loc21_ = _loc14_ * 2;
         if(_loc21_ <= param7)
         {
            return _loc21_;
         }
         ResetStrings(param6);
         var _loc22_:* = true;
         var _loc16_:int = param3.length;
         _loc24_ = 0;
         while(_loc24_ < _loc16_)
         {
            _loc17_ = param3[_loc24_];
            if(_loc17_ != -1)
            {
               _loc11_ = false;
               _loc23_ = 0;
               while(_loc23_ < _loc15_)
               {
                  if(_loc26_[_loc23_] == _loc17_ && param8.used[_loc23_] == 0)
                  {
                     param8.used[_loc23_] = 1;
                     param6[_loc23_] = "!";
                     _loc11_ = true;
                     break;
                  }
                  _loc23_++;
               }
               if(!_loc11_)
               {
                  _loc22_ = false;
                  _loc14_ = _loc14_ - _loc12_[_loc17_];
               }
            }
            _loc24_++;
         }
         if(!_loc22_)
         {
            if(_loc14_ <= param7)
            {
               return _loc14_;
            }
         }
         ResetBools(param4);
         ResetBools(param5);
         _loc24_ = 0;
         while(_loc24_ < _loc15_)
         {
            _loc19_ = _loc26_[_loc24_];
            _loc18_ = FindSymbol(_loc19_,param3,param5);
            if(_loc18_ == -1)
            {
               _loc18_ = FindSymbol(_loc19_,param2,param4);
               if(_loc18_ == -1)
               {
                  _loc18_ = FindSymbol(-1,param3,param5);
                  _loc13_ = LowestScoringSymbolInstance(_loc26_,_loc19_,param8);
                  if(_loc18_ != -1)
                  {
                     param5[_loc18_] = true;
                     param8.used[_loc13_] = 1;
                     param6[_loc13_] = "^";
                  }
                  else
                  {
                     param6[_loc13_] = "#";
                  }
                  _loc14_ = _loc14_ - _loc12_[_loc19_] * _loc10_[_loc13_];
               }
               else
               {
                  param4[_loc18_] = true;
               }
            }
            else
            {
               param5[_loc18_] = true;
            }
            _loc24_++;
         }
         var _loc20_:* = _loc14_;
         _loc24_ = 0;
         while(_loc24_ < _loc16_)
         {
            _loc18_ = FindSymbol(-1,param3,param5);
            if(_loc18_ != -1)
            {
               _loc13_ = LowestScoringSymbolInstance(_loc26_,-1,param8);
               if(_loc13_ != -1)
               {
                  param5[_loc18_] = true;
                  param6[_loc13_] = "^";
                  _loc20_ = _loc20_ - _loc12_[_loc26_[_loc13_]] * _loc10_[_loc13_];
                  _loc24_++;
                  continue;
               }
               return 0;
            }
            break;
         }
         if(_IsMyTurn)
         {
            if(_loc22_)
            {
               _loc20_ = _loc20_ * 2;
            }
         }
         return _loc14_ > _loc20_?_loc14_:_loc20_;
      }
      
      private function ResetInts(param1:Vector.<int>) : void
      {
         var _loc3_:* = 0;
         var _loc2_:int = param1.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            param1[_loc3_] = 0;
            _loc3_++;
         }
      }
      
      private function ResetBools(param1:Vector.<Boolean>) : void
      {
         var _loc3_:* = 0;
         var _loc2_:int = param1.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            param1[_loc3_] = false;
            _loc3_++;
         }
      }
      
      private function ResetStrings(param1:Vector.<String>) : void
      {
         var _loc3_:* = 0;
         var _loc2_:int = param1.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            param1[_loc3_] = null;
            _loc3_++;
         }
      }
      
      private function FindSymbol(param1:int, param2:Vector.<int>, param3:Vector.<Boolean>) : int
      {
         var _loc4_:* = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.length)
         {
            if(param2[_loc4_] == param1 && !param3[_loc4_])
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      private function LowestScoringSymbolInstance(param1:Vector.<int>, param2:int, param3:GridTool) : int
      {
         var _loc6_:* = 0;
         var _loc8_:* = 0;
         var _loc10_:* = 0;
         var _loc9_:* = 0;
         var _loc7_:* = -1;
         var _loc4_:* = 4294967295;
         var _loc5_:int = param1.length;
         _loc9_ = 0;
         while(_loc9_ < _loc5_)
         {
            _loc10_ = param1[_loc9_];
            if(_loc10_ == param2 || param2 == -1)
            {
               _loc8_ = LetterDictionary.VALUES[_loc10_];
               if(param3.used[_loc9_] == 0)
               {
                  _loc6_ = _loc8_ * param3.multipliers[_loc9_];
                  if(_loc6_ < _loc4_)
                  {
                     _loc4_ = _loc6_;
                     _loc7_ = _loc9_;
                  }
               }
            }
            _loc9_++;
         }
         return _loc7_;
      }
   }
}

class GridTool extends Object
{
    
   private const EMPTY:int = 0;
   
   public var multipliers:Vector.<int>;
   
   public var bonus:Vector.<int>;
   
   public var used:Vector.<int>;
   
   function GridTool(param1:Array)
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      super();
      var _loc2_:int = param1.length;
      multipliers = new Vector.<int>(_loc2_,true);
      used = new Vector.<int>(_loc2_,true);
      bonus = new Vector.<int>(_loc2_,true);
      _loc4_ = 0;
      while(_loc4_ < _loc2_)
      {
         _loc3_ = param1[_loc4_];
         used[_loc4_] = 0;
         if(_loc3_ == 1)
         {
            multipliers[_loc4_] = 2;
         }
         else if(_loc3_ == 2)
         {
            multipliers[_loc4_] = 3;
         }
         else
         {
            multipliers[_loc4_] = 1;
         }
         if(_loc3_ == 4)
         {
            bonus[_loc4_] = 10;
         }
         else
         {
            bonus[_loc4_] = 0;
         }
         _loc4_++;
      }
   }
   
   public function Reset() : void
   {
      var _loc2_:* = 0;
      var _loc1_:int = used.length;
      _loc2_ = 0;
      while(_loc2_ < _loc1_)
      {
         used[_loc2_] = 0;
         _loc2_++;
      }
   }
}
