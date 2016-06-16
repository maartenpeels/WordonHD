package nl.hbgames.ui.list
{
   public class BaseChatListItem extends BaseListItem
   {
       
      private var _Timestamp:Number;
      
      private var _MessageID:String;
      
      public function BaseChatListItem(param1:String, param2:Number)
      {
         super(null);
         _Timestamp = param2;
         _MessageID = param1;
      }
      
      public function get Timestamp() : Number
      {
         return _Timestamp;
      }
      
      public function get MessageID() : String
      {
         return _MessageID;
      }
      
      public function UpdateTimestamp(param1:Number) : void
      {
         _Timestamp = param1;
      }
      
      override public function Dispose() : void
      {
         _MessageID = null;
         _Timestamp = 0;
         super.Dispose();
      }
   }
}
