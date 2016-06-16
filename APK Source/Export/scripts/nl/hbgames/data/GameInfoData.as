package nl.hbgames.data
{
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.utils.Debugger;
   
   public class GameInfoData extends Object
   {
       
      private var _IsMyTurn:Boolean;
      
      private var _OpponentName:String;
      
      private var _OpponentID:String;
      
      private var _OpponentBorder:int;
      
      private var _GameID:String;
      
      private var _State:int;
      
      private var _DictionaryLanguage:String;
      
      private var _LastWordScore:int;
      
      private var _LastWord:String;
      
      private var _TurnPlayerID:String;
      
      private var _YourTotalScore:int;
      
      private var _OtherTotalScore:int;
      
      private var _TimeLeftInSeconds:int;
      
      private var _Cycle:int;
      
      private var _UnseenChats:int;
      
      private var _Passes:int;
      
      private var _Progress:Number;
      
      public function GameInfoData(param1:Object = null)
      {
         super();
         if(param1 != null)
         {
            Set(param1);
         }
      }
      
      public function get IsMyTurn() : Boolean
      {
         return _IsMyTurn;
      }
      
      public function get OpponentName() : String
      {
         return _OpponentName;
      }
      
      public function get OpponentID() : String
      {
         return _OpponentID;
      }
      
      public function get OpponentBorder() : int
      {
         return _OpponentBorder;
      }
      
      public function get GameID() : String
      {
         return _GameID;
      }
      
      public function get DictionaryLanguage() : String
      {
         return _DictionaryLanguage;
      }
      
      public function get LastWordScore() : int
      {
         return _LastWordScore;
      }
      
      public function get LastWord() : String
      {
         return _LastWord;
      }
      
      public function get TurnPlayerID() : String
      {
         return _TurnPlayerID;
      }
      
      public function get YourTotalScore() : int
      {
         return _YourTotalScore;
      }
      
      public function get OtherTotalScore() : int
      {
         return _OtherTotalScore;
      }
      
      public function get TimeLeftInSeconds() : int
      {
         return _TimeLeftInSeconds;
      }
      
      public function get TimeLeftInMinutes() : int
      {
         return Math.floor(_TimeLeftInSeconds / 60);
      }
      
      public function get Cycle() : int
      {
         return _Cycle;
      }
      
      public function get UnseenChats() : int
      {
         return _UnseenChats;
      }
      
      public function get Passes() : int
      {
         return _Passes;
      }
      
      public function get Progress() : Number
      {
         return _Progress;
      }
      
      public function get IsResigned() : Boolean
      {
         return (_State & 4) == 4;
      }
      
      public function get IsFinished() : Boolean
      {
         return (_State & 2) == 2;
      }
      
      public function get IsTurn() : Boolean
      {
         return (_State & 1) == 1;
      }
      
      public function Set(param1:Object) : void
      {
         _OpponentName = param1.otherName;
         _OpponentID = param1.otherId;
         _OpponentBorder = param1.otherBorder;
         _GameID = param1.id;
         _State = param1.state;
         _DictionaryLanguage = param1.dictionaryId?param1.dictionaryId:"en";
         _LastWordScore = param1.lastScore;
         _LastWord = WordParser.RemoveTagsFromString(param1.lastWord);
         _TurnPlayerID = param1.turnUserId;
         _YourTotalScore = param1.yourScore;
         _OtherTotalScore = param1.otherScore;
         _TimeLeftInSeconds = param1.timeLeft && param1.timeLeft >= 0?param1.timeLeft:0;
         _UnseenChats = param1.chatUnseen?Math.min(param1.chatUnseen,99):0.0;
         _Passes = param1.passes?param1.passes:0;
         _Cycle = param1.cycle;
         _Progress = param1.progress?param1.progress:0;
         _IsMyTurn = _TurnPlayerID == ClientData.Instance.Player.ID;
      }
      
      public function IncreaseUnseenChats(param1:uint = 1) : void
      {
         _UnseenChats = §§dup()._UnseenChats + param1;
      }
      
      public function SetUnseenChats(param1:uint) : void
      {
         _UnseenChats = param1;
      }
      
      public function ResetUnseenChats() : void
      {
         _UnseenChats = 0;
      }
      
      public function CreateFromSession(param1:GameSessionData) : Boolean
      {
         var _loc2_:* = null;
         try
         {
            _loc2_ = ClientData.Instance.ChatHistory.GetSession(param1.GameID);
            _OpponentName = param1.Opponent.Name;
            _OpponentID = param1.Opponent.ID;
            _OpponentBorder = param1.Opponent.BorderID;
            _GameID = param1.GameID;
            _State = param1.State;
            _DictionaryLanguage = param1.DictionaryLanguage;
            _LastWord = WordParser.RemoveTagsFromString(param1.LastWord.join(","));
            _LastWordScore = param1.LastWordScore;
            _IsMyTurn = param1.IsMyTurn;
            _TurnPlayerID = param1.IsMyTurn?ClientData.Instance.Player.ID:_OpponentID;
            _YourTotalScore = param1.YourTotalScore;
            _OtherTotalScore = param1.OtherTotalScore;
            _UnseenChats = _loc2_ != null?_loc2_.NewChatAmount:0;
            _TimeLeftInSeconds = param1.TimeLeftInSec - param1.ActiveTimeInSec;
            _Passes = param1.Passes;
            _Cycle = param1.CycleNum;
            _Progress = param1.Progress;
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[GameInfoData::CreateFromSession] " + e,true);
            var _loc4_:* = false;
            return _loc4_;
         }
         return true;
      }
      
      public function Dispose() : void
      {
         _OpponentName = null;
         _OpponentID = null;
         _GameID = null;
         _DictionaryLanguage = null;
         _LastWord = null;
         _TurnPlayerID = null;
         _Cycle = -1;
      }
   }
}
