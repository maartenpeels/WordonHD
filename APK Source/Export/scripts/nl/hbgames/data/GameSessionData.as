package nl.hbgames.data
{
   import flash.events.EventDispatcher;
   import nl.hbgames.solver.WordScore;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.data.game.CachedSession;
   import nl.hbgames.utils.WordParser;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class GameSessionData extends EventDispatcher
   {
       
      private const DEFAULT_GRID:Array = [0,0,0,0,0,0,0];
      
      private var _GameType:int = 0;
      
      private var _GameID:String = "";
      
      private var _PrevCycleNum:int = 0;
      
      private var _CycleNum:int = 0;
      
      private var _DictionaryLanguage:String = "";
      
      private var _TimeLeftInSec:int = 0;
      
      private var _CreatedTimestamp:Number = 0;
      
      private var _You:PlayerData = null;
      
      private var _Other:PlayerData = null;
      
      private var _YourTotalScore:int = 0;
      
      private var _YourLetters:Array;
      
      private var _YourGrid:Array;
      
      private var _YourBestWord:WordScore = null;
      
      private var _YourTilesetID:int = -1;
      
      private var _OtherTotalScore:int = 0;
      
      private var _OtherGrid:Array;
      
      private var _OtherTilesetID:int = -1;
      
      private var _WordOnLetters:Array;
      
      private var _IsMyTurn:Boolean = false;
      
      private var _Progress:Number = 0.0;
      
      private var _LastWordScore:int = 0;
      
      private var _LastWord:Array;
      
      private var _LastGrid:Array;
      
      private var _TilesLeft:int = 0;
      
      private var _Passes:int = 0;
      
      private var _State:int = 0;
      
      private var _HintsLeft:int = 0;
      
      private var _CoinsWon:int = 0;
      
      private var _BonusCoinsWon:int = 0;
      
      private var _TotalCoins:int = 0;
      
      private var _TotalStars:int = 0;
      
      private var _PlayerOptions:int = 0;
      
      private var _ShowStrengthAlert:Boolean = false;
      
      private var _ShowEndingAlertCount:int = 0;
      
      private var _QueuedData:Array = null;
      
      private var _Locked:Boolean = false;
      
      private var _LastData:Object = null;
      
      public function GameSessionData(param1:int, param2:String, param3:String, param4:int, param5:PlayerData, param6:PlayerData)
      {
         _YourLetters = [];
         _YourGrid = [];
         _OtherGrid = [];
         _WordOnLetters = [];
         _LastWord = [];
         _LastGrid = [];
         super();
         _CreatedTimestamp = new Date().getTime();
         _GameType = param1;
         _DictionaryLanguage = param3;
         _TimeLeftInSec = param4;
         _GameID = param2;
         _You = param5.Clone();
         _Other = param6.Clone();
         _CycleNum = 0;
         _PrevCycleNum = 0;
         _TotalCoins = ClientData.Instance.Inventory.TotalCoins;
         _TotalStars = ClientData.Instance.Inventory.TotalStars;
         var _loc7_:GameInfoData = ClientData.Instance.GameListData.GetGameByID(_GameID);
         if(_loc7_ != null)
         {
            _Progress = _loc7_.Progress;
         }
         _QueuedData = [];
      }
      
      public function get Type() : int
      {
         return _GameType;
      }
      
      public function get GameID() : String
      {
         return _GameID;
      }
      
      public function get CycleNum() : int
      {
         return _CycleNum;
      }
      
      public function get PrevCycleNum() : int
      {
         return _PrevCycleNum;
      }
      
      public function get DictionaryLanguage() : String
      {
         return _DictionaryLanguage;
      }
      
      public function get TimeLeftInSec() : int
      {
         return _TimeLeftInSec;
      }
      
      public function get ActiveTimeInSec() : int
      {
         return (new Date().getTime() - _CreatedTimestamp) / 1000;
      }
      
      public function get You() : PlayerData
      {
         return _You;
      }
      
      public function get Opponent() : PlayerData
      {
         return _Other;
      }
      
      public function get YourTotalScore() : int
      {
         return _YourTotalScore;
      }
      
      public function get YourLetters() : Array
      {
         return _YourLetters.concat();
      }
      
      public function get YourGrid() : Array
      {
         return _YourGrid.concat();
      }
      
      public function get YourBestWord() : WordScore
      {
         return _YourBestWord;
      }
      
      public function get YourTilesetID() : int
      {
         return _YourTilesetID;
      }
      
      public function get Progress() : Number
      {
         return _Progress;
      }
      
      public function get OtherTotalScore() : int
      {
         return _OtherTotalScore;
      }
      
      public function get OtherGrid() : Array
      {
         return _OtherGrid.concat();
      }
      
      public function get OtherTilesetID() : int
      {
         return _OtherTilesetID;
      }
      
      public function get Passes() : int
      {
         return _Passes;
      }
      
      public function get HintsLeft() : int
      {
         return _HintsLeft;
      }
      
      public function get WordOnLetters() : Array
      {
         return _WordOnLetters.concat();
      }
      
      public function get LastWordScore() : int
      {
         return _LastWordScore;
      }
      
      public function get LastWord() : Array
      {
         return _LastWord.concat();
      }
      
      public function get LastGrid() : Array
      {
         return _LastGrid.concat();
      }
      
      public function get TilesLeft() : int
      {
         return _TilesLeft;
      }
      
      public function get CoinsWon() : int
      {
         return _CoinsWon;
      }
      
      public function get BonusCoinsWon() : int
      {
         return _BonusCoinsWon;
      }
      
      public function get TotalCoins() : int
      {
         return _TotalCoins;
      }
      
      public function get TotalStars() : int
      {
         return _TotalStars;
      }
      
      public function get IsMyTurn() : Boolean
      {
         return _IsMyTurn;
      }
      
      public function get IsStrengthMeterEnabled() : Boolean
      {
         return (_PlayerOptions & 1) == 1;
      }
      
      public function get ShowStrengthAlert() : Boolean
      {
         var _loc1_:Boolean = _ShowStrengthAlert;
         _ShowStrengthAlert = false;
         return _loc1_;
      }
      
      public function get ShowFinalTurnsAlert() : Boolean
      {
         if(_ShowEndingAlertCount == 1)
         {
            _ShowEndingAlertCount = _ShowEndingAlertCount + 1;
            return true;
         }
         return false;
      }
      
      public function get PlayerOptionValue() : int
      {
         return _PlayerOptions;
      }
      
      public function get State() : int
      {
         return _State;
      }
      
      public function get EndingAlertCount() : int
      {
         return _ShowEndingAlertCount;
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
      
      public function get IsLocked() : Boolean
      {
         return _Locked;
      }
      
      public function Set(param1:Object, param2:Number = -1, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _loc8_:* = null;
         var _loc5_:* = null;
         var _loc7_:* = undefined;
         var _loc6_:* = null;
         if(!param1)
         {
            Debugger.Instance.Write("[GameSessionData::Set] No data specified for updating the session!",true);
            return;
         }
         if(param1.id != null && param1.id != _GameID)
         {
            Debugger.Instance.Write("[GameSessionData::Set] Incoming GameID does not match the session. Data update blocked!",true);
            return;
         }
         if(_Locked && !param3)
         {
            _QueuedData.push({
               "info":param1,
               "timeLeft":param2
            });
            _PrevCycleNum = _CycleNum;
            _CycleNum = param1.cycle;
            Debugger.Instance.Write("[GameSessionData::Set] GameSessionData is currently locked. Queueing incoming data.");
            return;
         }
         if(param1.otherName)
         {
            _Other.Name = param1.otherName;
         }
         if(param1.otherId)
         {
            _Other.ID = param1.otherId;
         }
         if(param1.otherBorder)
         {
            _Other.BorderID = param1.otherBorder;
         }
         if(_OtherTilesetID == -1)
         {
            _OtherTilesetID = TilesetData.MakeValid(param1.otherTilesetId);
         }
         if(_YourTilesetID == -1)
         {
            _YourTilesetID = TilesetData.MakeValid(param1.yourTilesetId);
         }
         if(param1.hintsLeft)
         {
            SetHintValue(param1.hintsLeft);
         }
         _IsMyTurn = param1.yourWordons != null;
         _State = param1.state;
         if(param2 != -1)
         {
            _TimeLeftInSec = param2;
         }
         _YourLetters = param1.yourLetters?(param1.yourLetters).split(","):[];
         _YourGrid = param1.yourGrid?(param1.yourGrid).split(","):DEFAULT_GRID;
         _OtherGrid = param1.otherGrid?(param1.otherGrid).split(","):DEFAULT_GRID;
         _YourTotalScore = param1.yourScore;
         _OtherTotalScore = param1.otherScore;
         _LastWordScore = param1.lastScore;
         _LastWord = param1.lastWord?(param1.lastWord).split(","):[];
         _LastGrid = param1.lastGrid?(param1.lastGrid).split(","):DEFAULT_GRID;
         _CoinsWon = param1.coinsWon != null?param1.coinsWon:0;
         _BonusCoinsWon = param1.bonusCoinsWon != null?param1.bonusCoinsWon:0;
         _TotalCoins = param1.coins != null?param1.coins:ClientData.Instance.Inventory.TotalCoins;
         _TotalStars = param1.stars != null?param1.stars:ClientData.Instance.Inventory.TotalStars;
         _Passes = param1.passes?param1.passes:0;
         _Progress = param1.progress?param1.progress:_Progress;
         if(param1.playerOptions)
         {
            _PlayerOptions = param1.playerOptions;
         }
         if(param1.smAlert)
         {
            _ShowStrengthAlert = param1.smAlert;
         }
         if(_IsMyTurn)
         {
            _WordOnLetters = param1.yourWordons?(param1.yourWordons).split(","):[];
         }
         else
         {
            _WordOnLetters = param1.otherWordons?(param1.otherWordons).split(","):[];
         }
         _TilesLeft = param1.tiles;
         if(GameSessionCacheList.SessionHasSeenEndAlert(_GameID))
         {
            _ShowEndingAlertCount = 2;
         }
         else if(_ShowEndingAlertCount == 0 && _TilesLeft == 0 && _YourLetters.length < DEFAULT_GRID.length)
         {
            _ShowEndingAlertCount = 1;
         }
         _PrevCycleNum = _CycleNum;
         _CycleNum = param1.cycle;
         if(ClientData.Instance.CurrentGameSession != null)
         {
            _loc8_ = GameSessionCacheList.GetSession(_GameID);
            if(param4 && _loc8_ != null && _loc8_.CycleNum == _CycleNum)
            {
               Debugger.Instance.Write("[GameSessionData::Set] Cached WordScore found in session.");
               _YourBestWord = _loc8_.BestWord;
               _ShowEndingAlertCount = _loc8_.EndingAlertCount;
            }
            else
            {
               _loc5_ = _IsMyTurn?_WordOnLetters.concat(_YourLetters):_YourLetters.concat();
               WordParser.CleanForScore(_loc5_);
               _loc7_ = Glossary.Instance.GetAllPossibleWords(_DictionaryLanguage,_loc5_);
               _loc6_ = this.WordOnLetters;
               WordParser.CleanForScore(_loc6_);
               _YourBestWord = Glossary.Instance.GetBestWord(_loc7_,this.YourLetters,_IsMyTurn?_loc6_:null,YourGrid);
            }
            this.dispatchEvent(new Event("change"));
         }
         StoreServerData(param1);
      }
      
      private function StoreServerData(param1:Object) : void
      {
         delete param1.smAlert;
         delete param1.coinsWon;
         delete param1.bonusCoinsWon;
         delete param1.coins;
         delete param1.stars;
         _LastData = param1;
      }
      
      public function EnableStrengthMeter() : void
      {
         _PlayerOptions = _PlayerOptions | 1;
      }
      
      public function SetHintValue(param1:int) : void
      {
         _HintsLeft = param1;
         if(_HintsLeft < 0)
         {
            _HintsLeft = 0;
         }
      }
      
      public function Lock() : void
      {
         _Locked = true;
      }
      
      public function Unlock() : void
      {
         var _loc1_:* = null;
         _Locked = false;
         if(_QueuedData.length > 0)
         {
            _loc1_ = _QueuedData.shift();
            Set(_loc1_.info,_loc1_.timeLeft);
         }
      }
      
      public function ExportLastServerData() : ByteArray
      {
         var _loc1_:* = null;
         if(_LastData != null)
         {
            _loc1_ = new ByteArray();
            _loc1_.writeObject(_LastData);
            _loc1_.compress();
            return _loc1_;
         }
         return null;
      }
      
      public function Dispose() : void
      {
         _GameID = null;
         _DictionaryLanguage = null;
         _YourLetters = null;
         _YourGrid = null;
         _YourBestWord = null;
         _OtherGrid = null;
         _WordOnLetters = null;
         _LastWord = null;
         _LastGrid = null;
         _QueuedData = null;
         _LastData = null;
         _CreatedTimestamp = 0;
         _PlayerOptions = 0;
         _You.Dispose();
         _You = null;
         _Other.Dispose();
         _Other = null;
      }
   }
}
