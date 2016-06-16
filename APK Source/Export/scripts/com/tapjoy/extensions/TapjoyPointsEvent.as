package com.tapjoy.extensions
{
   import flash.events.Event;
   
   public class TapjoyPointsEvent extends Event
   {
      
      public static const TJ_TAP_POINTS:String = "TJ_TAP_POINTS";
      
      public static const TJ_SPENT_TAP_POINTS:String = "TJ_SPENT_TAP_POINTS";
      
      public static const TJ_AWARDED_TAP_POINTS:String = "TJ_AWARDED_TAP_POINTS";
       
      private var _currencyName:String;
      
      private var _pointTotal:int;
      
      public function TapjoyPointsEvent(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this._currencyName = param2;
         this._pointTotal = param3;
      }
      
      public function get pointTotal() : int
      {
         return this._pointTotal;
      }
      
      public function get currencyName() : String
      {
         return this._currencyName;
      }
   }
}
