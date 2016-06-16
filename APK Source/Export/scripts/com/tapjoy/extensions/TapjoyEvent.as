package com.tapjoy.extensions
{
   import flash.events.Event;
   
   public class TapjoyEvent extends Event
   {
      
      public static const TJ_CONNECT_SUCCESS:String = "TJ_CONNECT_SUCCESS";
      
      public static const TJ_CONNECT_FAILED:String = "TJ_CONNECT_FAILED";
      
      public static const TJ_TAP_POINTS_FAILED:String = "TJ_TAP_POINTS_FAILED";
      
      public static const TJ_SPENT_TAP_POINTS_FAILED:String = "TJ_SPENT_TAP_POINTS_FAILED";
      
      public static const TJ_AWARDED_TAP_POINTS_FAILED:String = "TJ_AWARDED_TAP_POINTS_FAILED";
      
      public static const TJ_EARNED_TAP_POINTS:String = "TJ_EARNED_TAP_POINTS";
      
      public static const TJ_VIDEO_START:String = "TJ_VIDEO_START";
      
      public static const TJ_VIDEO_ERROR:String = "TJ_VIDEO_ERROR";
      
      public static const TJ_VIDEO_COMPLETE:String = "TJ_VIDEO_COMPLETE";
      
      public static const TJ_GET_FULLSCREEN_AD:String = "TJ_GET_FULLSCREEN_AD";
      
      public static const TJ_GET_FULLSCREEN_AD_FAILED:String = "TJ_GET_FULLSCREEN_AD_FAILED";
      
      public static const TJ_GET_DISPLAY_AD_FAILED:String = "TJ_GET_DISPLAY_AD_FAILED";
      
      public static const TJ_SHOW_OFFERWALL_FAILED:String = "TJ_SHOW_OFFERWALL_FAILED";
      
      public static const TJ_VIDEO_BEGAN:String = "TJ_VIDEO_BEGAN";
      
      public static const TJ_VIDEO_CLOSED:String = "TJ_VIDEO_CLOSED";
      
      public static const TJ_GET_FEATURED_APP:String = "TJ_GET_FULLSCREEN_AD";
      
      public static const TJ_GET_FEATURED_APP_FAILED:String = "TJ_GET_FULLSCREEN_AD_FAILED";
       
      private var _value:String;
      
      public function TapjoyEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._value = param2;
      }
      
      public function get value() : String
      {
         return this._value;
      }
   }
}
