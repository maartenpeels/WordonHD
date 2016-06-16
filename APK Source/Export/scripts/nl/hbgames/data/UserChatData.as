package nl.hbgames.data
{
   public class UserChatData extends Object
   {
       
      private var _ID:String;
      
      private var _Timestamp:Number;
      
      private var _Message:String;
      
      private var _IsMyMessage:Boolean;
      
      public function UserChatData(param1:Array)
      {
         super();
         _Timestamp = param1[0];
         _IsMyMessage = param1[1] == 1;
         _Message = param1[2];
         _ID = (Math.random() * 99999999 + "_" + (Math.random() * 99999999)).toString();
      }
      
      public function get ID() : String
      {
         return _ID;
      }
      
      public function get Timestamp() : Number
      {
         return _Timestamp;
      }
      
      public function get Message() : String
      {
         return _Message;
      }
      
      public function get IsMyMessage() : Boolean
      {
         return _IsMyMessage;
      }
      
      public function UpdateTimestamp(param1:Number) : void
      {
         _Timestamp = param1;
      }
      
      public function IsDuplicate(param1:UserChatData) : Boolean
      {
         if(_Timestamp != param1.Timestamp)
         {
            return false;
         }
         if(_Message != param1.Message)
         {
            return false;
         }
         if(_IsMyMessage != param1.IsMyMessage)
         {
            return false;
         }
         return true;
      }
      
      public function Dispose() : void
      {
         _Timestamp = 0;
         _Message = null;
         _ID = null;
      }
   }
}
