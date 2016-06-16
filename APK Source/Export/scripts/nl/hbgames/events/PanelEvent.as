package nl.hbgames.events
{
   import flash.events.Event;
   
   public class PanelEvent extends Event
   {
      
      public static const PANEL_ADDED:String = "PanelAddedEvent";
      
      public static const PANEL_CLOSED:String = "PanelClosedEvent";
      
      public static const ALL_PANELS_CLOSED:String = "AllPanelsClosedEvent";
       
      public function PanelEvent(param1:String)
      {
         super(param1);
      }
   }
}
