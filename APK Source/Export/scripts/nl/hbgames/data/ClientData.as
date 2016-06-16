package nl.hbgames.data
{
   import nl.hbgames.interfaces.ISerializable;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.data.inventory.InventoryData;
   import flash.system.Capabilities;
   import nl.hbgames.data.inventory.InventoryItem;
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.managers.ads.AdManager;
   import nl.hbgames.managers.offerwalls.OfferWallManager;
   import nl.hbgames.managers.Serializer;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.MessageManager;
   import flash.events.Event;
   import nl.hbgames.config.Settings;
   import nl.hbgames.ui.popups.WelcomeBox;
   import nl.hbgames.ui.popups.IntroductionBox;
   import nl.hbgames.ui.popups.GuestBox;
   import nl.hbgames.net.LongPoll;
   import nl.hbgames.managers.billing.BillingManager;
   import nl.hbgames.managers.WordOnGoodsManager;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.utils.Response;
   import nl.hbgames.WordOn;
   import nl.hbgames.logic.menu.SplashLogic;
   import nl.hbgames.data.game.CachedSession;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.ui.popups.TileUpdateBox;
   import nl.hbgames.ui.popups.GameInviteBox;
   import flash.utils.ByteArray;
   
   public class ClientData extends Object implements ISerializable
   {
      
      private static var _Instance:ClientData = null;
       
      private var _PlayerData:PlayerData;
      
      private var _SocialData:SocialData;
      
      private var _InventoryData:InventoryData;
      
      private var _AuthToken:String;
      
      private var _DeviceType:String = "";
      
      private var _DeviceToken:String = "";
      
      private var _DictionaryLanguage:String;
      
      private var _CurTilesetID:int;
      
      private var _LastNewGameOption:int;
      
      private var _LastNewGameOpponentNames:Array;
      
      private var _CurGameSession:GameSessionData;
      
      private var _OverviewData:OverviewData;
      
      private var _ChatLog:ChatLog;
      
      private var _FacebookID:String;
      
      private var _FacebookToken:String;
      
      private var _PasswordHash:String;
      
      private var _AvatarTimestamp:Number = 0;
      
      private var _ForceSMPopup:Boolean = false;
      
      private var _IsLoggedIn:Boolean;
      
      private var _ShouldSyncDeviceTokenAfterLogin:Boolean;
      
      private var _IsGuest:Boolean;
      
      private var _HasSeenTutorial:Boolean;
      
      private var _ShouldSeeInviteBoxes:Boolean;
      
      private var _IsNewUser:Boolean;
      
      private var _InviteeID:String;
      
      private var _InviteeNames:Array;
      
      private var _InviteeGameID:String;
      
      private var _InviteeBorderID:int;
      
      private var _PlayerStatus:uint;
      
      private var _InviteCode:String;
      
      private var _Callback:Function;
      
      private var _MigrateCallback:Function;
      
      private var _TempStoredInvitesReceived:Array;
      
      private var _IsAllowingNotifications:Boolean = true;
      
      public function ClientData()
      {
         super();
         _Instance = this;
         Serializer.Instance.Register(this);
         _IsLoggedIn = false;
         Initialize();
      }
      
      public static function get Instance() : ClientData
      {
         if(_Instance == null)
         {
            Debugger.Instance.Write("ClientData does not exist. use new ClientData() before using Instance");
            return null;
         }
         return _Instance;
      }
      
      public function get Player() : PlayerData
      {
         return _PlayerData;
      }
      
      public function get Social() : SocialData
      {
         return _SocialData;
      }
      
      public function get Inventory() : InventoryData
      {
         return _InventoryData;
      }
      
      public function get AuthToken() : String
      {
         return _AuthToken;
      }
      
      public function get DeviceType() : String
      {
         return _DeviceType;
      }
      
      public function get DeviceToken() : String
      {
         return _IsAllowingNotifications?_DeviceToken:"";
      }
      
      public function set DeviceToken(param1:String) : void
      {
         _DeviceToken = param1;
      }
      
      public function get IsAllowingNotifications() : Boolean
      {
         return _IsAllowingNotifications;
      }
      
      public function set IsAllowingNotifications(param1:Boolean) : void
      {
         _IsAllowingNotifications = param1;
      }
      
      public function get DictionaryLanguage() : String
      {
         return _DictionaryLanguage;
      }
      
      public function set DictionaryLanguage(param1:String) : void
      {
         _DictionaryLanguage = param1;
      }
      
      public function get CurrentTilesetID() : int
      {
         return _CurTilesetID;
      }
      
      public function set CurrentTilesetID(param1:int) : void
      {
         _CurTilesetID = param1;
      }
      
      public function get LastNewGameOption() : int
      {
         return _LastNewGameOption;
      }
      
      public function set LastNewGameOption(param1:int) : void
      {
         _LastNewGameOption = param1;
      }
      
      public function get LastNewGameOpponentNames() : Array
      {
         return _LastNewGameOpponentNames;
      }
      
      public function set LastNewGameOpponentNames(param1:Array) : void
      {
         _LastNewGameOpponentNames = param1;
      }
      
      public function get CurrentGameSession() : GameSessionData
      {
         return _CurGameSession;
      }
      
      public function get ChatHistory() : ChatLog
      {
         return _ChatLog;
      }
      
      public function get GameListData() : OverviewData
      {
         return _OverviewData;
      }
      
      public function get FacebookID() : String
      {
         return _FacebookID;
      }
      
      public function set FacebookID(param1:String) : void
      {
         _FacebookID = param1;
      }
      
      public function get FacebookToken() : String
      {
         return _FacebookToken;
      }
      
      public function set FacebookToken(param1:String) : void
      {
         _FacebookToken = param1;
      }
      
      public function get PasswordHash() : String
      {
         return _PasswordHash;
      }
      
      public function set PasswordHash(param1:String) : void
      {
         _PasswordHash = param1;
      }
      
      public function get HasSeenTutorial() : Boolean
      {
         return _HasSeenTutorial;
      }
      
      public function set HasSeenTutorial(param1:Boolean) : void
      {
         _HasSeenTutorial = param1;
      }
      
      public function get AvatarTimestamp() : Number
      {
         return _AvatarTimestamp;
      }
      
      public function get IsGuest() : Boolean
      {
         return _IsGuest;
      }
      
      public function get IsNewUser() : Boolean
      {
         return _IsNewUser;
      }
      
      public function get ShouldSeeInviteBoxes() : Boolean
      {
         return _ShouldSeeInviteBoxes;
      }
      
      public function get IsInvited() : Boolean
      {
         return _InviteeGameID != null;
      }
      
      public function get InviteeFirstName() : String
      {
         return _InviteeNames[0];
      }
      
      public function get InviteeLastName() : String
      {
         return _InviteeNames[1];
      }
      
      public function get InviteeDisplayName() : String
      {
         return _InviteeNames[2];
      }
      
      public function get InviteeID() : String
      {
         return _InviteeID;
      }
      
      public function get InviteeGameID() : String
      {
         return _InviteeGameID;
      }
      
      public function get InviteeBorderID() : int
      {
         return _InviteeBorderID;
      }
      
      public function get InviteCode() : String
      {
         return _InviteCode;
      }
      
      public function get ForceStrengthMeterPopup() : Boolean
      {
         return _ForceSMPopup;
      }
      
      public function set ForceStrengthMeterPopup(param1:Boolean) : void
      {
         _ForceSMPopup = param1;
      }
      
      public function set ShouldSyncDeviceTokenAfterLogin(param1:Boolean) : void
      {
         _ShouldSyncDeviceTokenAfterLogin = param1;
      }
      
      public function get HasStarsForRLM() : Boolean
      {
         return (_PlayerStatus & 32) == 32;
      }
      
      public function get IsFacebookUser() : Boolean
      {
         return _FacebookID != null && _FacebookID != "";
      }
      
      public function get HasAuth() : Boolean
      {
         return _AuthToken != null && _AuthToken != "";
      }
      
      public function get IsLoggedIn() : Boolean
      {
         return _IsLoggedIn;
      }
      
      public function get LoginType() : String
      {
         if(_IsGuest)
         {
            return "guest";
         }
         if(this.IsFacebookUser)
         {
            return "facebook";
         }
         return "email";
      }
      
      private function Initialize() : void
      {
         _InventoryData = new InventoryData();
         _DeviceType = Capabilities.manufacturer;
         _DictionaryLanguage = Capabilities.language;
         _CurTilesetID = 0;
         _CurGameSession = null;
         _OverviewData = new OverviewData();
         _PlayerData = new PlayerData();
         _SocialData = new SocialData();
         _ChatLog = new ChatLog();
         _ShouldSeeInviteBoxes = false;
         _ShouldSyncDeviceTokenAfterLogin = false;
         _IsGuest = false;
      }
      
      public function Login(param1:Function, param2:Object, param3:Boolean = false) : void
      {
         callback = param1;
         data = param2;
         isGuest = param3;
         var user:Object = data.user;
         if(user == null)
         {
            Debugger.Instance.Write("[ClientData::Login] \'user\' parameter missing. Login cancelled!",true);
            return;
         }
         _Callback = callback;
         _PlayerData.Name = user.name;
         _PlayerData.ID = user.id;
         _PlayerData.BorderID = user.border;
         _AuthToken = user.authToken;
         _HasSeenTutorial = user.tutorial?user.tutorial:false;
         _AvatarTimestamp = user.avatarTimestamp;
         _IsNewUser = user.newUser && user.newUser == 1;
         _InviteCode = user.invCode?user.invCode:"";
         if(!_ShouldSeeInviteBoxes)
         {
            _ShouldSeeInviteBoxes = _IsNewUser?true:false;
         }
         if(data.invitee)
         {
            _InviteeNames = [data.invitee.firstname,data.invitee.lastname,data.invitee.displayname];
            _InviteeGameID = data.invitee.gameId;
            _InviteeID = data.invitee.friendId;
            _InviteeBorderID = data.invitee.border;
         }
         else
         {
            _InviteeNames = null;
            _InviteeID = §§dup(null);
            _InviteeGameID = null;
         }
         if(!_PasswordHash)
         {
            _PasswordHash = user.hash?user.hash:null;
         }
         if(user.email)
         {
            _PlayerData.Email = user.email;
         }
         if(user.plrStatus)
         {
            _PlayerStatus = user.plrStatus;
         }
         _IsGuest = isGuest;
         _InventoryData.Set(data);
         _InventoryData.Add(new InventoryItem(ShopItems.GetTilesetName(0),1));
         AppData.Instance.Set(data);
         _SocialData.Set(data);
         OnInvitesReceived(data);
         AdManager.instance.initialize();
         OfferWallManager.instance.initialize();
         Serializer.Instance.Serialize();
         Debugger.Instance.Write("[ClientData::Login] Data stored for player \'" + user.name + "\' (UserID: " + user.id + "  Token: " + user.authToken + ")");
         AppData.Instance.ProcessServerMessage(data.msg,false);
         AppData.Instance.ProcessNewsItems(data.newsItems,user.tournament);
         if(data.msg && data.msg.lock == 1)
         {
            AppData.Instance.DisplayServerMessage();
         }
         else if(_IsNewUser)
         {
            SWRVETracker.Instance.TrackCustomEvent("firststart");
            SWRVETracker.Instance.TrackCurrencyGiven("coins",_InventoryData.TotalCoins);
            SWRVETracker.Instance.TrackCurrencyGiven("stars",_InventoryData.TotalStars);
            SWRVETracker.Instance.SendBatch();
            if(this.IsFacebookUser)
            {
               SWRVETracker.Instance.TrackCurrencyGiven("stars",1);
               new MessageBox(Localization.Get("awesome"),Localization.Get("facebook_connected_bonus"),false,true,function():void
               {
                  _SocialData.LoadFacebookFriends(function(param1:Boolean):void
                  {
                     if(param1)
                     {
                        PHPWrapper.FacebookFriendPromoter(null,_SocialData.GetIDsFromFBList(_SocialData.FacebookPlayers).join(","));
                     }
                     InitPushNotifications();
                  });
               });
            }
            else
            {
               InitPushNotifications();
            }
         }
         else
         {
            AppData.Instance.PromoData = data.promo;
            InitPushNotifications();
         }
      }
      
      private function InitPushNotifications() : void
      {
         MessageManager.instance.addEventListener("tokenRegistered",FinalizeLogin);
         MessageManager.instance.addEventListener("tokenFailed",FinalizeLogin);
         MessageManager.instance.registerForRemoteNotifications();
      }
      
      private function FinalizeLogin(param1:Event = null) : void
      {
         MessageManager.instance.removeEventListener("tokenRegistered",FinalizeLogin);
         MessageManager.instance.removeEventListener("tokenFailed",FinalizeLogin);
         _DeviceToken = MessageManager.instance.pushToken;
         var _loc2_:Object = {
            "language":Capabilities.language,
            "platform":(Settings.IS_ANDROID?"Android":"iOS"),
            "locale":Settings.COUNTRY_CODE,
            "architecture":Capabilities.cpuArchitecture
         };
         if(!_HasSeenTutorial)
         {
            if(this.IsInvited)
            {
               new WelcomeBox();
            }
            else
            {
               new IntroductionBox();
            }
         }
         else if(_IsGuest)
         {
            new GuestBox(Localization.Get("guest_welcome_title"),Localization.Get("guest_welcome_message",_PlayerData.Name));
         }
         if(_IsGuest)
         {
            SWRVETracker.Instance.TrackCustomEvent("application.login.guest");
            _loc2_.connectType = 3;
         }
         else if(!_IsGuest && this.IsFacebookUser)
         {
            SWRVETracker.Instance.TrackCustomEvent("application.login.fb");
            _loc2_.connectType = 1;
         }
         else if(!_IsGuest && !this.IsFacebookUser)
         {
            SWRVETracker.Instance.TrackCustomEvent("application.login.email");
            _loc2_.connectType = 2;
         }
         SWRVETracker.Instance.TrackUser(_loc2_);
         _IsLoggedIn = true;
         if(_ShouldSyncDeviceTokenAfterLogin)
         {
            Debugger.Instance.Write("[ClientData::FinalizeLogin] Device token changed, sending to server.",false,true);
            _ShouldSyncDeviceTokenAfterLogin = false;
            PHPWrapper.AddDeviceToken(null,ClientData.Instance.DeviceToken);
         }
         if(!LongPoll.Instance.IsConnected)
         {
            LongPoll.Instance.Connect(true);
         }
         BillingManager.instance.initialize(WordOnGoodsManager.handleShopPurchaseResponse);
         BillingManager.instance.setUserID(_PlayerData.ID);
         BillingManager.instance.setVerificationServer(Settings.BILLING_URL);
         if(_Callback != null)
         {
            _Callback();
         }
      }
      
      public function Logout(param1:Boolean = false) : void
      {
         WaitBox.Hide();
         PanelManager.Instance.CloseAll();
         GameSessionCacheList.Reset();
         LongPoll.Instance.Disconnect();
         MessageManager.instance.cancelAllLocalMessages();
         if(!param1)
         {
            if(_IsLoggedIn)
            {
               PHPWrapper.ResetDeviceToken(null);
               MessageManager.instance.unregisterNotificationEvents();
               AdManager.instance.removeAllNetworks();
            }
         }
         Reset();
         Initialize();
         if(param1)
         {
            Serializer.Instance.Unserialize();
            new MessageBox(Localization.Get("attention"),Localization.Get("user_auth_invalid_during_play"),true);
            LogicManager.Instance.SetState("AutoLoginFail",null,"AnimRight");
         }
         else
         {
            Serializer.Instance.Serialize();
            LogicManager.Instance.SetState("Welcome",null,"AnimRight");
         }
      }
      
      public function AutoLogin() : Boolean
      {
         if(_IsGuest && _AuthToken)
         {
            Debugger.Instance.Write("[ClientData::AutoLogin] Guest saved credentials found. Trying to auto-login player...");
            _IsGuest = true;
            PHPWrapper.LoginGuest(OnAutoLogin,_AuthToken);
            return true;
         }
         if(_FacebookID)
         {
            Debugger.Instance.Write("[ClientData::AutoLogin] Facebook saved credentials found. Trying to auto-login player...");
            _IsGuest = false;
            FBWrapper.Connect(OnFacebookInit);
            return true;
         }
         if(_PlayerData.Email && _PasswordHash)
         {
            Debugger.Instance.Write("[ClientData::AutoLogin] Email saved credentials found. Trying to auto-login player...");
            _IsGuest = false;
            PHPWrapper.Login(OnAutoLogin,_PlayerData.Email,_PasswordHash);
            return true;
         }
         return false;
      }
      
      private function OnFacebookInit(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            PHPWrapper.LoginWithFacebook(OnAutoLogin,ClientData.Instance.FacebookToken);
         }
         else
         {
            WaitBox.Hide();
            LogicManager.Instance.SetState("AutoLoginFail",null,"AnimLeft");
         }
      }
      
      private function OnAutoLogin(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            WordOn.Instance.Audio.Play("sfxJingleIntro");
            ClientData.Instance.Login(function():void
            {
               LogicManager.Instance.SetState("GameOverview",null,"AnimLeft",true);
            },response,_IsGuest);
         }
         else
         {
            Debugger.Instance.Write("[ClientData::OnAutoLogin] Auto login failed!",true);
            new MessageBox(Localization.Get("whoops"),Localization.Get("autologin_failed"));
            if(LogicManager.Instance.CurLogic is SplashLogic)
            {
               LogicManager.Instance.SetState("AutoLoginFail",null,"AnimLeft");
            }
         }
      }
      
      public function JoinGame(param1:GameSessionData, param2:Function = null) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         if(_CurGameSession != null)
         {
            _CurGameSession.Dispose();
            _CurGameSession = null;
         }
         _CurGameSession = param1;
         if(param2 != null)
         {
            _CurGameSession.addEventListener("change",param2);
         }
         LetterDictionary.InitVectors(_CurGameSession.DictionaryLanguage);
         if(param1.Type != 2)
         {
            if(param1.Type == 0)
            {
               _loc4_ = GameSessionCacheList.GetSession(_CurGameSession.GameID);
               if(_loc4_ != null && _loc4_.IsInitialized)
               {
                  _loc3_ = _loc4_.GetRawData();
                  if(_loc3_ != null)
                  {
                     Debugger.Instance.Write("[ClientData::JoinGame] Cached data found. Processing last server response.");
                     _CurGameSession.Opponent.Email = _loc4_.Opponent.Email;
                     _CurGameSession.Opponent.ID = _loc4_.Opponent.ID;
                     _CurGameSession.Opponent.Name = _loc4_.Opponent.Name;
                     _CurGameSession.Set(_loc3_);
                  }
               }
               LongPoll.Instance.Connect();
               Debugger.Instance.Write("[ClientData::JoinGame] Player has joined a PvP game (id: " + _CurGameSession.GameID + ")");
            }
            else
            {
               Debugger.Instance.Write("[ClientData::JoinGame] Player has joined a PvAI game (id: " + _CurGameSession.GameID + ")");
            }
         }
         else
         {
            Debugger.Instance.Write("[ClientData::JoinGame] Player has joined a tutorial game");
         }
      }
      
      public function LeaveGame(param1:Function = null) : void
      {
         var _loc2_:* = true;
         if(_CurGameSession != null)
         {
            _loc2_ = _CurGameSession.Type == 0;
            if(param1 != null && _CurGameSession.hasEventListener("change"))
            {
               _CurGameSession.removeEventListener("change",param1);
            }
            _CurGameSession.Dispose();
            _CurGameSession = null;
         }
         if(_loc2_)
         {
            LongPoll.Instance.Connect();
         }
      }
      
      public function CheckOpenInvites() : void
      {
         PHPWrapper.GetOpenInvites(OnInvitesReceived);
      }
      
      private function OnInvitesReceived(param1:Object) : void
      {
         if(param1.result == ":)")
         {
            ProcessInviteData(param1.invitesSent,param1.invitesPending);
         }
      }
      
      public function ProcessInviteData(param1:Array = null, param2:Array = null) : void
      {
         if(param1)
         {
            _OverviewData.SetPending(param1);
         }
         if(param2)
         {
            if(param2.length > 0)
            {
               if(_TempStoredInvitesReceived == null)
               {
                  _TempStoredInvitesReceived = param2;
               }
               else
               {
                  _TempStoredInvitesReceived = _TempStoredInvitesReceived.concat(param2);
               }
               if(TilesetData.IsUpdateAvailable)
               {
                  new TileUpdateBox(ShowGameInvites);
               }
               else
               {
                  ShowGameInvites();
               }
            }
         }
      }
      
      private function ShowGameInvites() : void
      {
         var _loc2_:* = 0;
         var _loc1_:* = null;
         if(_TempStoredInvitesReceived != null)
         {
            _loc2_ = 0;
            while(_loc2_ < _TempStoredInvitesReceived.length)
            {
               _loc1_ = _TempStoredInvitesReceived[_loc2_];
               new GameInviteBox(_loc1_.id,_loc1_.displayname,_loc1_.userId,_loc1_.dictionaryId,_loc1_.tilesetId,_loc1_.border);
               _loc2_++;
            }
            _TempStoredInvitesReceived = null;
         }
      }
      
      public function MigrateToFacebook(param1:Function = null) : void
      {
         _MigrateCallback = param1;
         if(!this.IsFacebookUser)
         {
            WaitBox.Show();
            FBWrapper.Connect(OnFacebookInitResult);
         }
         else if(_MigrateCallback != null)
         {
            _MigrateCallback();
         }
      }
      
      private function OnFacebookInitResult(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            PHPWrapper.LinkToFacebook(OnFacebookLinkResult,ClientData.Instance.FacebookToken);
         }
         else
         {
            WaitBox.Hide();
         }
      }
      
      private function OnFacebookLinkResult(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            Login(_MigrateCallback,response,false);
         }
         else
         {
            ResetFacebookData();
            if(response.error == 17)
            {
               var body:String = _IsGuest?Localization.Get("migrate_fb_already_exist_guest"):Localization.Get("migrate_fb_already_exist");
               new MessageBox(Localization.Get("whoops"),body,false,true,function():void
               {
                  ClientData.Instance.Logout();
               },true);
            }
            else
            {
               new MessageBox(Localization.Get("whoops"),Localization.Get("migrate_fb_failed"),true);
            }
         }
      }
      
      public function Reset() : void
      {
         if(_PlayerData != null)
         {
            _PlayerData.Dispose();
         }
         if(_SocialData != null)
         {
            _SocialData.Dispose();
         }
         if(_OverviewData != null)
         {
            _OverviewData.Dispose();
         }
         if(_CurGameSession != null)
         {
            _CurGameSession.Dispose();
         }
         if(_InventoryData != null)
         {
            _InventoryData.Dispose();
         }
         if(_ChatLog != null)
         {
            _ChatLog.Dispose();
         }
         _ChatLog = null;
         _InventoryData = null;
         _CurGameSession = null;
         _OverviewData = null;
         _PlayerData = null;
         _SocialData = null;
         _AuthToken = null;
         ResetFacebookData();
         _PasswordHash = null;
         _IsLoggedIn = false;
      }
      
      public function ResetFacebookData() : void
      {
         _FacebookID = null;
         _FacebookToken = null;
      }
      
      public function ResetInviteeData() : void
      {
         _InviteeID = null;
         _InviteeNames = null;
         _InviteeGameID = null;
         _InviteeBorderID = 0;
      }
      
      public function FlagInviteBoxesSeen() : void
      {
         _ShouldSeeInviteBoxes = false;
         Serializer.Instance.Serialize();
      }
      
      public function Update() : void
      {
         if(this.IsLoggedIn && _InventoryData != null)
         {
            _InventoryData.Update();
         }
      }
      
      public function Serialize(param1:ByteArray) : void
      {
         var _loc2_:XML = <client></client>;
         _loc2_.appendChild(<lastdict>{_DictionaryLanguage}</lastdict>);
         _loc2_.appendChild(<lasttileid>{_CurTilesetID}</lasttileid>);
         _loc2_.appendChild(<allowpush>{_IsAllowingNotifications}</allowpush>);
         _loc2_.appendChild(<invites>{_ShouldSeeInviteBoxes}</invites>);
         var _loc4_:String = _PlayerData.Name?_PlayerData.Name:"";
         _loc2_.appendChild(<name>{_loc4_}</name>);
         var _loc3_:String = _PlayerData.Email?_PlayerData.Email:"";
         _loc2_.appendChild(<email>{_loc3_}</email>);
         if(_PasswordHash)
         {
            _loc2_.appendChild(<hash>{_PasswordHash}</hash>);
         }
         if(_FacebookID)
         {
            _loc2_.appendChild(<fbid>{_FacebookID}</fbid>);
         }
         if(_FacebookToken)
         {
            _loc2_.appendChild(<fbtoken>{_FacebookToken}</fbtoken>);
         }
         if(_IsGuest)
         {
            _loc2_.appendChild(<guest_token>{_AuthToken}</guest_token>);
         }
         param1.writeUTFBytes(_loc2_);
      }
      
      public function Unserialize(param1:XML) : void
      {
         _PlayerData.Name = param1.client.name != undefined?param1.client.name:null;
         _PlayerData.Email = param1.client.email != undefined?param1.client.email:null;
         _PasswordHash = param1.client.hash != undefined?param1.client.hash:null;
         _FacebookID = param1.client.fbid != undefined?param1.client.fbid:null;
         _FacebookToken = param1.client.fbtoken != undefined?param1.client.fbtoken:null;
         _DictionaryLanguage = param1.client.lastdict != undefined?param1.client.lastdict:Capabilities.language;
         if(param1.client.guest_token != undefined)
         {
            _IsGuest = true;
            _AuthToken = param1.client.guest_token;
         }
         else
         {
            _IsGuest = false;
            _AuthToken = null;
         }
         _ShouldSeeInviteBoxes = param1.client.invites != undefined?param1.client.invites:false;
         _CurTilesetID = param1.client.lasttileid != undefined?TilesetData.MakeValid(param1.client.lasttileid):0;
         _IsAllowingNotifications = param1.client.allowpush != undefined?param1.client.allowpush:true;
      }
      
      public function Dispose() : void
      {
         Reset();
         Serializer.Instance.Unregister(this);
      }
   }
}
