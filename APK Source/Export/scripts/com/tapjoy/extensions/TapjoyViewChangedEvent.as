package com.tapjoy.extensions
{
   import flash.events.Event;
   
   public class TapjoyViewChangedEvent extends Event
   {
      
      public static const TJ_VIEW_OPENING:String = "TJ_VIEW_OPENING";
      
      public static const TJ_VIEW_OPENED:String = "TJ_VIEW_OPENED";
      
      public static const TJ_VIEW_CLOSING:String = "TJ_VIEW_CLOSING";
      
      public static const TJ_VIEW_CLOSED:String = "TJ_VIEW_CLOSED";
      
      public static const VIEW_TYPE_OFFER_WALL_AD:int = 0;
      
      public static const VIEW_TYPE_FULLSCREEN_AD:int = 1;
      
      public static const VIEW_TYPE_VIDEO_AD:int = 3;
       
      private var _viewType:int;
      
      public function TapjoyViewChangedEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._viewType = int(param2);
      }
      
      public function get viewType() : int
      {
         return this._viewType;
      }
   }
}
