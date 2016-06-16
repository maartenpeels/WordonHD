package com.tapjoy.extensions
{
   import flash.events.EventDispatcher;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.system.Capabilities;
   import flash.filesystem.FileMode;
   import flash.utils.ByteArray;
   import flash.external.ExtensionContext;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import mx.utils.UIDUtil;
   
   public class TapjoyAIR extends EventDispatcher
   {
      
      private static const CONNECT_FLAG_DICTIONARY_NAME:String = "connectFlags";
      
      private static const SEGMENTS_DICTIONARY_NAME:String = "segmentationParams";
      
      private static var privateCall:Boolean = false;
      
      private static var mInstance:TapjoyAIR = null;
      
      private static var _connectCallback:ITapjoyConnectRequestCallback = null;
      
      private static const applicationAssetsPath:String = "META-INF/AIR/extensions/com.tapjoy.extensions/META-INF/ANE/Android-ARM/bin/android/assets/";
      
      private static const mraidJsFileName:String = "mraid.js";
      
      private static const closeButtonImageName:String = "tj_close_button.png";
       
      private var displayAdSize:TapjoyDisplayAdSize;
      
      private var extContext:ExtensionContext = null;
      
      private var _isMobilePlatform:Boolean = false;
      
      private var _eventDictionary:Dictionary;
      
      public function TapjoyAIR()
      {
         this.displayAdSize = TapjoyDisplayAdSize.TJC_DISPLAY_AD_SIZE_640X100;
         this._eventDictionary = new Dictionary();
         super();
         this._isMobilePlatform = Capabilities.manufacturer.search("iOS") > -1 || Capabilities.manufacturer.search("Android") > -1;
         if(!privateCall)
         {
            trace("TapjoyAIR:error Access Denied: Try using the getTapjoyConnectInstance() for access.");
            return;
         }
         if(this._isMobilePlatform)
         {
            this.extContext = ExtensionContext.createExtensionContext("com.tapjoy.extensions","tapjoy");
            if(this.extContext != null)
            {
               this.extContext.addEventListener(StatusEvent.STATUS,this.onStatus,false,0,true);
               this.extContext.addEventListener(Event.DEACTIVATE,this.deactivate);
               this.extContext.addEventListener(Event.ACTIVATE,this.activate);
               trace("TapjoyAIR:info ExtensionContext succesfully constructed");
            }
            else
            {
               trace("TapjoyAIR:error ExtensionContext was unable to be constructed properly.");
            }
         }
         else
         {
            trace("TapjoyAIR:error Mobile platform was not able to be determined.");
         }
      }
      
      public static function getTapjoyConnectInstance() : TapjoyAIR
      {
         if(mInstance == null)
         {
            privateCall = true;
            TapjoyAIR.mInstance = new TapjoyAIR();
            privateCall = false;
         }
         return TapjoyAIR.mInstance;
      }
      
      public static function requestTapjoyConnect(param1:String, param2:String, param3:Object = null, param4:ITapjoyConnectRequestCallback = null) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:File = null;
         var _loc9_:FileStream = null;
         var _loc10_:String = null;
         _connectCallback = param4;
         if(TapjoyAIR.getTapjoyConnectInstance() != null)
         {
            if(TapjoyAIR.getTapjoyConnectInstance()._isMobilePlatform)
            {
               for(_loc5_ in param3)
               {
                  if(typeof param3[_loc5_] == "object")
                  {
                     _loc6_ = param3[_loc5_];
                     _loc7_ = _loc5_;
                     transferDictionaryToNativeLanguageWithName(_loc6_,_loc7_);
                     TapjoyAIR.getTapjoyConnectInstance().callExtensionMethod("setDictionaryInDictionary",_loc5_,_loc7_,TapjoyAIR.CONNECT_FLAG_DICTIONARY_NAME);
                  }
                  else
                  {
                     TapjoyAIR.getTapjoyConnectInstance().callExtensionMethod("setKeyValueInDictionary",_loc5_,param3[_loc5_],TapjoyAIR.CONNECT_FLAG_DICTIONARY_NAME);
                  }
               }
               if(Capabilities.manufacturer.search("Android") > -1)
               {
                  loadAsset(closeButtonImageName);
                  _loc8_ = File.applicationDirectory;
                  _loc8_ = _loc8_.resolvePath(applicationAssetsPath + mraidJsFileName);
                  if(_loc8_.exists)
                  {
                     _loc9_ = new FileStream();
                     _loc9_.open(_loc8_,FileMode.READ);
                     _loc10_ = _loc9_.readMultiByte(_loc9_.bytesAvailable,File.systemCharset);
                     _loc9_.close();
                     TapjoyAIR.getTapjoyConnectInstance().callExtensionMethod("loadMraidJs",_loc10_);
                     TapjoyAIR.getTapjoyConnectInstance().callExtensionMethod("requestTapjoyConnect",param1,param2);
                  }
               }
               else
               {
                  TapjoyAIR.getTapjoyConnectInstance().callExtensionMethod("requestTapjoyConnect",param1,param2);
               }
            }
         }
      }
      
      private static function transferDictionaryToNativeLanguageWithName(param1:Object, param2:String) : void
      {
         var _loc3_:String = null;
         for(_loc3_ in param1)
         {
            TapjoyAIR.getTapjoyConnectInstance().callExtensionMethod("setKeyValueInDictionary",_loc3_,param1[_loc3_],param2);
         }
      }
      
      public static function loadAsset(param1:String) : void
      {
         var _loc3_:FileStream = null;
         var _loc4_:ByteArray = null;
         var _loc2_:File = File.applicationDirectory;
         _loc2_ = _loc2_.resolvePath(applicationAssetsPath + param1);
         if(_loc2_.exists)
         {
            _loc3_ = new FileStream();
            _loc3_.open(_loc2_,FileMode.READ);
            _loc4_ = new ByteArray();
            _loc3_.readBytes(_loc4_);
            _loc3_.close();
            TapjoyAIR.getTapjoyConnectInstance().callExtensionMethod("loadExternalResource",param1,_loc4_);
         }
      }
      
      public function callExtensionMethod(param1:String, ... rest) : Object
      {
         var func:Function = null;
         var method:String = param1;
         var args:Array = rest;
         if(!this._isMobilePlatform)
         {
            return null;
         }
         if(this.extContext == null)
         {
            trace("TapjoyAIR:error call(",method,",",args,") - no ExtensionContext available. requestTapjoyConnect() should be called first.");
            return null;
         }
         try
         {
            if(method == "loadMraidJs" || method == "loadExternalResource")
            {
               trace("TapjoyAIR:info calling ",method);
            }
            else
            {
               trace("TapjoyAIR:info calling ",method," with params: ",args);
            }
            func = this.extContext.call;
            return func.apply(null,[method].concat(args));
         }
         catch(e:Error)
         {
            trace("TapjoyAIR:error call(",method,",",args,") - ",e);
         }
         return null;
      }
      
      public function activate(param1:Event) : void
      {
         this.callExtensionMethod("appResume");
      }
      
      public function deactivate(param1:Event) : void
      {
         this.callExtensionMethod("appPause");
      }
      
      public function enableLogging(param1:Boolean) : void
      {
         this.callExtensionMethod("enableLogging",param1);
      }
      
      public function sendSegmentationParams(param1:Object) : void
      {
         transferDictionaryToNativeLanguageWithName(param1,TapjoyAIR.SEGMENTS_DICTIONARY_NAME);
         this.callExtensionMethod("sendSegmentationParams",TapjoyAIR.SEGMENTS_DICTIONARY_NAME);
      }
      
      public function getTapPoints() : void
      {
         this.callExtensionMethod("getTapPoints");
      }
      
      public function spendTapPoints(param1:int) : void
      {
         this.callExtensionMethod("spendTapPoints",param1);
      }
      
      public function awardTapPoints(param1:int) : void
      {
         this.callExtensionMethod("awardTapPoints",param1);
      }
      
      public function showOffers() : void
      {
         this.callExtensionMethod("showOffers");
      }
      
      public function setVideoCacheCount(param1:int) : void
      {
         this.callExtensionMethod("setVideoCacheCount",param1);
      }
      
      public function setUserID(param1:String) : void
      {
         this.callExtensionMethod("setUserID",param1);
      }
      
      public function getUserID() : String
      {
         return String(this.callExtensionMethod("getUserID"));
      }
      
      public function getAppID() : String
      {
         return String(this.callExtensionMethod("getAppID"));
      }
      
      public function enablePaidAppWithActionID(param1:String) : void
      {
         this.callExtensionMethod("enablePaidAppWithActionID",param1);
      }
      
      public function setCurrencyMultiplier(param1:Number) : void
      {
         this.callExtensionMethod("setCurrencyMultiplier",param1);
      }
      
      public function getCurrencyMultiplier() : Number
      {
         return Number(this.callExtensionMethod("getCurrencyMultiplier"));
      }
      
      public function actionComplete(param1:String) : void
      {
         this.callExtensionMethod("actionComplete",param1);
      }
      
      public function showOffersWithCurrencyID(param1:String, param2:Boolean) : void
      {
         this.callExtensionMethod("showOffersWithCurrencyID",param1,param2);
      }
      
      public function getFullScreenAd() : void
      {
         this.callExtensionMethod("getFullScreenAd");
      }
      
      public function getFullScreenAdWithCurrencyID(param1:String) : void
      {
         this.callExtensionMethod("getFullScreenAdWithCurrencyID",param1);
      }
      
      public function showFullScreenAd() : void
      {
         this.callExtensionMethod("showFullScreenAd");
      }
      
      public function setDisplayAdSize(param1:TapjoyDisplayAdSize) : void
      {
         this.displayAdSize = param1;
         this.callExtensionMethod("setDisplayAdSize",param1.value);
      }
      
      public function enableDisplayAdAutoRefresh(param1:Boolean) : void
      {
         this.callExtensionMethod("enableDisplayAdAutoRefresh",param1);
      }
      
      public function getDisplayAd() : void
      {
         this.callExtensionMethod("getDisplayAd");
      }
      
      public function getDisplayAdWithCurrencyID(param1:String) : void
      {
         this.callExtensionMethod("getDisplayAdWithCurrencyID",param1);
      }
      
      public function setTransitionEffect(param1:TapjoyTransition) : void
      {
         this.callExtensionMethod("setTransitionEffect",param1.value);
      }
      
      public function sendIAPEvent(param1:String, param2:Number, param3:Number, param4:String) : void
      {
         this.callExtensionMethod("sendIAPEvent",param1,param2,param3,param4);
      }
      
      private function onStatus(param1:StatusEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = false;
         if(param1 == null)
         {
            return;
         }
         trace("TapjoyAIR:info onStatus() - code: ",param1.code,", data: ",param1.level);
         switch(param1.code)
         {
            case "TRACE":
               trace("TapjoyAIR:info EXT: " + param1.level);
               break;
            case TapjoyEvent.TJ_CONNECT_SUCCESS:
               if(_connectCallback != null)
               {
                  _connectCallback.connectSucceeded();
               }
               break;
            case TapjoyEvent.TJ_CONNECT_FAILED:
               if(_connectCallback != null)
               {
                  _connectCallback.connectFailed();
               }
               break;
            case TapjoyDisplayAdEvent.TJ_GET_DISPLAY_AD:
               _loc2_ = this.callExtensionMethod("getDisplayAdHtmlString") as String;
               if(_loc2_ == null)
               {
                  return;
               }
               _loc3_ = this.callExtensionMethod("isRetina") as Boolean;
               dispatchEvent(new TapjoyDisplayAdEvent(param1.code,new TapjoyDisplayAd(_loc2_,this.displayAdSize.width,this.displayAdSize.height,_loc3_)));
               break;
            case TapjoyPointsEvent.TJ_AWARDED_TAP_POINTS:
            case TapjoyPointsEvent.TJ_SPENT_TAP_POINTS:
            case TapjoyPointsEvent.TJ_TAP_POINTS:
               if(param1.level.indexOf("\n") > 0)
               {
                  dispatchEvent(new TapjoyPointsEvent(param1.code,param1.level.split("\n")[0] as String,int(parseInt(param1.level.split("\n")[1] as String,10))));
               }
               else
               {
                  dispatchEvent(new TapjoyPointsEvent(param1.code,"",int(parseInt(param1.level,10))));
               }
               break;
            case TapjoyViewChangedEvent.TJ_VIEW_OPENING:
            case TapjoyViewChangedEvent.TJ_VIEW_OPENED:
            case TapjoyViewChangedEvent.TJ_VIEW_CLOSING:
            case TapjoyViewChangedEvent.TJ_VIEW_CLOSED:
               dispatchEvent(new TapjoyViewChangedEvent(param1.code,param1.level));
               break;
            case TJEventCallback.TJ_SEND_EVENT_COMPLETE:
               this.sendEventComplete(param1.level);
               break;
            case TJEventCallback.TJ_SEND_EVENT_COMPLETE_WITH_CONTENT:
               this.sendEventCompleteWithContent(param1.level);
               break;
            case TJEventCallback.TJ_SEND_EVENT_CONTENT_IS_READY:
               this.sendEventContentIsReady(param1.level);
               break;
            case TJEventCallback.TJ_SEND_EVENT_FAIL:
               this.sendEventFail(param1.level);
               break;
            case TJEventCallback.TJ_CONTENT_DID_SHOW:
               this.contentDidAppear(param1.level);
               break;
            case TJEventCallback.TJ_CONTENT_DID_DISAPPEAR:
               this.contentDidDisappear(param1.level);
               break;
            case TJEventCallback.TJ_DID_REQUEST_ACTION:
               this.didRequestAction(param1.level);
               break;
            default:
               dispatchEvent(new TapjoyEvent(param1.code,param1.level));
         }
      }
      
      public function sendEvent(param1:String) : void
      {
         this.callExtensionMethod("sendEvent",param1);
      }
      
      public function showEvent(param1:String) : void
      {
         this.callExtensionMethod("showEvent",param1);
      }
      
      public function enableEventAutoPresent(param1:String, param2:Boolean) : void
      {
         this.callExtensionMethod("enableEventAutoPresent",param1,param2);
      }
      
      public function enableEventPreload(param1:String, param2:Boolean) : void
      {
         this.callExtensionMethod("enableEventPreload",param1,param2);
      }
      
      public function createEvent(param1:TJEvent, param2:String, param3:String) : String
      {
         var _loc4_:String = UIDUtil.createUID();
         while(this._eventDictionary.hasOwnProperty(_loc4_))
         {
            _loc4_ = UIDUtil.createUID();
         }
         this._eventDictionary[_loc4_] = param1;
         this.callExtensionMethod("createEvent",_loc4_,param2,param3);
         return _loc4_;
      }
      
      public function sendEventCompleteWithContent(param1:String) : void
      {
         var _loc2_:TJEvent = null;
         if(this._eventDictionary != null && this._eventDictionary.hasOwnProperty(param1))
         {
            _loc2_ = this._eventDictionary[param1] as TJEvent;
            _loc2_.triggerSendEventSucceeded(true);
         }
      }
      
      public function sendEventContentIsReady(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:TJEvent = null;
         if(param1 != null)
         {
            _loc2_ = param1.split(",");
            if(_loc2_ != null && _loc2_.length >= 2)
            {
               _loc3_ = _loc2_[0];
               _loc4_ = _loc2_[1];
               if(this._eventDictionary != null && this._eventDictionary.hasOwnProperty(_loc3_))
               {
                  _loc5_ = this._eventDictionary[_loc3_] as TJEvent;
                  _loc5_.triggerContentIsReady(_loc4_);
               }
            }
         }
      }
      
      public function sendEventComplete(param1:String) : void
      {
         var _loc2_:TJEvent = null;
         if(this._eventDictionary != null && this._eventDictionary.hasOwnProperty(param1))
         {
            _loc2_ = this._eventDictionary[param1] as TJEvent;
            _loc2_.triggerSendEventSucceeded(false);
         }
      }
      
      public function sendEventFail(param1:String) : void
      {
         var _loc2_:TJEvent = null;
         if(this._eventDictionary != null && this._eventDictionary.hasOwnProperty(param1))
         {
            _loc2_ = this._eventDictionary[param1] as TJEvent;
            _loc2_.triggerSendEventFailed(null);
         }
      }
      
      public function contentWillAppear(param1:String) : void
      {
      }
      
      public function contentWillDisappear(param1:String) : void
      {
      }
      
      public function contentDidAppear(param1:String) : void
      {
         var _loc2_:TJEvent = null;
         if(this._eventDictionary != null && this._eventDictionary.hasOwnProperty(param1))
         {
            _loc2_ = this._eventDictionary[param1] as TJEvent;
            _loc2_.triggerContentDidAppear();
         }
      }
      
      public function contentDidDisappear(param1:String) : void
      {
         var _loc2_:TJEvent = null;
         if(this._eventDictionary != null && this._eventDictionary.hasOwnProperty(param1))
         {
            _loc2_ = this._eventDictionary[param1] as TJEvent;
            _loc2_.triggerContentDidDisappear();
         }
      }
      
      public function didRequestAction(param1:String) : void
      {
         var _loc7_:TJEvent = null;
         var _loc2_:Array = param1.split(",");
         var _loc3_:String = _loc2_[0];
         var _loc4_:int = _loc2_[1];
         var _loc5_:String = _loc2_[2];
         var _loc6_:int = _loc2_[3];
         if(this._eventDictionary != null && this._eventDictionary.hasOwnProperty(_loc3_))
         {
            _loc7_ = this._eventDictionary[_loc3_] as TJEvent;
            _loc7_.triggerDidRequestAction(_loc4_,_loc5_,_loc6_);
         }
      }
      
      public function sendEventRequestComplete(param1:String) : void
      {
         this.callExtensionMethod("eventRequestCompleted",param1);
      }
      
      public function sendEventRequestCancelled(param1:String) : void
      {
         this.callExtensionMethod("eventRequestCancelled",param1);
      }
   }
}
