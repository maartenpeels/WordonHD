package com.tapjoy.extensions
{
   import flash.events.Event;
   
   public class TJEventCallback extends Event
   {
      
      public static const TJ_SEND_EVENT_COMPLETE:String = "TJ_SEND_EVENT_COMPLETE";
      
      public static const TJ_SEND_EVENT_COMPLETE_WITH_CONTENT:String = "TJ_SEND_EVENT_COMPLETE_WITH_CONTENT";
      
      public static const TJ_SEND_EVENT_CONTENT_IS_READY:String = "TJ_SEND_EVENT_CONTENT_IS_READY";
      
      public static const TJ_SEND_EVENT_FAIL:String = "TJ_SEND_EVENT_FAIL";
      
      public static const TJ_CONTENT_DID_SHOW:String = "TJ_CONTENT_DID_SHOW";
      
      public static const TJ_CONTENT_DID_DISAPPEAR:String = "TJ_CONTENT_DID_DISAPPEAR";
      
      public static const TJ_DID_REQUEST_ACTION:String = "TJ_DID_REQUEST_ACTION";
       
      private var _tjEvent:TJEvent;
      
      public function TJEventCallback(param1:String, param2:TJEvent, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._tjEvent = param2;
      }
      
      public function get tjEvent() : TJEvent
      {
         return this._tjEvent;
      }
   }
}
