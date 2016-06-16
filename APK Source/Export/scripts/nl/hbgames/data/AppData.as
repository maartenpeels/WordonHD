package nl.hbgames.data
{
   import nl.hbgames.interfaces.ISerializable;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.managers.Serializer;
   import nl.hbgames.config.Settings;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.net.GATracker;
   import nl.hbgames.ui.panels.PromotionPanel;
   import nl.hbgames.data.news.DefaultNewsItemList;
   import nl.hbgames.utils.Random;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.ui.popups.MessageBox;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.ui.popups.PromoRewardBox;
   import flash.utils.ByteArray;
   import flash.system.Capabilities;
   
   public class AppData extends Object implements ISerializable
   {
      
      private static var _Instance:AppData = null;
       
      private var _FreshInstall:Boolean;
      
      private var _StorageVersion:Number;
      
      private var _ApplicationLanguage:String;
      
      private var _ApplicationLanguageModified:Boolean;
      
      private var _Audio:Boolean;
      
      private var _UpdateTimestamp:Number = 0;
      
      private var _PromoData:Array;
      
      private var _PromoTrackTimestamp:Number = 0;
      
      private var _PromoResetIntervalInHours:int = 1;
      
      private var _PromoTimeDistribution:int = 4;
      
      private var _PromoDisplayCount:int = 0;
      
      private var _PromoResumeRate:int = 4;
      
      private var _PromoResumeCount:int = 0;
      
      private var _ShowGameTips:Boolean = true;
      
      private var _StarRating:Array;
      
      private var _AppLaunches:int = 1;
      
      private var _AppInstallDate:Number;
      
      private var _HasSeenRateBox:Boolean;
      
      private var _RateBoxRemindAmount:int;
      
      private var _HasSeenPlayerSuggestions:Boolean;
      
      private var _LastNewPlayersCheck:Number = 0;
      
      private var _BackendVersion:Number = 1;
      
      private var _CostSneakPeek:int = 1;
      
      private var _CostHint:int = 1;
      
      private var _CostNameChange:int = 1;
      
      private var _CostCheckPile:int = 1;
      
      private var _CostCoinBar:int = 3;
      
      private var _CostSwapAll:int = 2;
      
      private var _AdIntervalInSecs:Number = 1800;
      
      private var _ListRefreshIntervalInSecs:Number = 30;
      
      private var _ActiveAdProviders:String = null;
      
      private var _ActiveOfferWallProvider:int = 2;
      
      private var _GamesUntilAnalyzerTutorial:int = 4;
      
      private var _DateUntilAnalyzerTutorial:Number = 0;
      
      private var _InvitePlayersAfterTurn:int = 1;
      
      private var _InviteFriendsAfterTurn:int = 4;
      
      private var _Properties:int = 0;
      
      private var _VideoRewardStatus:int = 2;
      
      private var _ServerMsgData:Object;
      
      private var _ServerMsgParams:String;
      
      private var _ServerMsgKeys:Array;
      
      public var ShouldShowAd:Boolean = false;
      
      public var IgnoreAdIntervalForNextShowing:Boolean = false;
      
      private var _NewsItems:Vector.<NewsItemData>;
      
      private var _NewsUpdateTime:Number = 0;
      
      private const NEWS_REFRESH_TIME:Number = 4.32E7;
      
      public function AppData()
      {
         _StarRating = [0,0.2,0.4,0.6,0.8,1];
         super();
         _Instance = this;
         Serializer.Instance.Register(this);
         _FreshInstall = true;
         _StorageVersion = 1;
         this.ApplicationLanguage = Capabilities.language;
         _ApplicationLanguageModified = false;
         _Audio = true;
         _HasSeenRateBox = false;
         _RateBoxRemindAmount = 0;
         _ServerMsgKeys = [];
      }
      
      public static function get Instance() : AppData
      {
         if(_Instance == null)
         {
            Debugger.Instance.Write("AppData does not exists. use new AppData() before using Instance");
            return null;
         }
         return _Instance;
      }
      
      public function get FreshInstall() : Boolean
      {
         return _FreshInstall;
      }
      
      public function set FreshInstall(param1:Boolean) : void
      {
         _FreshInstall = param1;
      }
      
      public function get StorageVersion() : Number
      {
         return _StorageVersion;
      }
      
      public function set StorageVersion(param1:Number) : void
      {
         _StorageVersion = param1;
      }
      
      public function get ApplicationLanguage() : String
      {
         return _ApplicationLanguage;
      }
      
      public function set ApplicationLanguage(param1:String) : void
      {
         _ApplicationLanguage = Localization.CheckAvailableLanguages(param1,true);
         Localization.SetLanguage(param1);
      }
      
      public function get AppLanguageModified() : Boolean
      {
         return _ApplicationLanguageModified;
      }
      
      public function set AppLanguageModified(param1:Boolean) : void
      {
         _ApplicationLanguageModified = param1;
      }
      
      public function get Audio() : Boolean
      {
         return _Audio;
      }
      
      public function set Audio(param1:Boolean) : void
      {
         _Audio = param1;
      }
      
      public function get UpdateTimestamp() : Number
      {
         return _UpdateTimestamp;
      }
      
      public function set PromoData(param1:Array) : void
      {
         _PromoData = param1 != null && param1.length > 0?param1:null;
      }
      
      public function get StarRating() : Array
      {
         return _StarRating;
      }
      
      public function set StarRating(param1:Array) : void
      {
         _StarRating = param1;
      }
      
      public function get AppLaunches() : int
      {
         return _AppLaunches;
      }
      
      public function set AppLaunches(param1:int) : void
      {
         _AppLaunches = param1;
      }
      
      public function get AppInstallDate() : Number
      {
         return _AppInstallDate;
      }
      
      public function set AppInstallDate(param1:Number) : void
      {
         _AppInstallDate = param1;
      }
      
      public function get HasSeenRateBox() : Boolean
      {
         return _HasSeenRateBox;
      }
      
      public function set HasSeenRateBox(param1:Boolean) : void
      {
         _HasSeenRateBox = param1;
      }
      
      public function get RateBoxRemindAmount() : int
      {
         return _RateBoxRemindAmount;
      }
      
      public function set RateBoxRemindAmount(param1:int) : void
      {
         _RateBoxRemindAmount = param1;
      }
      
      public function get HasSeenPlayerSuggestions() : Boolean
      {
         return _HasSeenPlayerSuggestions;
      }
      
      public function set HasSeenPlayerSuggestions(param1:Boolean) : void
      {
         _HasSeenPlayerSuggestions = param1;
      }
      
      public function get LastNewPlayersCheck() : Number
      {
         return _LastNewPlayersCheck;
      }
      
      public function set LastNewPlayersCheck(param1:Number) : void
      {
         _LastNewPlayersCheck = param1;
         Serializer.Instance.Serialize();
      }
      
      public function get ShowGameTips() : Boolean
      {
         return _ShowGameTips;
      }
      
      public function set ShowGameTips(param1:Boolean) : void
      {
         _ShowGameTips = param1;
         ResetNewsItems();
         Serializer.Instance.Serialize();
      }
      
      public function get BackendVersion() : Number
      {
         return _BackendVersion;
      }
      
      public function get CostSneakPeek() : int
      {
         return _CostSneakPeek;
      }
      
      public function get CostHint() : int
      {
         return _CostHint;
      }
      
      public function get CostNameChange() : int
      {
         return _CostNameChange;
      }
      
      public function get CostCheckPile() : int
      {
         return _CostCheckPile;
      }
      
      public function get CostCoinBar() : int
      {
         return _CostCoinBar;
      }
      
      public function get CostSwapAll() : int
      {
         return _CostSwapAll;
      }
      
      public function get AdIntervalInSecs() : Number
      {
         return _AdIntervalInSecs;
      }
      
      public function get ListRefreshIntervalInSecs() : Number
      {
         return _ListRefreshIntervalInSecs;
      }
      
      public function get ActiveAdProviders() : String
      {
         return _ActiveAdProviders;
      }
      
      public function get ActiveOfferWallProvider() : int
      {
         return _ActiveOfferWallProvider;
      }
      
      public function get GamesUntilAnalyzerTutorial() : int
      {
         return _GamesUntilAnalyzerTutorial;
      }
      
      public function get DateUntilAnalyzerTutorial() : Number
      {
         return _DateUntilAnalyzerTutorial;
      }
      
      public function get InvitePlayersAfterTurn() : int
      {
         return _InvitePlayersAfterTurn;
      }
      
      public function get InviteFriendsAfterTurn() : int
      {
         return _InviteFriendsAfterTurn;
      }
      
      public function get HintsDisabled() : Boolean
      {
         return (_Properties & 2) == 2;
      }
      
      public function get DisableIAdWalls() : Boolean
      {
         return (_Properties & 4) == 4;
      }
      
      public function get DisableAdsNewUser() : Boolean
      {
         return (_Properties & 1) == 1;
      }
      
      public function get SwapAllLosesTurn() : Boolean
      {
         return (_Properties & 8) == 8;
      }
      
      public function get AllowVideoRewards() : Boolean
      {
         return _VideoRewardStatus == 2;
      }
      
      public function get NewsItems() : Vector.<NewsItemData>
      {
         return _NewsItems;
      }
      
      public function Set(param1:Object) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = false;
         if(param1.timestamp)
         {
            _UpdateTimestamp = param1.timestamp;
         }
         if(param1.config)
         {
            if(param1.config.strengthRating)
            {
               _StarRating = param1.config.strengthRating.split(",");
               _loc3_ = 0;
               while(_loc3_ < _StarRating.length)
               {
                  _StarRating[_loc3_] = _StarRating[_loc3_];
                  _loc3_++;
               }
            }
            if(param1.config.starsSneakPeek)
            {
               _CostSneakPeek = param1.config.starsSneakPeek;
            }
            if(param1.config.starsPileCheck)
            {
               _CostCheckPile = param1.config.starsPileCheck;
            }
            if(param1.config.starsNameChange)
            {
               _CostNameChange = param1.config.starsNameChange;
            }
            if(param1.config.starsCoinBar)
            {
               _CostCoinBar = param1.config.starsCoinBar;
            }
            if(param1.config.starsSwapAll)
            {
               _CostSwapAll = param1.config.starsSwapAll;
            }
            if(param1.config.version)
            {
               _BackendVersion = param1.config.version;
            }
            if(param1.config.props)
            {
               _Properties = param1.config.props;
            }
            if(param1.config.gamesUntilSMTutorial)
            {
               _GamesUntilAnalyzerTutorial = param1.config.gamesUntilSMTutorial;
            }
            if(param1.config.freeSMTimestamp)
            {
               _DateUntilAnalyzerTutorial = param1.config.freeSMTimestamp * 1000;
            }
            if(param1.config.adInterval)
            {
               _AdIntervalInSecs = param1.config.adInterval;
            }
            if(param1.config.starsHint)
            {
               _CostHint = param1.config.starsHint;
            }
            if(param1.config.inviteFriendsTurn)
            {
               _InviteFriendsAfterTurn = param1.config.inviteFriendsTurn;
            }
            if(param1.config.invitePlayersTurn)
            {
               _InvitePlayersAfterTurn = param1.config.invitePlayersTurn;
            }
            if(param1.config.adProvider)
            {
               _ActiveAdProviders = param1.config.adProvider;
            }
            if(param1.config.vrStatus)
            {
               _VideoRewardStatus = param1.config.vrStatus;
            }
            if(param1.config.listRefreshInterval)
            {
               _ListRefreshIntervalInSecs = param1.config.listRefreshInterval;
            }
            if(param1.config.offerWallProvider)
            {
               _ActiveOfferWallProvider = param1.config.offerWallProvider;
            }
            if(param1.config.promoResetInterval)
            {
               _PromoResetIntervalInHours = param1.config.promoResetInterval;
            }
            if(param1.config.promoTimeDist)
            {
               _PromoTimeDistribution = param1.config.promoTimeDist;
            }
            if(param1.config.promoResumeRate)
            {
               _PromoResumeRate = param1.config.promoResumeRate;
            }
            if(param1.config.staticHost)
            {
               Settings.CONTENT_URL = param1.config.staticHost;
            }
            if(param1.config.trackHost)
            {
               Settings.WO_TRACKING_URL = param1.config.trackHost;
               SWRVETracker.Instance.UpdateURLs(Settings.WO_TRACKING_URL);
            }
            if(param1.config.wdHost)
            {
               Settings.WORDDEF_URL = param1.config.wdHost;
            }
            if(param1.config.tilesetTimestamp)
            {
               TilesetData.CheckVersion(param1.config.tilesetTimestamp);
            }
            _loc2_ = param1.config.gaTracker == null || param1.config.gaTracker && param1.config.gaTracker != 0;
            if(_loc2_)
            {
               GATracker.initialize(Settings.GA_TRACKING_ID,"WordOn HD","1.88");
            }
         }
      }
      
      public function DisplayPromo() : void
      {
         var _loc3_:* = null;
         var _loc2_:* = NaN;
         var _loc4_:* = NaN;
         var _loc1_:* = false;
         if(_PromoData != null)
         {
            if(_PromoData.length > 0)
            {
               _loc3_ = _PromoData.shift();
               _loc2_ = new Date().getTime();
               _loc4_ = _loc3_.dateTill;
               if(_loc4_ == 0 || _loc2_ / 1000 <= _loc4_)
               {
                  _PromoData.push(_loc3_);
                  if(_loc2_ > _PromoTrackTimestamp + _PromoResetIntervalInHours * 60 * 60 * 1000)
                  {
                     _PromoTrackTimestamp = _loc2_;
                     _PromoDisplayCount = 0;
                     _PromoResumeCount = 0;
                     _loc1_ = true;
                  }
                  if(_PromoResumeCount >= _PromoResumeRate)
                  {
                     if(_PromoDisplayCount < _PromoTimeDistribution)
                     {
                        new PromotionPanel(_loc3_);
                        _PromoDisplayCount = _PromoDisplayCount + 1;
                        _PromoResumeCount = 0;
                        _loc1_ = true;
                     }
                  }
               }
            }
         }
         if(_loc1_)
         {
            Serializer.Instance.Serialize();
         }
      }
      
      public function SetAnalyzerDate(param1:Number) : void
      {
         _DateUntilAnalyzerTutorial = param1 * 1000;
      }
      
      public function ProcessNewsItems(param1:*, param2:Boolean = false) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc3_:* = null;
         _NewsItems = new Vector.<NewsItemData>();
         if(param1 != null && param1 is Array)
         {
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               _NewsItems.push(new NewsItemData(param1[_loc5_],true));
               _loc5_++;
            }
         }
         if(param2 && ClientData.Instance.IsFacebookUser)
         {
            _loc4_ = DefaultNewsItemList.TOURNAMENT_ENDED;
            _loc3_ = {
               "icon":_loc4_.icon,
               "header":Localization.Get(_loc4_.headerKey),
               "message":Localization.Get(_loc4_.messageKey),
               "params":_loc4_.params
            };
            _NewsItems.unshift(new NewsItemData(_loc3_,true));
         }
         ResetNewsItems();
         _NewsUpdateTime = new Date().getTime();
      }
      
      public function RemoveNewsItemsByType(param1:int) : void
      {
         var _loc2_:* = 0;
         if(_NewsItems != null)
         {
            _loc2_ = 0;
            while(_loc2_ < _NewsItems.length)
            {
               if(_NewsItems[_loc2_].IconType == param1)
               {
                  _NewsItems.splice(_loc2_,1);
                  _loc2_--;
               }
               _loc2_++;
            }
         }
      }
      
      public function ResetNewsItems() : void
      {
         var _loc2_:* = null;
         var _loc4_:* = 0;
         var _loc1_:* = null;
         var _loc3_:* = null;
         if(!_NewsItems)
         {
            _NewsItems = new Vector.<NewsItemData>();
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _NewsItems.length)
            {
               if(!_NewsItems[_loc4_].IsForced)
               {
                  _NewsItems.splice(_loc4_,1);
                  _loc4_--;
               }
               _loc4_++;
            }
         }
         if(_ShowGameTips)
         {
            _loc1_ = [];
            _loc4_ = 0;
            while(_loc4_ < DefaultNewsItemList.DATA.length)
            {
               _loc2_ = DefaultNewsItemList.DATA[_loc4_];
               if(_loc2_.enabled)
               {
                  if(!_loc2_.fbConnect || _loc2_.fbConnect && !ClientData.Instance.IsFacebookUser)
                  {
                     if(_loc2_.appConfig == null || AppData.Instance[_loc2_.appConfig.key] == _loc2_.appConfig.value)
                     {
                        _loc3_ = _loc2_.locaInsert != null?Localization.Get(_loc2_.messageKey,AppData.Instance[_loc2_.locaInsert]):Localization.Get(_loc2_.messageKey);
                        _loc1_.push({
                           "icon":_loc2_.icon,
                           "header":Localization.Get(_loc2_.headerKey),
                           "message":_loc3_,
                           "params":_loc2_.params
                        });
                     }
                  }
               }
               _loc4_++;
            }
            Random.shuffle(_loc1_);
            _loc4_ = 0;
            while(_loc4_ < _loc1_.length)
            {
               _NewsItems.push(new NewsItemData(_loc1_[_loc4_]));
               _loc4_++;
            }
         }
      }
      
      private function CheckForNewsUpdate(param1:Boolean = false) : void
      {
         force = param1;
         if(force || new Date().getTime() > _NewsUpdateTime + 43200000)
         {
            PHPWrapper.RequestNewsItems(function(param1:Object):void
            {
               if(param1.result == ":)")
               {
                  ProcessNewsItems(param1.newsItems);
               }
            });
         }
      }
      
      public function ProcessServerMessage(param1:Object, param2:Boolean = true) : void
      {
         if(param1 != null)
         {
            if(_ServerMsgKeys.indexOf(param1.id) == -1)
            {
               _ServerMsgData = {};
               _ServerMsgKeys.push(param1.id);
               _ServerMsgData.title = param1.title;
               _ServerMsgData.body = param1.body;
               _ServerMsgData.isError = param1.warning;
               _ServerMsgData.isLock = param1.lock;
               _ServerMsgData.type = param1.type?param1.type:0;
               _ServerMsgData.lblOk = param1.lbl_ok;
               _ServerMsgData.lblCancel = param1.lbl_cancel;
               _ServerMsgData.delay = param1.delay != null?param1.delay:0;
               _ServerMsgParams = param1.params?param1.params:"";
               if(param2)
               {
                  DisplayServerMessage();
               }
            }
         }
      }
      
      public function DisplayServerMessage() : Boolean
      {
         if(!PopupManager.Instance.isActive)
         {
            if(_ServerMsgData != null)
            {
               var _loc1_:* = _ServerMsgData.type;
               if(0 !== _loc1_)
               {
                  if(1 !== _loc1_)
                  {
                     if(2 !== _loc1_)
                     {
                        if(4 !== _loc1_)
                        {
                           if(3 === _loc1_)
                           {
                              new PromoRewardBox(_ServerMsgParams,_ServerMsgData.title,_ServerMsgData.body);
                           }
                        }
                        else
                        {
                           new MessageBox(_ServerMsgData.title,_ServerMsgData.body,_ServerMsgData.isError,true,function():void
                           {
                              LogicManager.Instance.SetState("Promoshare");
                           },true,null,true,false,_ServerMsgData.lblOk,_ServerMsgData.lblCancel).DelayInput(_ServerMsgData.delay);
                        }
                     }
                     else
                     {
                        new MessageBox(_ServerMsgData.title,_ServerMsgData.body,_ServerMsgData.isError,true,function():void
                        {
                           LogicManager.Instance.SetState("ShopOverview",{"activeFilter":_ServerMsgParams});
                        },true,null,true,false,_ServerMsgData.lblOk,_ServerMsgData.lblCancel).DelayInput(_ServerMsgData.delay);
                     }
                  }
                  else
                  {
                     new MessageBox(_ServerMsgData.title,_ServerMsgData.body,_ServerMsgData.isError,true,function():void
                     {
                     },!_ServerMsgData.isLock,null,!_ServerMsgData.isLock,false,_ServerMsgData.lblOk,_ServerMsgData.lblCancel).DelayInput(_ServerMsgData.delay);
                  }
               }
               else
               {
                  new MessageBox(_ServerMsgData.title,_ServerMsgData.body,_ServerMsgData.isError,!_ServerMsgData.isLock,null,false,null,true,false,_ServerMsgData.lblOk,_ServerMsgData.lblCancel).DelayInput(_ServerMsgData.delay);
               }
               _ServerMsgData = null;
               return true;
            }
         }
         return false;
      }
      
      public function OnActivate() : void
      {
         if(ClientData.Instance.IsLoggedIn)
         {
            CheckForNewsUpdate();
         }
         _PromoResumeCount = _PromoResumeCount + 1;
         Serializer.Instance.Serialize();
      }
      
      public function Serialize(param1:ByteArray) : void
      {
         var _loc2_:XML = <general></general>;
         _loc2_.appendChild(<version>{_StorageVersion}</version>);
         _loc2_.appendChild(<language>{_ApplicationLanguage}</language>);
         _loc2_.appendChild(<langchanged>{_ApplicationLanguageModified}</langchanged>);
         _loc2_.appendChild(<audio>{_Audio}</audio>);
         _loc2_.appendChild(<seenratebox>{_HasSeenRateBox}</seenratebox>);
         _loc2_.appendChild(<ratereminders>{_RateBoxRemindAmount}</ratereminders>);
         _loc2_.appendChild(<freshinstall>{_FreshInstall}</freshinstall>);
         _loc2_.appendChild(<launches>{_AppLaunches}</launches>);
         _loc2_.appendChild(<installdate>{_AppInstallDate}</installdate>);
         _loc2_.appendChild(<playercheck>{_LastNewPlayersCheck}</playercheck>);
         _loc2_.appendChild(<p_time>{_PromoTrackTimestamp}</p_time>);
         _loc2_.appendChild(<p_count>{_PromoDisplayCount}</p_count>);
         _loc2_.appendChild(<p_resumes>{_PromoResumeCount}</p_resumes>);
         _loc2_.appendChild(<showgametips>{_ShowGameTips}</showgametips>);
         param1.writeUTFBytes(_loc2_);
      }
      
      public function Unserialize(param1:XML) : void
      {
         _StorageVersion = param1.general.version != undefined?param1.general.version:1.0;
         _ApplicationLanguageModified = param1.general.langchanged != undefined?param1.general.langchanged:false;
         this.ApplicationLanguage = _ApplicationLanguageModified?param1.general.language:Capabilities.language;
         _Audio = param1.general.audio != undefined?param1.general.audio:true;
         _HasSeenRateBox = param1.general.seenratebox != undefined?param1.general.seenratebox:false;
         _RateBoxRemindAmount = param1.general.ratereminders != undefined?param1.general.ratereminders:0;
         _FreshInstall = param1.general.freshinstall != undefined?param1.general.freshinstall:true;
         _AppLaunches = param1.general.launches != undefined?param1.general.launches:0;
         _AppInstallDate = param1.general.installdate != undefined?param1.general.installdate:new Date().getTime();
         _LastNewPlayersCheck = param1.general.playercheck != undefined?param1.general.playercheck:0.0;
         _PromoTrackTimestamp = param1.general.p_time != undefined?param1.general.p_time:new Date().getTime();
         _PromoDisplayCount = param1.general.p_count != undefined?param1.general.p_count:0.0;
         _PromoResumeCount = param1.general.p_resumes != undefined?param1.general.p_resumes:0.0;
         _ShowGameTips = param1.general.showgametips != undefined?param1.general.showgametips:true;
         _AppLaunches = _AppLaunches + 1;
         _PromoResumeCount = _PromoResumeCount + 1;
      }
      
      public function Dispose() : void
      {
         _ServerMsgData = null;
         _ServerMsgParams = null;
         _ServerMsgKeys = null;
         _ApplicationLanguage = null;
         Serializer.Instance.Unregister(this);
      }
   }
}
