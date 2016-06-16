package nl.hbgames.data
{
   public class PushData extends Object
   {
      
      public static const ACTION_PLAY:uint = 1;
      
      public static const ACTION_CHAT:uint = 2;
       
      private var theActionType:int;
      
      private var theGameID:String;
      
      private var theMessage:String;
      
      public function PushData(param1:int, param2:String, param3:String = null)
      {
         super();
         theActionType = param1;
         theGameID = param2;
         theMessage = param3;
      }
      
      public function get actionType() : int
      {
         return theActionType;
      }
      
      public function get gameID() : String
      {
         return theGameID;
      }
      
      public function get message() : String
      {
         return theMessage;
      }
   }
}
