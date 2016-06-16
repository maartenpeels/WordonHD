package nl.hbgames.events
{
   import flash.events.Event;
   import nl.hbgames.data.UserChatData;
   
   public class ChatEvent extends Event
   {
      
      public static const UPDATED:String = "ChatSessionUpdated";
       
      private var _MsgAmount:int = 0;
      
      private var _BadgeAmount:int = 0;
      
      private var _GameID:String = "";
      
      private var _Messages:Vector.<UserChatData> = null;
      
      public function ChatEvent(param1:String, param2:String, param3:Vector.<UserChatData> = null, param4:int = 0)
      {
         _GameID = param2;
         _BadgeAmount = param4;
         _MsgAmount = param3 != null?param3.length:0;
         _Messages = param3;
         super(param1);
      }
      
      public function get BadgeAmount() : int
      {
         return _BadgeAmount;
      }
      
      public function get NewMessageAmount() : int
      {
         return _MsgAmount;
      }
      
      public function get GameID() : String
      {
         return _GameID;
      }
      
      public function get Messages() : Vector.<UserChatData>
      {
         return _Messages;
      }
   }
}
