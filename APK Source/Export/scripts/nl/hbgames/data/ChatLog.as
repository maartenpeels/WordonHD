package nl.hbgames.data
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import nl.hbgames.events.ChatEvent;
   import nl.hbgames.utils.Debugger;
   
   public class ChatLog extends EventDispatcher
   {
       
      private var _Sessions:Dictionary;
      
      public function ChatLog()
      {
         super();
         _Sessions = new Dictionary();
      }
      
      public function get CurrentChatSession() : ChatSessionData
      {
         return ClientData.Instance.CurrentGameSession != null?_Sessions[ClientData.Instance.CurrentGameSession.GameID]:null;
      }
      
      public function CreateSession(param1:String, param2:Boolean = false) : void
      {
         if(_Sessions[param1] == undefined)
         {
            _Sessions[param1] = new ChatSessionData(param1);
         }
         else if(param2)
         {
            _Sessions[param1].Dispose();
            _Sessions[param1] = null;
            _Sessions[param1] = new ChatSessionData(param1);
         }
      }
      
      public function GetSession(param1:String) : ChatSessionData
      {
         if(_Sessions[param1] != undefined)
         {
            return _Sessions[param1];
         }
         return null;
      }
      
      public function ProcessData(param1:Object) : void
      {
         var _loc2_:String = param1.gameId;
         if(_loc2_ != null && _loc2_ != "")
         {
            if(_Sessions[_loc2_] == undefined)
            {
               _Sessions[_loc2_] = new ChatSessionData(_loc2_,param1);
            }
            else
            {
               _Sessions[_loc2_].Merge(param1);
            }
            this.dispatchEvent(new ChatEvent("ChatSessionUpdated",_loc2_,null,_Sessions[_loc2_].NewChatAmount));
         }
         else
         {
            Debugger.Instance.Write("[ChatLog::ProcessData] Missing gameID in data to process. New chat lines ignored!",true);
         }
      }
      
      public function Dispose() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = _Sessions;
         for(var _loc1_ in _Sessions)
         {
            _Sessions[_loc1_].Dispose();
            delete _Sessions[_loc1_];
         }
         _Sessions = null;
      }
   }
}
