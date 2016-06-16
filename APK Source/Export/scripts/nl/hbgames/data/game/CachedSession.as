package nl.hbgames.data.game
{
   import nl.hbgames.solver.WordScore;
   import nl.hbgames.data.PlayerData;
   import flash.utils.ByteArray;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.utils.Debugger;
   
   public class CachedSession extends Object
   {
       
      private var _GameID:String;
      
      private var _CycleNum:int;
      
      private var _BestWord:WordScore;
      
      private var _Opponent:PlayerData;
      
      private var _HintsLeft:int;
      
      private var _PlayerOptions:int;
      
      private var _ByteData:ByteArray;
      
      private var _IsInitialized:Boolean;
      
      private var _OtherTilesetID:int;
      
      private var _YourTilesetID:int;
      
      private var _EndingAlertCount:int;
      
      public function CachedSession(param1:GameSessionData)
      {
         super();
         _IsInitialized = false;
         if(param1 != null)
         {
            try
            {
               _GameID = param1.GameID;
               _CycleNum = param1.CycleNum;
               _BestWord = param1.YourBestWord;
               _HintsLeft = param1.HintsLeft;
               _PlayerOptions = param1.PlayerOptionValue;
               _ByteData = param1.ExportLastServerData();
               _Opponent = param1.Opponent.Clone();
               _OtherTilesetID = param1.OtherTilesetID;
               _YourTilesetID = param1.YourTilesetID;
               _EndingAlertCount = param1.EndingAlertCount;
               _IsInitialized = true;
               return;
            }
            catch(e:Error)
            {
               Debugger.Instance.Write("[CachedSession] Could not cache the session! (" + e + ")",true);
               return;
            }
         }
      }
      
      public function get IsInitialized() : Boolean
      {
         return _IsInitialized;
      }
      
      public function get GameID() : String
      {
         return _GameID;
      }
      
      public function get CycleNum() : int
      {
         return _CycleNum;
      }
      
      public function get BestWord() : WordScore
      {
         return _BestWord;
      }
      
      public function get Opponent() : PlayerData
      {
         return _Opponent;
      }
      
      public function get OtherTilesetID() : int
      {
         return _OtherTilesetID;
      }
      
      public function get YourTilesetID() : int
      {
         return _YourTilesetID;
      }
      
      public function get EndingAlertCount() : int
      {
         return _EndingAlertCount;
      }
      
      public function GetRawData() : Object
      {
         var _loc1_:* = null;
         if(_IsInitialized)
         {
            try
            {
               _ByteData.uncompress();
               _ByteData.position = 0;
               _loc1_ = _ByteData.readObject();
               _loc1_.hintsLeft = _HintsLeft;
               _loc1_.playerOptions = _PlayerOptions;
               _loc1_.otherTilesetId = _OtherTilesetID;
               _loc1_.yourTilesetId = _YourTilesetID;
               var _loc3_:* = _loc1_;
               return _loc3_;
            }
            catch(e:Error)
            {
               var _loc4_:* = null;
               return _loc4_;
            }
            return null;
         }
         return null;
      }
      
      public function Dispose() : void
      {
         _GameID = null;
         _CycleNum = 0;
         _HintsLeft = 0;
         _PlayerOptions = 0;
         _BestWord = null;
         _ByteData = null;
         _Opponent = null;
         _IsInitialized = false;
      }
   }
}
