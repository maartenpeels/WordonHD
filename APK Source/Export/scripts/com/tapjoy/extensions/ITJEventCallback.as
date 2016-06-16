package com.tapjoy.extensions
{
   public interface ITJEventCallback
   {
       
      function sendEventSucceeded(param1:TJEvent, param2:Boolean) : void;
      
      function sendEventFailed(param1:TJEvent, param2:String) : void;
      
      function contentIsReady(param1:TJEvent, param2:int) : void;
      
      function contentDidAppear(param1:TJEvent) : void;
      
      function contentDidDisappear(param1:TJEvent) : void;
      
      function didRequestAction(param1:TJEventRequest) : void;
   }
}
