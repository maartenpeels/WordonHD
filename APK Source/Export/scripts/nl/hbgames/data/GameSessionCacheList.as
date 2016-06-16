package nl.hbgames.data
{
   import flash.utils.Dictionary;
   import nl.hbgames.data.game.CachedSession;
   
   public class GameSessionCacheList extends Object
   {
      
      private static var _CachedSessions:Dictionary;
      
      private static var _SessionHasSeenEndAlert:Dictionary;
       
      public function GameSessionCacheList()
      {
         super();
         _CachedSessions = new Dictionary();
         _SessionHasSeenEndAlert = new Dictionary();
      }
      
      public static function StoreSession(param1:GameSessionData) : void
      {
         var _loc2_:CachedSession = new CachedSession(param1);
         if(_loc2_.IsInitialized)
         {
            _CachedSessions[param1.GameID] = _loc2_;
            if(_loc2_.EndingAlertCount == 2)
            {
               _SessionHasSeenEndAlert[_loc2_.GameID] = true;
            }
         }
      }
      
      public static function IsCached(param1:String) : Boolean
      {
         return _CachedSessions[param1] != undefined;
      }
      
      public static function GetSession(param1:String) : CachedSession
      {
         var _loc2_:CachedSession = _CachedSessions[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         return null;
      }
      
      public static function SessionHasSeenEndAlert(param1:String) : Boolean
      {
         if(_SessionHasSeenEndAlert[param1] != undefined)
         {
            return _SessionHasSeenEndAlert[param1];
         }
         return false;
      }
      
      public static function RemoveSessionByID(param1:String) : void
      {
         if(_CachedSessions[param1] != undefined)
         {
            _CachedSessions[param1].Dispose();
            delete _CachedSessions[param1];
         }
      }
      
      public static function Reset() : void
      {
         if(_CachedSessions != null)
         {
            var _loc3_:* = 0;
            var _loc2_:* = _CachedSessions;
            for(var _loc1_ in _CachedSessions)
            {
               _CachedSessions[_loc1_].Dispose();
               delete _CachedSessions[_loc1_];
            }
            _CachedSessions = new Dictionary();
         }
      }
      
      public function Dispose() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = _CachedSessions;
         for(var _loc1_ in _CachedSessions)
         {
            _CachedSessions[_loc1_].Dispose();
            delete _CachedSessions[_loc1_];
         }
         var _loc5_:* = 0;
         var _loc4_:* = _SessionHasSeenEndAlert;
         for(_loc1_ in _SessionHasSeenEndAlert)
         {
            delete _SessionHasSeenEndAlert[_loc1_];
         }
         _CachedSessions = null;
         _SessionHasSeenEndAlert = null;
      }
   }
}
