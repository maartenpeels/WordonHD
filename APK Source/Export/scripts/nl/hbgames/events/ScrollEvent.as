package nl.hbgames.events
{
   import flash.events.Event;
   
   public class ScrollEvent extends Event
   {
      
      public static const SELECTED:String = "Selected";
      
      public static const SCROLLING:String = "Scrolling";
      
      public static const TAPPED:String = "Tapped";
      
      public static const SELECTED_TAPPED:String = "SelectedTapped";
       
      public function ScrollEvent(param1:String)
      {
         super(param1);
      }
   }
}
