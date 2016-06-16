package com.tapjoy.extensions
{
   import flash.events.Event;
   import flash.display.MovieClip;
   
   public class TapjoyDisplayAdEvent extends Event
   {
      
      public static const TJ_GET_DISPLAY_AD:String = "TJ_GET_DISPLAY_AD";
       
      private var _displayAd:MovieClip;
      
      public function TapjoyDisplayAdEvent(param1:String, param2:MovieClip, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._displayAd = param2;
      }
      
      public function get displayAd() : MovieClip
      {
         return this._displayAd;
      }
   }
}
