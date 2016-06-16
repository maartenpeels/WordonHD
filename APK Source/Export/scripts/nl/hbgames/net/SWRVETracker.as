package nl.hbgames.net
{
   import nl.hbgames.utils.Debugger;
   import flash.net.URLLoader;
   import flash.utils.Timer;
   import nl.hbgames.utils.Time;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import nl.hbgames.data.Storage;
   import flash.net.URLVariables;
   import flash.globalization.StringTools;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   
   public class SWRVETracker extends Object
   {
      
      private static var _Instance:SWRVETracker = null;
       
      private const MAX_SESSION_TIME:uint = 2880000;
      
      private const UPDATE_INTERVAL:uint = 10000;
      
      private const MAX_TRACK_INTERVAL:uint = 120000;
      
      private const MAX_BATCHED_ACTIONS:uint = 5;
      
      private const DATA_FILENAMES:Array = ["swrve_staging.bin","swrve_live.bin"];
      
      private var _DataFileName:String = "";
      
      private const REQUEST_REGISTER:String = "user/register";
      
      private const REQUEST_LOGIN:String = "user/login";
      
      private const REQUEST_BATCH:String = "event/1/mlog";
      
      private const ACTION_SESSION_START:String = "SESSION_START";
      
      private const ACTION_SESSION_END:String = "SESSION_END";
      
      private const ACTION_USER_ATTR:String = "USER_ATTR";
      
      private const ACTION_BUY_IN:String = "BUY_IN";
      
      private const ACTION_CURRENCY_GIVEN:String = "CURRENCY_GIVEN";
      
      private const ACTION_PURCHASE_ITEM:String = "PURCHASE_ITEM";
      
      private const ACTION_EVENT:String = "EVENT";
      
      private var _AppID:String;
      
      private var _AppVersion:String;
      
      private var _UserID:String;
      
      private var _SessionID:String;
      
      private var _AuthURL:String;
      
      private var _TrackingURL:String;
      
      private var _Loader:URLLoader;
      
      private var _Callback:Function;
      
      private var _Queue:Array;
      
      private var _IsBusy:Boolean;
      
      private var _Timer:Timer;
      
      private var _SessionExpireTime:Number;
      
      private var _TrackUpdateTime:Number;
      
      private var _RetrySendBatchAfterSessionRefresh:Boolean;
      
      private var _BatchedActions:Array;
      
      private var _UseLiveEnvironment:Boolean = false;
      
      private const MAX_RETRIES:uint = 3;
      
      private var _RetryCount:int = 3;
      
      public function SWRVETracker(param1:String, param2:String, param3:String, param4:Boolean = false)
      {
         var _loc5_:* = null;
         super();
         _Instance = this;
         _AppID = param2;
         _AppVersion = param3;
         _Queue = [];
         _BatchedActions = [];
         _IsBusy = false;
         _UseLiveEnvironment = param4;
         _DataFileName = _UseLiveEnvironment?DATA_FILENAMES[1]:DATA_FILENAMES[0];
         _RetrySendBatchAfterSessionRefresh = false;
         UpdateURLs(param1);
         _Loader = new URLLoader();
         _Loader.dataFormat = "text";
         _Loader.addEventListener("complete",OnRequestComplete);
         _Loader.addEventListener("httpResponseStatus",OnHTTPStatus);
         _Loader.addEventListener("ioError",OnRequestError);
         _Loader.addEventListener("securityError",OnSecurityError);
         _Timer = new Timer(10000);
         _Timer.addEventListener("timer",OnIntervalUpdate);
         _Timer.start();
         if(Storage.FileExists(_DataFileName,"ios_documents"))
         {
            _loc5_ = Storage.ReadFile(_DataFileName,false,"ios_documents");
            _UserID = _loc5_.readUTFBytes(_loc5_.bytesAvailable);
            if(_UserID)
            {
               AuthRequest("user/login",OnSessionRefresh);
            }
            else
            {
               AuthRequest("user/register",OnRegisterNewUser);
            }
         }
         else
         {
            AuthRequest("user/register",OnRegisterNewUser);
         }
      }
      
      public static function get Instance() : SWRVETracker
      {
         if(_Instance == null)
         {
            Debugger.Instance.Write("[SWRVETracker::Instance] SWRVETracker not created. Use new SWRVETracker() to create the Instance.");
            return null;
         }
         return _Instance;
      }
      
      public function get SessionID() : String
      {
         return _SessionID;
      }
      
      public function UpdateURLs(param1:String) : void
      {
         _TrackingURL = CheckURL(param1);
         _AuthURL = CheckURL(param1);
         _RetryCount = 3;
      }
      
      public function TrackSessionStart() : void
      {
         Batch("SESSION_START");
      }
      
      public function TrackSessionEnd() : void
      {
         Batch("SESSION_END");
         SendBatch();
      }
      
      public function TrackUser(param1:Object) : void
      {
         Batch("USER_ATTR",param1);
      }
      
      public function TrackRealPurchase(param1:String, param2:Number, param3:String, param4:int, param5:String) : void
      {
         var _loc6_:Object = {
            "rcurr":param1,
            "ramount":param2,
            "vcurr":param3,
            "vamount":param4,
            "provider":param5
         };
         Batch("BUY_IN",_loc6_);
         SendBatch();
      }
      
      public function TrackCurrencyGiven(param1:String, param2:int) : void
      {
         var _loc3_:Object = {
            "vcurr":param1,
            "vamount":param2
         };
         Batch("CURRENCY_GIVEN",_loc3_);
      }
      
      public function TrackVirtualPurchase(param1:int, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:Object = {
            "quantity":param1,
            "itemId":param2,
            "vamount":param3,
            "vcurr":param4
         };
         Batch("PURCHASE_ITEM",_loc5_);
      }
      
      public function TrackCustomEvent(param1:String, param2:Object = null) : void
      {
         var _loc3_:Object = {"eventName":param1};
         Batch("EVENT",_loc3_,param2);
      }
      
      private function Batch(param1:String, param2:Object = null, param3:Object = null) : void
      {
         var _loc4_:* = null;
         if(_RetryCount > 0)
         {
            _loc4_ = {
               "action":param1,
               "appversion":_AppVersion
            };
            if(param2 != null)
            {
               _loc4_.attr = param2;
            }
            if(param3 != null)
            {
               param3.sessiontime = Time.SessionTime;
            }
            else
            {
               var param3:Object = {"sessiontime":Time.SessionTime};
            }
            _loc4_.payload = param3;
            _BatchedActions.push(_loc4_);
            _TrackUpdateTime = new Date().getTime() + 120000;
            Debugger.Instance.Write("[SWRVETracker::Batch] Action \'" + param1 + "\' is batched");
            if(_BatchedActions.length >= 5)
            {
               SendBatch();
            }
         }
      }
      
      public function SendBatch() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         var _loc1_:* = null;
         if(_RetryCount > 0)
         {
            if(_SessionID != null && _SessionID.length > 0 && _TrackingURL)
            {
               Debugger.Instance.Write("[SWRVETracker::SendBatch] Sending batched actions (" + _BatchedActions.length + " in total)");
               _loc3_ = 0;
               while(_loc3_ < _BatchedActions.length)
               {
                  _BatchedActions[_loc3_].sid = _SessionID;
                  _loc3_++;
               }
               _loc2_ = _TrackingURL + "event/1/mlog";
               _loc1_ = new URLRequest(_loc2_);
               _loc1_.method = "POST";
               _loc1_.data = JSON.stringify(_BatchedActions);
               _BatchedActions = [];
               if(!_IsBusy)
               {
                  _IsBusy = true;
                  Load(_loc1_,OnBatchHandled);
               }
               else
               {
                  Queue(_loc1_,OnBatchHandled);
               }
            }
            else
            {
               Debugger.Instance.Write("[SWRVETracker::SendBatch] No valid sessionID detected. Will retry automatically after session has refreshed.",true);
               _RetrySendBatchAfterSessionRefresh = true;
               _RetryCount = _RetryCount - 1;
               if(_RetryCount == 0)
               {
                  Debugger.Instance.Write("[SWRVETracker::SendBatch] Retry count limit reached! Not sending data anymore.",true);
               }
            }
         }
      }
      
      private function OnRegisterNewUser(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1 && param1.userId)
         {
            Debugger.Instance.Write("[SWRVETracker::OnRegisterNewUser] User registered. ID = " + param1.userId);
            _UserID = param1.userId;
            if(param1.id != null)
            {
               OnSessionRefresh(param1);
            }
            else
            {
               AuthRequest("user/login",OnSessionRefresh);
            }
            _loc2_ = new ByteArray();
            _loc2_.writeUTFBytes(_UserID);
            Storage.WriteFile(_DataFileName,_loc2_,false,false,"ios_documents");
         }
         else
         {
            Debugger.Instance.Write("[SWRVETracker::OnRegisterNewUser] Missing tracking id in response!",true);
         }
      }
      
      private function OnSessionRefresh(param1:Object) : void
      {
         if(param1 && param1.id)
         {
            _SessionID = param1.id;
            _SessionExpireTime = new Date().getTime() + 2880000;
            Debugger.Instance.Write("[SWRVETracker::OnSessionRefresh] Session refreshed. Token: " + _SessionID + " [valid until " + new Date(_SessionExpireTime) + "]");
            if(_RetrySendBatchAfterSessionRefresh)
            {
               _RetrySendBatchAfterSessionRefresh = false;
               SendBatch();
            }
         }
         else
         {
            Debugger.Instance.Write("[SWRVETracker::OnSessionRefresh] Missing session id in response!",true);
         }
      }
      
      private function OnBatchHandled(param1:Object) : void
      {
         if(param1 && param1.data == "OK")
         {
            Debugger.Instance.Write("[SWRVETracker::OnBatchHandled] Batch sent succesfully.");
         }
         else
         {
            Debugger.Instance.Write("[SWRVETracker::OnBatchHandled] Batch sent failed. JSON object might not comply to server expected format.",true);
         }
      }
      
      private function AuthRequest(param1:String, param2:Function) : void
      {
         Debugger.Instance.Write("[SWRVETracker::AuthRequest] Preparing auth request \'" + param1 + "\'");
         var _loc6_:* = false;
         var _loc5_:String = _AuthURL + _AppID + "/" + param1;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.appversion = _AppVersion;
         if(param1 == "user/login")
         {
            _loc6_ = true;
            _loc5_ = _loc5_ + ("/" + _UserID);
         }
         else if(param1 == "user/register")
         {
            _loc6_ = false;
            _loc3_.locale = new StringTools("i-default").actualLocaleIDName;
         }
         var _loc4_:URLRequest = new URLRequest(_loc5_);
         _loc4_.method = "GET";
         _loc4_.data = _loc3_;
         if(!_IsBusy)
         {
            _IsBusy = true;
            Load(_loc4_,param2);
         }
         else
         {
            Queue(_loc4_,param2,_loc6_);
         }
      }
      
      private function Load(param1:URLRequest, param2:Function) : void
      {
         Debugger.Instance.Write("[SWRVETracker::Load] Sending request \'" + param1.url + "\'");
         _Loader.load(param1);
         _Callback = param2;
      }
      
      private function OnRequestComplete(param1:Event) : void
      {
         Debugger.Instance.Write("[SWRVETracker::OnRequestComplete] Request completed");
         var _loc2_:String = _Loader.data;
         var _loc3_:Object = {};
         try
         {
            _loc3_ = JSON.parse(_loc2_);
         }
         catch(e:Error)
         {
            _loc3_ = {"data":_loc2_};
         }
         if(_Callback != null)
         {
            _Callback(_loc3_);
            _Callback = null;
         }
         CheckQueue();
      }
      
      private function OnHTTPStatus(param1:HTTPStatusEvent) : void
      {
         if(param1.status != 200)
         {
            Debugger.Instance.Write("[SWRVETracker::OnHTTPStatus] Unhandled error status #" + param1.status + " received.");
         }
      }
      
      private function OnRequestError(param1:IOErrorEvent) : void
      {
         Debugger.Instance.Write("[SWRVETracker::OnRequestError] Request IO error: " + param1,true);
         CheckQueue();
      }
      
      private function OnSecurityError(param1:SecurityErrorEvent) : void
      {
         Debugger.Instance.Write("[SWRVETracker::OnSecurityError] Security error: " + param1,true);
         CheckQueue();
      }
      
      private function Queue(param1:URLRequest, param2:Function, param3:Boolean = false) : void
      {
         if(param3)
         {
            _Queue.unshift({
               "req":param1,
               "callback":param2
            });
         }
         else
         {
            _Queue.push({
               "req":param1,
               "callback":param2
            });
         }
      }
      
      private function CheckQueue() : void
      {
         var _loc1_:* = null;
         _IsBusy = false;
         if(_Queue.length > 0)
         {
            _loc1_ = _Queue.shift();
            Load(_loc1_.req,_loc1_.callback);
         }
      }
      
      private function OnIntervalUpdate(param1:TimerEvent) : void
      {
         var _loc2_:* = NaN;
         if(_UserID != null)
         {
            _loc2_ = new Date().getTime();
            if(_loc2_ > _SessionExpireTime)
            {
               _SessionExpireTime = _loc2_ + 2880000;
               AuthRequest("user/login",OnSessionRefresh);
            }
            if(_loc2_ > _TrackUpdateTime && _BatchedActions.length > 0)
            {
               SendBatch();
            }
         }
      }
      
      private function CheckURL(param1:String) : String
      {
         if(param1.charAt(param1.length - 1) == "/")
         {
            return param1;
         }
         return param1 + "/";
      }
      
      public function Dispose() : void
      {
         _Timer.removeEventListener("timer",OnIntervalUpdate);
         _Timer.stop();
         _Timer = null;
         _Loader.removeEventListener("complete",OnRequestComplete);
         _Loader.removeEventListener("ioError",OnRequestError);
         _Loader.removeEventListener("securityError",OnSecurityError);
         _Loader.removeEventListener("httpResponseStatus",OnHTTPStatus);
         _Loader = null;
         _AppID = null;
         _UserID = null;
         _SessionID = null;
         _AuthURL = null;
         _TrackingURL = null;
         _Queue = null;
         _BatchedActions = null;
         _Callback = null;
         _Instance = null;
      }
   }
}
