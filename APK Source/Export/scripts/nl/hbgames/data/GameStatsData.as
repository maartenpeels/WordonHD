package nl.hbgames.data
{
   public class GameStatsData extends Object
   {
       
      private var _DictionaryLanguage:String;
      
      private var _OpponentName:String;
      
      private var _OpponentID:String;
      
      private var _CoinsWon:int;
      
      private var _TotalCoins:int;
      
      private var _YourTotalScore:int;
      
      private var _YourBestWord:String;
      
      private var _YourBestWordScore:int;
      
      private var _YourPlayedWords:Array;
      
      private var _YourLeftOverLetters:Array;
      
      private var _YourLetterPenalty:int;
      
      private var _YourTilesetID:int;
      
      private var _OtherTotalScore:int;
      
      private var _OtherBestWord:String;
      
      private var _OtherBestWordScore:int;
      
      private var _OtherPlayedWords:Array;
      
      private var _OtherLeftOverLetters:Array;
      
      private var _OtherLetterPenalty:int;
      
      private var _OtherTilesetID:int;
      
      private var _OtherBorderID:int;
      
      private var _HasWordList:Boolean;
      
      private var _HasPenalty:Boolean;
      
      private var _State:int;
      
      private var _TurnUserID:String;
      
      public function GameStatsData(param1:Object)
      {
         var _loc2_:* = 0;
         super();
         _DictionaryLanguage = param1.dictionaryId;
         _OpponentName = param1.displayname;
         _OpponentID = param1.userId;
         _State = param1.state;
         _TurnUserID = param1.turnUserId;
         _CoinsWon = param1.coinsWon;
         _TotalCoins = param1.totalCoins;
         _YourTotalScore = param1.yourScore;
         _YourBestWord = param1.yourBestWord;
         _YourBestWordScore = param1.yourBestWordScore;
         _YourTilesetID = param1.yourTilesetId != null?param1.yourTilesetId:0;
         _OtherTotalScore = param1.otherScore;
         _OtherBestWord = param1.otherBestWord;
         _OtherBestWordScore = param1.otherBestWordScore;
         _OtherTilesetID = param1.otherTilesetId != null?param1.otherTilesetId:0;
         _OtherBorderID = param1.otherBorder;
         _HasWordList = param1.extra != null;
         if(_HasWordList)
         {
            _YourPlayedWords = param1.extra[ClientData.Instance.Player.ID] != null?param1.extra[ClientData.Instance.Player.ID]:[];
            _OtherPlayedWords = param1.extra[_OpponentID] != null?param1.extra[_OpponentID]:[];
         }
         _HasPenalty = param1.penalty != null;
         if(_HasPenalty)
         {
            _YourLeftOverLetters = param1.penalty[ClientData.Instance.Player.ID]?param1.penalty[ClientData.Instance.Player.ID].split(","):[];
            _OtherLeftOverLetters = param1.penalty[_OpponentID]?param1.penalty[_OpponentID].split(","):[];
            if(_YourLeftOverLetters.length > 0)
            {
               _loc2_ = 0;
               while(_loc2_ < _YourLeftOverLetters.length)
               {
                  _YourLetterPenalty = §§dup()._YourLetterPenalty + LetterDictionary.GetValue(_DictionaryLanguage,_YourLeftOverLetters[_loc2_]);
                  _loc2_++;
               }
            }
            else
            {
               _YourLetterPenalty = 0;
            }
            if(_OtherLeftOverLetters.length > 0)
            {
               _loc2_ = 0;
               while(_loc2_ < _OtherLeftOverLetters.length)
               {
                  _OtherLetterPenalty = §§dup()._OtherLetterPenalty + LetterDictionary.GetValue(_DictionaryLanguage,_OtherLeftOverLetters[_loc2_]);
                  _loc2_++;
               }
            }
            else
            {
               _OtherLetterPenalty = 0;
            }
         }
      }
      
      public function get DictionaryLanguage() : String
      {
         return _DictionaryLanguage;
      }
      
      public function get OpponentName() : String
      {
         return _OpponentName;
      }
      
      public function get OpponentID() : String
      {
         return _OpponentID;
      }
      
      public function get CoinsWon() : int
      {
         return _CoinsWon;
      }
      
      public function get TotalCoins() : int
      {
         return _TotalCoins;
      }
      
      public function get YourTotalScore() : int
      {
         return _YourTotalScore;
      }
      
      public function get YourBestWord() : String
      {
         return _YourBestWord;
      }
      
      public function get YourBestWordScore() : int
      {
         return _YourBestWordScore;
      }
      
      public function get YourTilesetID() : int
      {
         return _YourTilesetID;
      }
      
      public function get OtherTotalScore() : int
      {
         return _OtherTotalScore;
      }
      
      public function get OtherBestWord() : String
      {
         return _OtherBestWord;
      }
      
      public function get OtherBestWordScore() : int
      {
         return _OtherBestWordScore;
      }
      
      public function get OtherTilesetID() : int
      {
         return _OtherTilesetID;
      }
      
      public function get OtherBorderID() : int
      {
         return _OtherBorderID;
      }
      
      public function get TurnUserID() : String
      {
         return _TurnUserID;
      }
      
      public function get HasWordList() : Boolean
      {
         return _HasWordList;
      }
      
      public function get HasPenalty() : Boolean
      {
         return _HasPenalty;
      }
      
      public function get YourPlayedWordList() : Array
      {
         return _YourPlayedWords;
      }
      
      public function get OtherPlayedWordList() : Array
      {
         return _OtherPlayedWords;
      }
      
      public function get YourLeftOvers() : Array
      {
         return _YourLeftOverLetters;
      }
      
      public function get YourPenalty() : int
      {
         return _YourLetterPenalty;
      }
      
      public function get OtherLeftOvers() : Array
      {
         return _OtherLeftOverLetters;
      }
      
      public function get OtherPenalty() : int
      {
         return _OtherLetterPenalty;
      }
      
      public function get IsResigned() : Boolean
      {
         return (_State & 4) == 4;
      }
      
      public function get IsFinished() : Boolean
      {
         return (_State & 2) == 2;
      }
      
      public function Dispose() : void
      {
         _DictionaryLanguage = null;
         _OpponentName = null;
         _OpponentID = null;
         _YourBestWord = null;
         _OtherBestWord = null;
         _TurnUserID = null;
         _HasWordList = false;
         _HasPenalty = false;
         _YourPlayedWords = null;
         _OtherPlayedWords = null;
         _YourLeftOverLetters = null;
         _OtherLeftOverLetters = null;
      }
   }
}
