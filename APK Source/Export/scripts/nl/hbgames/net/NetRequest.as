package nl.hbgames.net
{
   import flash.utils.Timer;
   import flash.net.URLLoader;
   import flash.events.TimerEvent;
   import flash.events.IOErrorEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.Event;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.utils.StringUtil;
   import flash.net.URLRequest;
   
   public class NetRequest extends Object
   {
       
      private const TIME_OUT_INTERVAL:Number = 30.0;
      
      private var theConnector:NetConnector = null;
      
      private var theFinalizer:Function = null;
      
      private var theCallback:Function = null;
      
      private var theTimer:Timer = null;
      
      private var theURLLoader:URLLoader = null;
      
      private var theShowErrorsFlag:Boolean = false;
      
      private var theProcessedFlag:Boolean = false;
      
      public function NetRequest(param1:Function, param2:Function, param3:URLRequest, param4:String, param5:Boolean = false)
      {
         super();
         theFinalizer = param1;
         theCallback = param2;
         theShowErrorsFlag = param5;
         theTimer = new Timer(30 * 1000,1);
         theTimer.addEventListener("timerComplete",onTimeOut);
         theTimer.start();
         try
         {
            theURLLoader = new URLLoader();
            theURLLoader.dataFormat = param4;
            theURLLoader.addEventListener("complete",onRequestComplete);
            theURLLoader.addEventListener("ioError",onRequestIOError);
            theURLLoader.addEventListener("securityError",onRequestSecurityError);
            theURLLoader.addEventListener("httpResponseStatus",onRequestResponseStatus);
            theURLLoader.load(param3);
            Debugger.Instance.Write("[NetRequest] Calling " + param3.url);
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[NetRequest] Error occured while creating the URLLoader for the NetRequest! (" + e + ")",true);
            forceStatusResponse(251);
         }
         theProcessedFlag = false;
      }
      
      private function onTimeOut(param1:TimerEvent) : void
      {
         forceStatusResponse(255);
      }
      
      private function onRequestIOError(param1:IOErrorEvent) : void
      {
         forceStatusResponse(254);
      }
      
      private function onRequestSecurityError(param1:IOErrorEvent) : void
      {
         forceStatusResponse(253);
      }
      
      private function onRequestResponseStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      private function forceStatusResponse(param1:int) : void
      {
         processResult(JSON.stringify({
            "result":":(",
            "code":param1
         }));
      }
      
      private function onRequestComplete(param1:Event) : void
      {
         Debugger.Instance.Write("[NetRequest::onRequestComplete] Data received!");
         var _loc2_:* = theURLLoader.data;
         if(_loc2_ != null && _loc2_ != "")
         {
            processResult(_loc2_);
            return;
         }
         forceStatusResponse(251);
      }
      
      private function processResult(param1:*) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = false;
         if(!theProcessedFlag)
         {
            theProcessedFlag = true;
            var _loc4_:* = 0;
            try
            {
               _loc2_ = JSON.parse(param1);
               _loc3_ = true;
            }
            catch(anError:Error)
            {
               _loc3_ = false;
               if(theShowErrorsFlag)
               {
                  Debugger.Instance.Write("[NetRequest::ProcessResult] JSON parse error catched. Raw data = " + StringUtil.Trim(param1),true,true);
               }
               _loc4_ = 0;
            }
         }
      }
      
      private function dispose() : void
      {
         if(theTimer != null)
         {
            theTimer.stop();
            theTimer.removeEventListener("timerComplete",onTimeOut);
            theTimer = null;
         }
         if(theURLLoader != null)
         {
            theURLLoader.removeEventListener("complete",onRequestComplete);
            theURLLoader.removeEventListener("ioError",onRequestIOError);
            theURLLoader.removeEventListener("securityError",onRequestSecurityError);
            theURLLoader.removeEventListener("httpResponseStatus",onRequestResponseStatus);
            theURLLoader = null;
         }
         theFinalizer = null;
         theCallback = null;
         theProcessedFlag = true;
      }
   }
}
