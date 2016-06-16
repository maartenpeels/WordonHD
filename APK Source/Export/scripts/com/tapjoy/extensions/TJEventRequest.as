package com.tapjoy.extensions
{
   public class TJEventRequest extends Object
   {
      
      public static const TYPE_IN_APP_PURCHASE:int = 1;
      
      public static const TYPE_VIRTUAL_GOOD:int = 2;
      
      public static const TYPE_CURRENCY:int = 3;
      
      public static const TYPE_NAVIGATION:int = 4;
       
      private var _eventGuid:String;
      
      private var _type:int;
      
      private var _identifier:String;
      
      private var _quantity:int;
      
      public function TJEventRequest(param1:String, param2:int, param3:String, param4:int)
      {
         super();
         this._eventGuid = param1;
         this._type = param2;
         this._identifier = param3;
         this._quantity = param4;
      }
      
      public function eventRequestCompleted() : void
      {
         TapjoyAIR.getTapjoyConnectInstance().sendEventRequestComplete(this._eventGuid);
      }
      
      public function eventRequestCancelled() : void
      {
         TapjoyAIR.getTapjoyConnectInstance().sendEventRequestCancelled(this._eventGuid);
      }
      
      public function get eventGuid() : String
      {
         return this._eventGuid;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get identifier() : String
      {
         return this._identifier;
      }
      
      public function get quantity() : int
      {
         return this._quantity;
      }
   }
}
