package nl.hbgames.managers
{
   import flash.events.EventDispatcher;
   import flash.utils.Timer;
   import nl.hbgames.data.PushData;
   import nl.hbgames.config.Settings;
   import com.milkmangames.nativeextensions.EasyPush;
   import nl.hbgames.utils.Debugger;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.GameInfoData;
   import nl.hbgames.data.GameSessionCacheList;
   import com.milkmangames.nativeextensions.CoreMobile;
   
   public class MessageManager extends EventDispatcher
   {
      
      public static const EVENT_TOKEN_RECEIVED:String = "tokenRegistered";
      
      public static const EVENT_TOKEN_FAILED:String = "tokenFailed";
      
      public static const EVENT_DATA_SENT_SUCCESS:String = "dataSent";
      
      public static const EVENT_DATA_SENT_FAIL:String = "dataFailed";
      
      private static var theInstance:MessageManager = new MessageManager();
       
      private const TIMEOUT_DELAY:uint = 400;
      
      private const GCM_PROJECT_ID:String = "768952191664";
      
      private var theIsLocalMsgAvailableFlag:Boolean;
      
      private var thePushToken:String;
      
      private var theTimeoutInterval:Timer;
      
      private var theTimeoutTriggeredFlag:Boolean;
      
      private var theQueuePushDataFlag:Boolean;
      
      private var thePushDataQueue:Vector.<PushData>;
      
      private var theRemoteController;
      
      private const SHOW_PUSH_DEBUG_DATA:Boolean = false;
      
      public function MessageManager()
      {
         super();
         if(theInstance == null)
         {
            theInstance = this;
            thePushDataQueue = new Vector.<PushData>();
            if(!Settings.IS_DESKTOP)
            {
               theIsLocalMsgAvailableFlag = true;
               CoreMobile.mobile.addEventListener("RESUMED_FROM_LOCAL_NOTIFICATION",onResumeFromLocal);
            }
            return;
         }
         throw new Error("[MessageManager] Class is a singleton. Use MessageManager.instance to access!");
      }
      
      public static function get instance() : MessageManager
      {
         return theInstance;
      }
      
      public function get pushToken() : String
      {
         return thePushToken;
      }
      
      public function registerForRemoteNotifications() : Boolean
      {
         if(Settings.IS_DESKTOP || !EasyPush.areNotificationsAvailable() || !EasyPush.isSupported())
         {
            Debugger.Instance.Write("[MessageManager::registerForRemoteNotifications] Device not supported or push disabled",false,false);
            dispatchEvent(new Event("tokenFailed"));
            return false;
         }
         if(thePushToken != null)
         {
            dispatchEvent(new Event("tokenRegistered"));
            return true;
         }
         setTimeout();
         if(!theRemoteController)
         {
            Debugger.Instance.Write("[MessageManager::registerForRemoteNotifications] Initialization",false,false);
            EasyPush.initManual("768952191664",false,true);
            theRemoteController = EasyPush.manual;
         }
         if(theRemoteController)
         {
            if(!theRemoteController.hasEventListener("TOKEN_REGISTERED"))
            {
               theRemoteController.addEventListener("TOKEN_REGISTERED",onRemoteTokenStatus);
               theRemoteController.addEventListener("TOKEN_REG_FAILED",onRemoteTokenStatus);
               theRemoteController.addEventListener("RESUMED_FROM_NOTIFICATION",onResumeFromPush);
               theRemoteController.addEventListener("FOREGROUND_NOTIFICATION",onForegroundPush);
            }
         }
         return true;
      }
      
      public function unregisterNotificationEvents() : void
      {
         if(theRemoteController)
         {
            theRemoteController.removeEventListener("TOKEN_REGISTERED",onRemoteTokenStatus);
            theRemoteController.removeEventListener("TOKEN_REG_FAILED",onRemoteTokenStatus);
            theRemoteController.removeEventListener("RESUMED_FROM_NOTIFICATION",onResumeFromPush);
            theRemoteController.removeEventListener("FOREGROUND_NOTIFICATION",onForegroundPush);
         }
      }
      
      private function onTimeOutTriggered(param1:TimerEvent) : void
      {
         Debugger.Instance.Write("[MessageManager::onTimeOutTriggered] Token not found in time.",true,false);
         clearTimeout();
         theTimeoutTriggeredFlag = true;
         thePushToken = "";
         dispatchEvent(new Event("tokenFailed"));
      }
      
      private function onRemoteTokenStatus(param1:*) : void
      {
         if(theTimeoutTriggeredFlag)
         {
            if(param1.type == "TOKEN_REGISTERED")
            {
               Debugger.Instance.Write("[MessageManager::onRemoteTokenStatus] Registration happened after timeout.",false,false);
               thePushToken = param1.token;
               ClientData.Instance.DeviceToken = thePushToken;
               if(ClientData.Instance.IsLoggedIn)
               {
                  Debugger.Instance.Write("[MessageManager::onRemoteTokenStatus] Client was logged in already. Sending token to server to update accordingly.",false,false);
                  PHPWrapper.AddDeviceToken(null,ClientData.Instance.DeviceToken);
               }
               else
               {
                  Debugger.Instance.Write("[MessageManager::onRemoteTokenStatus] Store token for syncing after client logged in.",false,false);
                  ClientData.Instance.ShouldSyncDeviceTokenAfterLogin = true;
               }
            }
            return;
         }
         clearTimeout();
         Debugger.Instance.Write("[MessageManager::onRemoteTokenStatus] Type = " + param1.type,false,false);
         var _loc2_:* = param1.type;
         if("TOKEN_REGISTERED" !== _loc2_)
         {
            if("TOKEN_REG_FAILED" === _loc2_)
            {
               thePushToken = "";
               dispatchEvent(new Event("tokenFailed"));
            }
         }
         else
         {
            thePushToken = param1.token;
            dispatchEvent(new Event("tokenRegistered"));
         }
      }
      
      private function onResumeFromPush(param1:*) : void
      {
         Debugger.Instance.Write("[MessageManager::onResumeFromPush] Callback processed.",false,false);
         var _loc2_:Object = param1.customPayload;
         var _loc3_:PushData = getDataFromPush(_loc2_);
         handleNotificationData(_loc3_);
      }
      
      private function onResumeFromLocal(param1:*) : void
      {
         var _loc2_:* = null;
         if(param1.extra != null)
         {
            _loc2_ = new PushData(param1.extra.a,param1.extra.id,param1.message);
            handleNotificationData(_loc2_);
         }
      }
      
      private function onForegroundPush(param1:*) : void
      {
      }
      
      private function handleNotificationData(param1:PushData) : void
      {
         if(param1 != null)
         {
            if(theQueuePushDataFlag)
            {
               if(thePushDataQueue.indexOf(param1) == -1)
               {
                  thePushDataQueue.push(param1);
               }
            }
            else
            {
               processNotificationAction(param1);
            }
         }
      }
      
      private function processNotificationAction(param1:PushData) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(param1 != null)
         {
            Debugger.Instance.Write("[MessageManager::processNotificationAction] Push data received.",false,false);
            if(!WaitBox.IsVisible)
            {
               _loc3_ = ClientData.Instance.GameListData.GetGameByID(param1.gameID);
               if(_loc3_ != null)
               {
                  _loc2_ = {
                     "gameID":_loc3_.GameID,
                     "languageID":_loc3_.DictionaryLanguage,
                     "timeLeftInSec":_loc3_.TimeLeftInSeconds
                  };
                  switch(param1.actionType - 1)
                  {
                     case 0:
                        break;
                     case 1:
                        _loc2_.toChat = 2;
                        GameSessionCacheList.RemoveSessionByID(_loc3_.GameID);
                        break;
                  }
                  Debugger.Instance.Write("[MessageManager::processNotificationAction] Data contained valid GameID. Switching to game.",false,false);
                  LogicManager.Instance.SwitchGame(_loc2_);
                  PanelManager.Instance.CloseAll();
               }
            }
         }
      }
      
      public function holdPushData() : void
      {
         if(!theQueuePushDataFlag)
         {
            theQueuePushDataFlag = true;
         }
      }
      
      public function releasePushData() : void
      {
         if(theQueuePushDataFlag)
         {
            theQueuePushDataFlag = false;
            while(thePushDataQueue.length > 0)
            {
               handleNotificationData(thePushDataQueue.shift());
            }
         }
      }
      
      public function eraseQueuedPushData() : void
      {
         if(theQueuePushDataFlag)
         {
            theQueuePushDataFlag = false;
            thePushDataQueue = new Vector.<PushData>();
         }
      }
      
      public function setBadgeValue(param1:uint) : void
      {
         if(theIsLocalMsgAvailableFlag)
         {
            CoreMobile.mobile.setNotificationBadgeNumber(param1);
         }
      }
      
      public function setLocalMessage(param1:int, param2:uint, param3:String, param4:String, param5:String = null, param6:Object = null) : void
      {
         if(theIsLocalMsgAvailableFlag)
         {
            if(ClientData.Instance.IsAllowingNotifications)
            {
               CoreMobile.mobile.scheduleLocalNotification(param1,CoreMobile.futureTimeSeconds(param2),param3,param4,param5,param6);
            }
         }
      }
      
      public function cancelAllLocalMessages() : void
      {
         if(theIsLocalMsgAvailableFlag)
         {
            CoreMobile.mobile.cancelAllLocalNotifications();
         }
      }
      
      private function setTimeout() : void
      {
         clearTimeout();
         theTimeoutInterval = new Timer(400,1);
         theTimeoutInterval.addEventListener("timerComplete",onTimeOutTriggered);
         theTimeoutInterval.start();
      }
      
      private function clearTimeout() : void
      {
         if(theTimeoutInterval != null)
         {
            theTimeoutInterval.stop();
            theTimeoutInterval.removeEventListener("timerComplete",onTimeOutTriggered);
            theTimeoutInterval = null;
         }
      }
      
      private function getDataFromPush(param1:Object) : PushData
      {
         var _loc2_:* = null;
         if(param1 != null)
         {
            try
            {
               _loc2_ = param1.d != null?JSON.parse(param1.d):null;
               if(_loc2_ != null)
               {
                  Debugger.Instance.Write("[MessageManager::getDataFromPush] " + _loc2_.a + " (" + _loc2_.id + ")",false,false);
                  if(Settings.IS_ANDROID)
                  {
                     var _loc4_:* = new PushData(_loc2_.a,_loc2_.id,param1.extras.alert);
                     return _loc4_;
                  }
                  if(Settings.IS_IOS)
                  {
                     var _loc5_:* = new PushData(_loc2_.a,_loc2_.id,param1.aps.alert);
                     return _loc5_;
                  }
               }
            }
            catch(e:Error)
            {
               Debugger.Instance.Write("[MessageManager::getDataFromPush] Invalid JSON detected: " + param1.d,true,false);
               var _loc6_:* = null;
               return _loc6_;
            }
         }
         return null;
      }
   }
}
