package nl.hbgames.events
{
   import flash.events.Event;
   
   public class SocialEvent extends Event
   {
      
      public static const BLOCKED:String = "userBlocked";
      
      public static const UNBLOCKED:String = "userUnblocked";
      
      public static const FAVORITE_ADDED:String = "favoriteAdded";
      
      public static const FAVORITE_REMOVED:String = "favoriteRemoved";
       
      private var _UserID:String;
      
      public function SocialEvent(param1:String, param2:String)
      {
         _UserID = param2?param2:"";
         super(param1,false,false);
      }
      
      public function get UserID() : String
      {
         return _UserID;
      }
   }
}
