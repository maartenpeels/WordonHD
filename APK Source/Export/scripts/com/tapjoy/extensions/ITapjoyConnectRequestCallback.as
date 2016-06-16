package com.tapjoy.extensions
{
   public interface ITapjoyConnectRequestCallback
   {
       
      function connectSucceeded() : void;
      
      function connectFailed() : void;
   }
}
