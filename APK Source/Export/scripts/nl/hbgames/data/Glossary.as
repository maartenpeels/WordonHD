package nl.hbgames.data
{
   import nl.hbgames.utils.Debugger;
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import nl.hbgames.utils.StringUtil;
   import deng.fzip.FZip;
   import deng.fzip.FZipFile;
   import flash.utils.getTimer;
   import nl.hbgames.solver.LetterCountMatcher;
   import nl.hbgames.solver.WordScore;
   import nl.hbgames.solver.ScoreSolver;
   
   public class Glossary extends Object
   {
      
      private static var _Instance:Glossary = null;
      
      private static var _Glossary:Dictionary;
      
      private static var _BinTree:Dictionary;
       
      private var _LanguagePack:Class;
      
      private var _Callback:Function;
      
      public function Glossary()
      {
         _LanguagePack = languages_zip$f27cd6933d42276780dc6c06c031f3db309290904;
         super();
         _Instance = this;
         _Glossary = new Dictionary();
         _BinTree = new Dictionary();
      }
      
      public static function get Instance() : Glossary
      {
         if(_Instance == null)
         {
            Debugger.Instance.Write("Glossary does not exists. use new Glossary() before using Instance");
            return null;
         }
         return _Instance;
      }
      
      private function Parse(param1:ByteArray) : ByteArray
      {
         var _loc4_:* = 0;
         var _loc3_:String = param1.toString();
         var _loc2_:Array = _loc3_.split("\n");
         param1.clear();
         param1.position = 0;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc2_[_loc4_] = StringUtil.Trim(_loc2_[_loc4_]);
            param1.writeUTFBytes(_loc2_[_loc4_] + "\n");
            _loc4_++;
         }
         return param1;
      }
      
      private function UnpackLanguage(param1:String) : void
      {
         var _loc7_:* = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:String = param1 + 3;
         Debugger.Instance.Write("[Glossary::UnpackLanguage] Extracting \'" + _loc4_ + ".lang\'");
         var _loc6_:FZip = new FZip();
         _loc6_.loadBytes(new _LanguagePack() as ByteArray);
         var _loc5_:int = _loc6_.getFileCount();
         _loc7_ = 0;
         while(_loc7_ < _loc5_)
         {
            _loc2_ = _loc6_.getFileByName(_loc4_ + ".lang");
            Storage.WriteFile(_loc2_.filename,_loc2_.content,false,false,"ios_support",true);
            _loc3_ = _loc6_.getFileByName(_loc4_ + ".blob");
            Storage.WriteFile(_loc3_.filename,_loc3_.content,false,false,"ios_support",true);
            _loc7_++;
         }
      }
      
      public function Load(param1:Function, param2:String, param3:Boolean = false) : void
      {
         var _loc9_:* = 0;
         var _loc8_:* = null;
         _Callback = param1;
         if(_Glossary.hasOwnProperty(param2) && !param3)
         {
            if(_Callback != null)
            {
               _Callback();
            }
            return;
         }
         var _loc6_:String = param2 + 3;
         if(!Storage.FileExists(_loc6_ + ".lang","ios_support"))
         {
            Debugger.Instance.Write("[Glossary::Load] \'" + _loc6_ + ".lang\' not found. Extracting from archive.");
            UnpackLanguage(param2);
         }
         _loc9_ = 1;
         while(_loc9_ < 3)
         {
            _loc8_ = _loc9_ == 1?param2:param2 + _loc9_;
            Storage.DeleteFile(_loc8_ + ".lang","ios_support");
            Storage.DeleteFile(_loc8_ + ".blob","ios_support");
            _loc9_++;
         }
         var _loc5_:ByteArray = Storage.ReadFile(_loc6_ + ".lang",false,"ios_support");
         var _loc7_:String = _loc5_.toString();
         var _loc4_:Array = _loc7_.split("\n");
         _Glossary[param2] = _loc4_;
         _loc5_ = Storage.ReadFile(_loc6_ + ".blob",false,"ios_support");
         _BinTree[param2] = _loc5_;
         Debugger.Instance.Write("[Glossary::Load] \'" + _loc6_ + ".lang\' loaded from disk");
         if(_Callback != null)
         {
            _Callback();
         }
      }
      
      public function Exists(param1:String, param2:String) : Boolean
      {
         if(_Glossary[param1])
         {
            return _Glossary[param1].indexOf(param2.toUpperCase()) >= 0;
         }
         return false;
      }
      
      public function GetAllPossibleWords(param1:String, param2:Array) : Vector.<String>
      {
         if(!_BinTree[param1] || !_Glossary[param1])
         {
            Debugger.Instance.Write("[Glossary::GetAllPossibleWords] BinTree or Glossary not available. Returning empty list.",true);
            return new Vector.<String>();
         }
         var _loc5_:Number = getTimer();
         Debugger.Instance.Write("[Glossary::GetAllPossibleWords] input: " + param2);
         var _loc4_:LetterCountMatcher = new LetterCountMatcher();
         var _loc6_:Vector.<String> = _loc4_.Match(param2,"#",_BinTree[param1],_Glossary[param1]);
         var _loc3_:Number = getTimer();
         Debugger.Instance.Write("[Glossary::GetAllPossibleWords] Possible words: " + _loc6_.length + " found in: " + (_loc3_ - _loc5_).toString());
         return _loc6_;
      }
      
      public function GetBestWord(param1:Vector.<String>, param2:Array, param3:Array, param4:Array) : WordScore
      {
         var _loc8_:Number = getTimer();
         var _loc5_:ScoreSolver = new ScoreSolver();
         var _loc7_:Vector.<WordScore> = _loc5_.FindOptimalScore(param1,param2,param3,param4);
         var _loc6_:Number = getTimer();
         Debugger.Instance.Write("[Glossary::GetBestWord] ScoreSolver ran for: " + (_loc6_ - _loc8_).toString());
         if(_loc7_ != null && _loc7_.length > 0)
         {
            return _loc7_[0];
         }
         return null;
      }
      
      public function GetBestWordList(param1:Vector.<String>, param2:Array, param3:Array, param4:Array) : Vector.<WordScore>
      {
         var _loc8_:Number = getTimer();
         var _loc5_:ScoreSolver = new ScoreSolver();
         var _loc7_:Vector.<WordScore> = _loc5_.FindOptimalScore(param1,param2,param3,param4);
         var _loc6_:Number = getTimer();
         Debugger.Instance.Write("[Glossary::GetBestWordList] ScoreSolver ran for: " + (_loc6_ - _loc8_).toString());
         if(_loc7_ != null && _loc7_.length > 0)
         {
            return _loc7_;
         }
         return null;
      }
      
      public function Get(param1:String) : Array
      {
         return _Glossary[param1];
      }
      
      public function Dispose() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = _Glossary;
         for each(var _loc1_ in _Glossary)
         {
            _Glossary[_loc1_] = null;
            _BinTree[_loc1_] = null;
         }
         _Glossary = null;
         _BinTree = null;
         _LanguagePack = null;
      }
   }
}
