package com.tapjoy.extensions
{
   public class TJEvent extends Object
   {
       
      private var _eventName:String;
      
      private var _guid:String;
      
      private var _parameter:String;
      
      private var _callback:ITJEventCallback;
      
      private var _isContentAvaliable:Boolean = false;
      
      private var _isContentReady:Boolean = false;
      
      public function TJEvent(param1:String, param2:String, param3:ITJEventCallback)
      {
         super();
         this._eventName = param1;
         this._parameter = param2;
         this._callback = param3;
         this._guid = TapjoyAIR.getTapjoyConnectInstance().createEvent(this,param1,param2);
      }
      
      public function send() : void
      {
         this._isContentAvaliable = false;
         this._isContentReady = false;
         TapjoyAIR.getTapjoyConnectInstance().sendEvent(this._guid);
      }
      
      public function show() : void
      {
         TapjoyAIR.getTapjoyConnectInstance().showEvent(this._guid);
      }
      
      public function enableAutoPresent(param1:Boolean) : void
      {
         TapjoyAIR.getTapjoyConnectInstance().enableEventAutoPresent(this._guid,param1);
      }
      
      public function enablePreload(param1:Boolean) : void
      {
         TapjoyAIR.getTapjoyConnectInstance().enableEventPreload(this._guid,param1);
      }
      
      public function triggerSendEventSucceeded(param1:Boolean) : void
      {
         this._isContentAvaliable = param1;
         this._callback.sendEventSucceeded(this,param1);
      }
      
      public function triggerSendEventFailed(param1:String) : void
      {
         this._callback.sendEventFailed(this,param1);
      }
      
      public function triggerContentIsReady(param1:int) : void
      {
         this._isContentReady = true;
         this._callback.contentIsReady(this,param1);
      }
      
      public function triggerContentDidAppear() : void
      {
         this._callback.contentDidAppear(this);
      }
      
      public function triggerContentDidDisappear() : void
      {
         this._callback.contentDidDisappear(this);
      }
      
      public function triggerDidRequestAction(param1:int, param2:String, param3:int) : void
      {
         var _loc4_:TJEventRequest = new TJEventRequest(this._guid,param1,param2,param3);
         this._callback.didRequestAction(_loc4_);
      }
      
      public function get eventName() : String
      {
         return this._eventName;
      }
      
      public function get isContentAvaliable() : Boolean
      {
         return this._isContentAvaliable;
      }
      
      public function get isContentReady() : Boolean
      {
         return this._isContentReady;
      }
      
      public function get guid() : String
      {
         return this._guid;
      }
      
      public function get callback() : ITJEventCallback
      {
         return this._callback;
      }
   }
}
