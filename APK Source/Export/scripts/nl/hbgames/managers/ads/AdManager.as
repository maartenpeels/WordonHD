package nl.hbgames.managers.ads
{
   import flash.utils.Timer;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.AppData;
   import nl.hbgames.config.Settings;
   import nl.hbgames.utils.Debugger;
   import flash.utils.getQualifiedClassName;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.Localization;
   import flash.events.TimerEvent;
   
   public class AdManager extends Object
   {
      
      public static const INTERSTITIAL_FAILED:int = 1;
      
      public static const INTERSTITIAL_SHOWED:int = 2;
      
      public static const INTERSTITIAL_CLOSED:int = 3;
      
      private static var theInstance:AdManager = new AdManager();
       
      private const INTERSTITIAL_MAX_LOAD_TIME:Number = 10.0;
      
      private var theRewardVideo;
      
      private var theAdNetworks:Vector.<AdProvider>;
      
      private var theInterstitialIndex:int;
      
      private var theInterstitialData:String;
      
      private var theAutoCacheFlag:Boolean;
      
      private var theSearchingForInterstitialFlag:Boolean;
      
      private var theIsBlockingInteractionWhileLoadingFlag:Boolean;
      
      private var theMinimumInterstitialInterval:Number;
      
      private var theLastInterstitialTimestamp:Number;
      
      private var theAdClosedCallback:Function;
      
      private var theTimer:Timer;
      
      private var theForceDebugOutputFlag:Boolean = false;
      
      public function AdManager()
      {
         super();
         if(theInstance == null)
         {
            theInstance = this;
            theMinimumInterstitialInterval = 0;
            theLastInterstitialTimestamp = 0;
            theAdNetworks = new Vector.<AdProvider>();
            if(!Settings.IS_DESKTOP)
            {
               theRewardVideo = new AdColonyReward();
            }
            theTimer = new Timer(10 * 1000,1);
            return;
         }
         throw new Error("[AdManager] Class is a singleton. Use AdManager.instance to access!");
      }
      
      public static function get instance() : AdManager
      {
         return theInstance;
      }
      
      public function get isBlockingInteractionWhileLoading() : Boolean
      {
         return theIsBlockingInteractionWhileLoadingFlag;
      }
      
      public function set isBlockingInteractionWhileLoading(param1:Boolean) : void
      {
         theIsBlockingInteractionWhileLoadingFlag = param1;
      }
      
      public function initialize() : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc1_:* = null;
         var _loc4_:* = 0;
         enableAllNetworks(false);
         if(!ClientData.Instance.Inventory.Get("item_no_ads").IsAvailable)
         {
            _loc2_ = AppData.Instance.ActiveAdProviders;
            if(_loc2_ == null)
            {
               _loc2_ = "1";
            }
            _loc1_ = _loc2_.split(",");
            _loc4_ = 0;
            for(; _loc4_ < _loc1_.length; _loc4_++)
            {
               var _loc5_:* = _loc1_[_loc4_];
               if("1" !== _loc5_)
               {
                  if("2" === _loc5_)
                  {
                     _loc3_ = AdManager.instance.getNetworkByType(HeyzapAdProvider);
                     if(_loc3_ == null)
                     {
                        addNetwork(new HeyzapAdProvider("01abcf2363dc5d449a904e5d9cd463aa"));
                     }
                     else
                     {
                        _loc3_.isEnabled = true;
                     }
                     continue;
                  }
               }
               _loc3_ = AdManager.instance.getNetworkByType(ChartboostAdProvider);
               if(_loc3_ == null)
               {
                  addNetwork(new ChartboostAdProvider(Settings.IS_IOS?"4fbcfca3f876598f4e000001":"4fbcfd66f776592e31000003",Settings.IS_IOS?"a01af1a4a51142ac8e1d358035c251c272e4fad5":"a10024478b8b7d3bb95bf4269f361eee4f959ce1"));
               }
               else
               {
                  _loc3_.isEnabled = true;
               }
            }
            setInterstitialInterval(AppData.Instance.AdIntervalInSecs);
            theIsBlockingInteractionWhileLoadingFlag = true;
            cacheInterstitial();
         }
      }
      
      public function setInterstitialInterval(param1:Number = 0) : void
      {
         if(param1 < 0)
         {
            Debugger.Instance.Write("[AdManager::setInterstitialViewLimit] Invalid value: " + param1 + ". Reset to zero.",true);
            var param1:* = 0.0;
         }
         theMinimumInterstitialInterval = param1 * 1000;
      }
      
      public function addNetwork(param1:AdProvider) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         _loc3_ = 0;
         while(_loc3_ < theAdNetworks.length)
         {
            _loc2_ = getQualifiedClassName(param1);
            if(getQualifiedClassName(theAdNetworks[_loc3_]) == _loc2_)
            {
               Debugger.Instance.Write("[AdManager::addNetwork] " + _loc2_ + " is already active.",true);
               return;
            }
            _loc3_++;
         }
         param1.initialize();
         if(param1.isInitialized)
         {
            theAdNetworks.push(param1);
            Debugger.Instance.Write("[AdManager::addNetwork] Succesfully added " + param1,false,theForceDebugOutputFlag);
         }
         else
         {
            Debugger.Instance.Write("[AdManager::addNetwork] Network failed to initialize: " + param1,true,theForceDebugOutputFlag);
         }
      }
      
      public function getNetworkByType(param1:Class) : AdProvider
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < theAdNetworks.length)
         {
            if(theAdNetworks[_loc2_] is param1)
            {
               return theAdNetworks[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function removeNetwork(param1:AdProvider) : void
      {
         var _loc2_:int = theAdNetworks.indexOf(param1);
         if(_loc2_ > -1)
         {
            theAdNetworks[_loc2_].dispose();
            theAdNetworks.splice(_loc2_,1);
         }
      }
      
      public function removeNetworkByType(param1:Class) : void
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < theAdNetworks.length)
         {
            if(theAdNetworks[_loc2_] is param1)
            {
               theAdNetworks[_loc2_].dispose();
               theAdNetworks.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function removeAllNetworks() : void
      {
         var _loc1_:* = null;
         while(theAdNetworks.length > 0)
         {
            _loc1_ = theAdNetworks.pop();
            _loc1_.dispose();
         }
      }
      
      public function enableAllNetworks(param1:Boolean) : void
      {
         var _loc2_:* = 0;
         if(theAdNetworks && theAdNetworks.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < theAdNetworks.length)
            {
               theAdNetworks[_loc2_].isEnabled = param1;
               _loc2_++;
            }
            Debugger.Instance.Write("[AdManager::enableAllNetworks] Toggled activity to " + param1,false,theForceDebugOutputFlag);
         }
      }
      
      public function cacheInterstitial(param1:String = null) : void
      {
         var _loc2_:* = 0;
         Debugger.Instance.Write("[AdManager::cacheInterstitial] Sending cache request to registered networks [" + theAdNetworks.length + "]",false,theForceDebugOutputFlag);
         _loc2_ = 0;
         while(_loc2_ < theAdNetworks.length)
         {
            if(theAdNetworks[_loc2_].isEnabled)
            {
               theAdNetworks[_loc2_].cacheInterstitial(param1);
            }
            _loc2_++;
         }
      }
      
      public function showInterstitial(param1:String = null, param2:Boolean = false, param3:Function = null, param4:Boolean = true) : void
      {
         if(theSearchingForInterstitialFlag)
         {
            Debugger.Instance.Write("[AdManager::showInterstitial] Already searching for an available interstitial.",true,theForceDebugOutputFlag);
            return;
         }
         if(!param2 && !isInterstitialAllowed())
         {
            Debugger.Instance.Write("[AdManager::showInterstitial] Blocking request as minimum desired interval has not yet passed.",false,theForceDebugOutputFlag);
            return;
         }
         theInterstitialIndex = -1;
         theInterstitialData = param1;
         theSearchingForInterstitialFlag = true;
         theAutoCacheFlag = param4;
         theAdClosedCallback = param3;
         if(theIsBlockingInteractionWhileLoadingFlag)
         {
            WaitBox.Show(Localization.Get("advertisement_loading"));
            theTimer.addEventListener("timerComplete",onInterstitialLoadTimeout);
            theTimer.reset();
            theTimer.start();
         }
         processNextInterstitial();
      }
      
      public function showRewardVideo(param1:Function = null) : Boolean
      {
         if(theRewardVideo == null)
         {
            return false;
         }
         return theRewardVideo.show(param1);
      }
      
      public function hasRewardVideoAvailable() : Boolean
      {
         if(theRewardVideo == null)
         {
            return false;
         }
         return theRewardVideo.hasInventory;
      }
      
      public function isInterstitialAllowed() : Boolean
      {
         if(theMinimumInterstitialInterval > 0)
         {
            if(theLastInterstitialTimestamp + theMinimumInterstitialInterval > new Date().getTime())
            {
               return false;
            }
         }
         return true;
      }
      
      private function onInterstitialLoadTimeout(param1:TimerEvent) : void
      {
         Debugger.Instance.Write("[AdManager::onInterstitialLoadTimeout] Ad load timeout! Forcing SHOW/CLOSE action to proceed.",true,theForceDebugOutputFlag);
         onInterstitialStatus(2);
         onInterstitialStatus(3);
      }
      
      private function processNextInterstitial() : void
      {
         var _loc1_:* = null;
         theInterstitialIndex = theInterstitialIndex + 1;
         if(theAdNetworks.length > 0 && theInterstitialIndex >= 0 && theInterstitialIndex < theAdNetworks.length)
         {
            _loc1_ = theAdNetworks[theInterstitialIndex];
            if(_loc1_.isEnabled)
            {
               Debugger.Instance.Write("[AdManager::processNextInterstitial] Querying interstitial from " + _loc1_,false,theForceDebugOutputFlag);
               _loc1_.showInterstitial(theInterstitialData,onInterstitialStatus);
            }
            else
            {
               Debugger.Instance.Write("[AdManager::processNextInterstitial] Skipping " + _loc1_ + " as it\'s disabled.",false,theForceDebugOutputFlag);
               onInterstitialStatus(1);
            }
         }
         else
         {
            Debugger.Instance.Write("[AdManager::processNextInterstitial] No interstitials available!",true,theForceDebugOutputFlag);
            onInterstitialStatus(2);
            onInterstitialStatus(3);
         }
      }
      
      private function onInterstitialStatus(param1:int) : void
      {
         Debugger.Instance.Write("[AdManager::onInterstitialStatus] Ad status: " + param1,false,theForceDebugOutputFlag);
         switch(param1 - 1)
         {
            case 0:
               processNextInterstitial();
               break;
            case 1:
               onInterstitialShown();
               break;
            case 2:
               onInterstitialClosed();
               break;
         }
      }
      
      private function onInterstitialShown() : void
      {
         if(theIsBlockingInteractionWhileLoadingFlag)
         {
            WaitBox.Hide();
         }
         theTimer.stop();
         theTimer.removeEventListener("timerComplete",onInterstitialLoadTimeout);
      }
      
      private function onInterstitialClosed() : void
      {
         if(theAutoCacheFlag)
         {
            cacheInterstitial(theInterstitialData);
         }
         theLastInterstitialTimestamp = new Date().getTime();
         theSearchingForInterstitialFlag = false;
         if(theAdClosedCallback != null)
         {
            theAdClosedCallback();
            theAdClosedCallback = null;
         }
      }
   }
}
