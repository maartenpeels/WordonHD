package nl.hbgames.events
{
   import flash.events.Event;
   
   public class WaitBoxEvent extends Event
   {
      
      public static const SHOW:String = "WaitBoxShow";
      
      public static const HIDE:String = "WaitBoxHide";
       
      public function WaitBoxEvent(param1:String)
      {
         super(param1);
      }
   }
}
