package nl.hbgames
{
   import flash.display.Sprite;
   import nl.hbgames.utils.Debugger;
   import flash.display.Bitmap;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.managers.NotificationBar;
   import nl.hbgames.managers.SoundManager;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.AppData;
   import nl.hbgames.data.GameSessionCacheList;
   import nl.hbgames.net.LongPoll;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.TrackingData;
   import nl.hbgames.data.LetterDictionary;
   import nl.hbgames.data.Glossary;
   import nl.hbgames.utils.Time;
   import nl.hbgames.ui.popups.WaitBox;
   import flash.events.UncaughtErrorEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.ui.Multitouch;
   import nl.hbgames.config.Settings;
   import nl.hbgames.managers.Serializer;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.globalization.StringTools;
   import flash.desktop.NativeApplication;
   import nl.hbgames.managers.MessageManager;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.ui.popups.RateBox;
   import flash.events.KeyboardEvent;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.GameInfoData;
   import nl.hbgames.utils.Random;
   import nl.hbgames.utils.Response;
   import com.milkmangames.nativeextensions.GoViral;
   import com.greensock.plugins.TweenPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.milkmangames.nativeextensions.CoreMobile;
   import nl.hbgames.managers.social.SocialManager;
   import nl.hbgames.data.game.TilesetData;
   
   public class WordOn extends Sprite
   {
      
      public static var Instance:WordOn;
       
      private var _IsActive:Boolean = true;
      
      private var _IsInitialized:Boolean = false;
      
      private var _Debugger:Debugger;
      
      private var _Background:Bitmap;
      
      private var _Localization:Localization;
      
      private var _LogicManager:LogicManager;
      
      private var _AssetManager:AssetManager;
      
      private var _PanelManager:PanelManager;
      
      private var _PopupManager:PopupManager;
      
      private var _NotificationBar:NotificationBar;
      
      private var _SoundManager:SoundManager;
      
      private var _Tracker:SWRVETracker;
      
      private var _AppData:AppData;
      
      private var _GameSessionCacheList:GameSessionCacheList;
      
      private var _LongPoll:LongPoll;
      
      private var _ClientData:ClientData;
      
      private var _TrackingData:TrackingData;
      
      private var _LetterValues:LetterDictionary;
      
      private var _Glossary:Glossary;
      
      private var _Time:Time;
      
      private var _WaitBox:WaitBox;
      
      private var _Ticker:uint;
      
      private var _BackButtonPressed:Boolean = false;
      
      private var _MenuButtonPressed:Boolean = false;
      
      private var _IsExiting:Boolean;
      
      public function WordOn()
      {
         super();
         Instance = this;
         _IsExiting = false;
         TweenPlugin.activate([ColorTransformPlugin]);
         this.loaderInfo.uncaughtErrorEvents.addEventListener("uncaughtError",OnErrorHandler);
         if(Settings.IS_IOS || Settings.IS_ANDROID)
         {
            if(GoViral.isSupported())
            {
               GoViral.create();
            }
            if(CoreMobile.isSupported())
            {
               CoreMobile.create();
            }
         }
         _Debugger = new Debugger();
         Debugger.OutputToScreen = false;
         Debugger.OutputToTrace = true;
         Debugger.OutputToDisk = false;
         Debugger.Enabled = false;
         this.addChild(_Debugger);
         SocialManager.instance.initialize("175659022571339");
         SocialManager.instance.setErrorNotificationCallback(ShowSocialNetworkError);
         TilesetData.Initialize();
         this.stage.displayState = "fullScreenInteractive";
         this.addEventListener("addedToStage",OnAddedToStage);
      }
      
      public function get Audio() : SoundManager
      {
         return _SoundManager;
      }
      
      public function get IsActive() : Boolean
      {
         return _IsActive;
      }
      
      public function get IsInitialized() : Boolean
      {
         return _IsInitialized;
      }
      
      private function OnErrorHandler(param1:UncaughtErrorEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(param1.error is Error)
         {
            _loc3_ = param1.error as Error;
            Debugger.Instance.Write(_loc3_.message + "(" + _loc3_.errorID + ")",true);
            Debugger.Instance.Write("Name = " + _loc3_.name,true);
            Debugger.Instance.Write("Stack = " + _loc3_.getStackTrace(),true);
         }
         else if(param1.error is ErrorEvent)
         {
            _loc2_ = param1.error as ErrorEvent;
            Debugger.Instance.Write(_loc2_.toString() + "(" + _loc2_.errorID + ")",true);
            Debugger.Instance.Write("Name = " + _loc2_.type,true);
         }
         else
         {
            Debugger.Instance.Write(param1.toString() + "(" + param1.errorID + ")",true);
            Debugger.Instance.Write("Name = " + param1.type,true);
         }
      }
      
      private function OnAddedToStage(param1:Event) : void
      {
         this.removeEventListener("addedToStage",OnAddedToStage);
         Multitouch.inputMode = "touchPoint";
         this.stage.scaleMode = "noScale";
         this.stage.align = "TL";
         this.stage.quality = "low";
         Settings.SCREEN_WIDTH = Math.min(this.stage.fullScreenWidth,this.stage.fullScreenHeight);
         Settings.SCREEN_HEIGHT = Math.max(this.stage.fullScreenWidth,this.stage.fullScreenHeight);
         Settings.SCREEN_CENTER_X = Settings.SCREEN_WIDTH >> 1;
         Settings.SCREEN_CENTER_Y = Settings.SCREEN_HEIGHT >> 1;
         _AppData = new AppData();
         _GameSessionCacheList = new GameSessionCacheList();
         _ClientData = new ClientData();
         _TrackingData = new TrackingData();
         _PopupManager = PopupManager.Instance;
         Serializer.Instance.Unserialize();
         _AssetManager = new AssetManager();
         _Localization = new Localization();
         _LogicManager = new LogicManager();
         _LogicManager.SetState("Splash");
         this.addChild(_LogicManager);
         if(AssetManager.OverdrawY > 0)
         {
            _LogicManager.height = _LogicManager.height - AssetManager.OverdrawY;
         }
         var _loc2_:Timer = new Timer(100,1);
         _loc2_.addEventListener("timerComplete",OnBootTimerCompleted);
         _loc2_.start();
      }
      
      private function OnBootTimerCompleted(param1:TimerEvent) : void
      {
         var _loc2_:Timer = Timer(param1.target);
         _loc2_.stop();
         _loc2_.removeEventListener("timerComplete",OnBootTimerCompleted);
         Initialize();
      }
      
      private function Initialize() : void
      {
         Settings.COUNTRY_CODE = new StringTools("i-default").actualLocaleIDName;
         _LongPoll = new LongPoll();
         _LetterValues = new LetterDictionary();
         NativeApplication.nativeApplication.addEventListener("keyDown",OnDeviceButtonPressed);
         NativeApplication.nativeApplication.addEventListener("deactivate",OnDeactivate);
         NativeApplication.nativeApplication.addEventListener("activate",OnActivate);
         _Glossary = new Glossary();
         _Tracker = new SWRVETracker(Settings.WO_TRACKING_URL,"wordonhd","1.88",true);
         _Time = new Time();
         _Background = §§dup(AssetManager.GetAsBitmap("libBackground"));
         this.addChild(AssetManager.GetAsBitmap("libBackground"));
         _WaitBox = new WaitBox();
         _PanelManager = new PanelManager();
         _NotificationBar = new NotificationBar();
         _LogicManager.AddEvents();
         InitAudio();
         this.addChild(_LogicManager);
         this.addChild(_PanelManager);
         this.addChild(_PopupManager);
         this.addChild(_NotificationBar);
         this.addChild(_WaitBox);
         this.addChild(_Debugger);
         MessageManager.instance.holdPushData();
         MessageManager.instance.addEventListener("tokenRegistered",FinalizeBootProcess);
         MessageManager.instance.addEventListener("tokenFailed",FinalizeBootProcess);
         MessageManager.instance.registerForRemoteNotifications();
      }
      
      private function FinalizeBootProcess(param1:Event = null) : void
      {
         MessageManager.instance.removeEventListener("tokenRegistered",FinalizeBootProcess);
         MessageManager.instance.removeEventListener("tokenFailed",FinalizeBootProcess);
         ClientData.Instance.DeviceToken = MessageManager.instance.pushToken;
         if(Serializer.Instance.DataLossCount > 0)
         {
            new MessageBox(Localization.Get("attention"),Localization.Get("data_loss_detected"),true);
         }
         if(AppData.Instance.FreshInstall)
         {
            AppData.Instance.FreshInstall = false;
            AppData.Instance.AppInstallDate = new Date().getTime();
            Serializer.Instance.Serialize();
         }
         this.stage.addEventListener("enterFrame",Update);
         new RateBox();
         CheckActivation();
         if(!ClientData.Instance.AutoLogin())
         {
            MessageManager.instance.releasePushData();
            _LogicManager.SetState("Welcome",null,"AnimLeft",true);
            _SoundManager.Play("sfxJingleIntro");
         }
      }
      
      private function InitAudio() : void
      {
         _SoundManager = new SoundManager();
         _SoundManager.Add(new sfxButtonClose(),"sfxButtonClose");
         _SoundManager.Add(new sfxButtonConfirm(),"sfxButtonConfirm");
         _SoundManager.Add(new sfxButtonGeneral(),"sfxButtonGeneral");
         _SoundManager.Add(new sfxShuffle1(),"sfxShuffle1");
         _SoundManager.Add(new sfxShuffle2(),"sfxShuffle2");
         _SoundManager.Add(new sfxShuffle3(),"sfxShuffle3");
         _SoundManager.Add(new sfxShuffle4(),"sfxShuffle4");
         _SoundManager.Add(new sfxTilePick1(),"sfxTilePick1");
         _SoundManager.Add(new sfxTilePick2(),"sfxTilePick2");
         _SoundManager.Add(new sfxTilePick3(),"sfxTilePick3");
         _SoundManager.Add(new sfxTileDrop1(),"sfxTileDrop1");
         _SoundManager.Add(new sfxTileDrop2(),"sfxTileDrop2");
         _SoundManager.Add(new sfxTileDrop3(),"sfxTileDrop3");
         _SoundManager.Add(new sfxTileDrop4(),"sfxTileDrop4");
         _SoundManager.Add(new sfxTileDrop5(),"sfxTileDrop5");
         _SoundManager.Add(new sfxPlayCounterDone(),"sfxPlayCounterDone");
         _SoundManager.Add(new sfxPlayMultiplier(),"sfxPlayMultiplier");
         _SoundManager.Add(new sfxPlayWOUnused(),"sfxPlayUnusedWO");
         _SoundManager.Add(new sfxCoinCollect1(),"sfxCoinCollect1");
         _SoundManager.Add(new sfxCoinCollect2(),"sfxCoinCollect2");
         _SoundManager.Add(new sfxCoinCollect3(),"sfxCoinCollect3");
         _SoundManager.Add(new sfxCoinCollect4(),"sfxCoinCollect4");
         _SoundManager.Add(new sfxCoinCollect5(),"sfxCoinCollect5");
         _SoundManager.Add(new sfxCoinReward1(),"sfxCoinReward1");
         _SoundManager.Add(new sfxCoinReward2(),"sfxCoinReward2");
         _SoundManager.Add(new sfxCoinReward3(),"sfxCoinReward3");
         _SoundManager.Add(new sfxCoinReward4(),"sfxCoinReward4");
         _SoundManager.Add(new sfxCoinReward5(),"sfxCoinReward5");
         _SoundManager.Add(new sfxJingleIntro(),"sfxJingleIntro");
         _SoundManager.Add(new sfxJingleInviteConfirm(),"sfxJingleInviteConfirm");
         _SoundManager.Add(new sfxJingleInviteFriend(),"sfxJingleInviteFriend");
         _SoundManager.Add(new sfxJingleNewGame(),"sfxJingleNewGame");
         _SoundManager.Add(new sfxJingleOpenGame(),"sfxJingleOpenGame");
         _SoundManager.Add(new sfxJinglePlayTurn(),"sfxJinglePlayTurn");
         _SoundManager.Add(new sfxJingleRankings(),"sfxJingleRankings");
         _SoundManager.Add(new sfxJingleSelectOpponent(),"sfxJingleSelectOpponent");
         _SoundManager.Add(new sfxJingleLost(),"sfxJingleLost");
         _SoundManager.Add(new sfxJingleWon(),"sfxJingleWon");
         _SoundManager.Add(new sfxJingleTournamentGold(),"sfxJingleTournamentGold");
         _SoundManager.Add(new sfxJingleTournamentSilver(),"sfxJingleTournamentSilver");
         _SoundManager.Add(new sfxJingleTournamentNoMedal(),"sfxJingleTournamentNoMedal");
         _SoundManager.Add(new sfxPopup(),"sfxPopup");
         _SoundManager.Add(new sfxShop(),"sfxShop");
         _SoundManager.Add(new sfxStarsSpent(),"sfxStarsSpent");
         _SoundManager.Add(new sfxWheelSnap1(),"sfxWheelSnap1");
         _SoundManager.Add(new sfxWheelSnap2(),"sfxWheelSnap2");
         _SoundManager.Add(new sfxWheelSnap3(),"sfxWheelSnap3");
         _SoundManager.Add(new sfxWheelSnap4(),"sfxWheelSnap4");
         _SoundManager.Add(new sfxWheelSnap5(),"sfxWheelSnap5");
         _SoundManager.Add(new sfxWordalyzer1(),"sfxWordalyzer1");
         _SoundManager.Add(new sfxWordalyzer2(),"sfxWordalyzer2");
         _SoundManager.Add(new sfxChatReceive(),"sfxChatReceive");
         _SoundManager.Add(new sfxChatSend(),"sfxChatSend");
         _SoundManager.Add(new sfxRefreshStart(),"sfxRefreshStart");
         _SoundManager.Add(new sfxRefreshEnd(),"sfxRefreshEnd");
         _SoundManager.Add(new sfxPopupStar(),"sfxPopupStar");
      }
      
      private function Update(param1:Event) : void
      {
         if(_IsActive)
         {
            _Time.Update();
            _LogicManager.Update();
            _PanelManager.Update();
            _PopupManager.Update();
            _ClientData.Update();
            _WaitBox.Update();
            if(_BackButtonPressed)
            {
               if(LogicManager.Instance != null)
               {
                  LogicManager.Instance.OnBackButtonPressed();
               }
               _BackButtonPressed = false;
            }
            if(_MenuButtonPressed)
            {
               if(LogicManager.Instance != null)
               {
                  LogicManager.Instance.OnMenuButtonPressed();
               }
               _MenuButtonPressed = false;
            }
         }
      }
      
      private function OnDeviceButtonPressed(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode - 16777234)
         {
            case 0:
               param1.preventDefault();
               param1.stopImmediatePropagation();
               _MenuButtonPressed = true;
            case 1:
               param1.preventDefault();
               param1.stopImmediatePropagation();
               _BackButtonPressed = true;
               break;
            default:
               param1.preventDefault();
               param1.stopImmediatePropagation();
               _MenuButtonPressed = true;
         }
      }
      
      private function OnActivate(param1:Event) : void
      {
         Debugger.Instance.Write("[WordOn::Active] Application received focus.");
         CheckActivation();
         AppData.Instance.OnActivate();
         if(ClientData.Instance != null && ClientData.Instance.IsLoggedIn)
         {
            LongPoll.Instance.Connect(true);
            PHPWrapper.Resume();
         }
         if(Settings.IS_ANDROID)
         {
            _Ticker = 0;
            stage.addEventListener("enterFrame",OnEnterFrameFixGPUContextLoss);
         }
      }
      
      private function OnEnterFrameFixGPUContextLoss(param1:Event) : void
      {
         _Ticker = _Ticker + 1;
         if(stage.quality.toLowerCase() == "low".toLowerCase())
         {
            stage.quality = "high";
         }
         else if(_Ticker > 2)
         {
            stage.quality = "low";
            stage.removeEventListener("enterFrame",OnEnterFrameFixGPUContextLoss);
         }
      }
      
      private function CheckActivation() : void
      {
         _IsActive = true;
         _IsInitialized = true;
         MessageManager.instance.cancelAllLocalMessages();
         Time.SessionTime = 0;
         SWRVETracker.Instance.TrackSessionStart();
      }
      
      private function OnDeactivate(param1:Event) : void
      {
         Debugger.Instance.Write("[WordOn::OnDeactive] Application to suspended state.");
         _IsActive = false;
         if(!_IsExiting)
         {
            CheckDeactivation();
         }
      }
      
      private function CheckDeactivation() : void
      {
         var _loc5_:* = 0;
         var _loc7_:* = undefined;
         var _loc2_:* = null;
         var _loc4_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:* = null;
         var _loc6_:* = 0;
         var _loc8_:* = null;
         var _loc3_:* = null;
         SWRVETracker.Instance.TrackSessionEnd();
         LongPoll.Instance.Disconnect(true);
         if(ClientData.Instance.IsLoggedIn)
         {
            _loc5_ = 0;
            _loc7_ = ClientData.Instance.GameListData.GetLists().yours;
            if(_loc7_.length > 0)
            {
               _loc2_ = [{
                  "time":172800,
                  "titleKey":"notification_waiting_title_1",
                  "msgKey":"notification_waiting_message_1"
               },{
                  "time":86400,
                  "titleKey":"notification_waiting_title_2",
                  "msgKey":"notification_waiting_message_2"
               },{
                  "time":7200,
                  "titleKey":"notification_waiting_title_3",
                  "msgKey":"notification_waiting_message_3"
               }];
               _loc4_ = _loc7_.length > 3?3:_loc7_.length;
               _loc9_ = 0;
               while(_loc9_ < _loc4_)
               {
                  _loc1_ = _loc7_[_loc9_];
                  _loc6_ = 0;
                  while(_loc6_ < _loc2_.length)
                  {
                     _loc8_ = _loc2_[_loc6_];
                     if(_loc1_.TimeLeftInSeconds > _loc8_.time)
                     {
                        _loc5_++;
                        MessageManager.instance.setLocalMessage(_loc5_,_loc1_.TimeLeftInSeconds - _loc8_.time,Localization.Get(_loc8_.titleKey),Localization.Get(_loc8_.msgKey,_loc1_.OpponentName),Localization.Get("notification_promo_button_label"));
                     }
                     _loc6_++;
                  }
                  _loc9_++;
               }
            }
            else
            {
               _loc3_ = ["notification_promo_message_1","notification_promo_message_2"];
               if(ClientData.Instance.IsFacebookUser)
               {
                  _loc3_.push("notification_promo_message_fb_1");
                  _loc3_.push("notification_promo_message_fb_2");
               }
               Random.shuffle(_loc3_);
               _loc5_++;
               MessageManager.instance.setLocalMessage(_loc5_,259200,Localization.Get("notification_promo_title"),Localization.Get(_loc3_[0]),Localization.Get("notification_promo_button_label"));
               _loc5_++;
               MessageManager.instance.setLocalMessage(_loc5_,518400,Localization.Get("notification_promo_title"),Localization.Get(_loc3_[1]),Localization.Get("notification_promo_button_label"));
            }
         }
      }
      
      private function ShowSocialNetworkError(param1:Response) : void
      {
         if(!param1.isSuccess)
         {
            new MessageBox(Localization.Get("facebook_error_title"),param1.data + " (" + param1.errorCode + ")",true);
         }
      }
      
      public function Exit(param1:Boolean = true) : void
      {
         askUser = param1;
         if(askUser)
         {
            return;
            §§push(new MessageBox(Localization.Get("attention"),Localization.Get("application_exit"),false,true,function():void
            {
               Exit(false);
            },true));
         }
         else
         {
            Debugger.Instance.Write("[WordOn::Exit] Closing application.");
            _IsExiting = true;
            this.stage.removeEventListener("enterFrame",Update);
            CheckDeactivation();
            _SoundManager.Dispose();
            _SoundManager = null;
            _LogicManager.Dispose();
            this.removeChild(_LogicManager);
            _LogicManager = null;
            _PanelManager.Dispose();
            this.removeChild(_PanelManager);
            _PanelManager = null;
            _PopupManager.Dispose();
            this.removeChild(_PopupManager);
            _PopupManager = null;
            _WaitBox.Dispose();
            this.removeChild(_WaitBox);
            _WaitBox = null;
            _LetterValues.Dispose();
            _LetterValues = null;
            _Tracker.Dispose();
            _Tracker = null;
            _AssetManager.Dispose();
            _AssetManager = null;
            _Time.Dispose();
            _Time = null;
            _LongPoll.Dispose();
            _LongPoll = null;
            _AppData.Dispose();
            _AppData = null;
            _GameSessionCacheList.Dispose();
            _GameSessionCacheList = null;
            _ClientData.Dispose();
            _ClientData = null;
            _Glossary.Dispose();
            _Glossary = null;
            _Localization.Dispose();
            _Localization = null;
            if((Settings.IS_IOS || Settings.IS_ANDROID) && GoViral.isSupported())
            {
               GoViral.goViral.dispose();
            }
            _Debugger.Dispose();
            this.removeChild(_Debugger);
            _Debugger = null;
            Instance = null;
            NativeApplication.nativeApplication.exit();
            return;
         }
      }
   }
}
