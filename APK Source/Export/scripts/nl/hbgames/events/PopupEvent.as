package nl.hbgames.events
{
   import flash.events.Event;
   
   public class PopupEvent extends Event
   {
      
      public static const POPUP_ADDED:String = "PopupAddedEvent";
      
      public static const POPUP_CLOSED:String = "PopupClosedEvent";
      
      public static const ALL_POPUPS_CLOSED:String = "AllPopupsClosedEvent";
       
      public function PopupEvent(param1:String)
      {
         super(param1);
      }
   }
}
