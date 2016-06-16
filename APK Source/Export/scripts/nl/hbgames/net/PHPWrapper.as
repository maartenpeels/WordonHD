package nl.hbgames.net
{
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.AppData;
   import nl.hbgames.config.Settings;
   import nl.hbgames.logic.game.board.BaseBlock;
   import nl.hbgames.data.MD5;
   
   public class PHPWrapper extends Object
   {
      
      private static var _Instance:PHPWrapper = new PHPWrapper();
      
      private static var _Connector:NetConnector;
       
      public function PHPWrapper()
      {
         super();
         if(_Instance == null)
         {
            _Instance = this;
            _Connector = new NetConnector(Settings.PHP_BASE_URL,false);
         }
      }
      
      public static function CreateGuest(param1:Function) : void
      {
         _Connector.send("/account/guest",Finalizer,param1,{
            "deviceId":ClientData.Instance.DeviceType,
            "deviceToken":ClientData.Instance.DeviceToken,
            "locale":AppData.Instance.ApplicationLanguage,
            "country":Settings.COUNTRY_CODE,
            "version":"1.88",
            "udId":Settings.UDID
         });
      }
      
      public static function EmailAvailable(param1:Function, param2:String) : void
      {
         _Connector.send("/account/isAvailable",Finalizer,param1,{"username":param2});
      }
      
      public static function Register(param1:Function, param2:String, param3:String) : void
      {
         _Connector.send("/account/register",Finalizer,param1,{
            "username":param3,
            "displayname":param2,
            "locale":AppData.Instance.ApplicationLanguage,
            "country":Settings.COUNTRY_CODE,
            "deviceId":ClientData.Instance.DeviceType,
            "deviceToken":ClientData.Instance.DeviceToken,
            "version":"1.88",
            "udId":Settings.UDID
         });
      }
      
      public static function Login(param1:Function, param2:String, param3:String) : void
      {
         _Connector.send("/account/login",Finalizer,param1,{
            "username":param2,
            "password":param3,
            "deviceId":ClientData.Instance.DeviceType,
            "locale":AppData.Instance.ApplicationLanguage,
            "country":Settings.COUNTRY_CODE,
            "deviceToken":ClientData.Instance.DeviceToken,
            "version":"1.88",
            "udId":Settings.UDID
         });
      }
      
      public static function LoginWithFacebook(param1:Function, param2:String) : void
      {
         _Connector.send("/account/facebook",Finalizer,param1,{
            "accessToken":param2,
            "locale":AppData.Instance.ApplicationLanguage,
            "country":Settings.COUNTRY_CODE,
            "deviceId":ClientData.Instance.DeviceType,
            "deviceToken":ClientData.Instance.DeviceToken,
            "version":"1.88",
            "udId":Settings.UDID
         });
      }
      
      public static function LoginGuest(param1:Function, param2:String) : void
      {
         _Connector.send("/account/guestLogin",Finalizer,param1,{
            "authToken":param2,
            "deviceId":ClientData.Instance.DeviceType,
            "locale":AppData.Instance.ApplicationLanguage,
            "country":Settings.COUNTRY_CODE,
            "deviceToken":ClientData.Instance.DeviceToken,
            "version":"1.88",
            "udId":Settings.UDID
         });
      }
      
      public static function LinkToFacebook(param1:Function, param2:String) : void
      {
         _Connector.send("/account/linkFacebook",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "accessToken":param2,
            "locale":AppData.Instance.ApplicationLanguage,
            "country":Settings.COUNTRY_CODE
         });
      }
      
      public static function ForgotPassword(param1:Function, param2:String) : void
      {
         _Connector.send("/account/forgotPassword",Finalizer,param1,{"username":param2});
      }
      
      public static function GetAvailableDictionaries(param1:Function) : void
      {
         _Connector.send("/game/availableDictionary",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function GetOpenInvites(param1:Function) : void
      {
         _Connector.send("/game/getInvites",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function SendInvites(param1:Function, param2:Array, param3:Array, param4:String, param5:int) : void
      {
         if(param2 == null)
         {
            var param2:Array = [];
         }
         if(param3 == null)
         {
            var param3:Array = [];
         }
         _Connector.send("/game/sendInvites",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "inviteIds":param2.join(","),
            "facebookIds":param3.join(","),
            "dictionaryId":param4,
            "tilesetId":param5
         });
      }
      
      public static function SendInviteRandom(param1:Function, param2:String, param3:int) : void
      {
         _Connector.send("/random",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "dict_id":param2,
            "tileset_id":param3
         },"POST",Settings.NODEJS_URL);
      }
      
      public static function ProcessInvite(param1:Function, param2:Boolean, param3:String, param4:int) : void
      {
         _Connector.send("/game/invitation",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "action":(param2?"accept":"decline"),
            "gameInviteId":param3,
            "tilesetId":param4
         });
      }
      
      public static function SearchUser(param1:Function, param2:String) : void
      {
         _Connector.send("/account/search",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "player":param2
         });
      }
      
      public static function AddFriend(param1:Function, param2:String) : void
      {
         _Connector.send("/account/addFriend",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "friendId":param2
         });
      }
      
      public static function RemoveFriend(param1:Function, param2:String) : void
      {
         _Connector.send("/account/removeFriend",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "friendId":param2
         });
      }
      
      public static function Block(param1:Function, param2:String) : void
      {
         _Connector.send("/account/blockUser",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "userId":param2
         });
      }
      
      public static function Unblock(param1:Function, param2:String) : void
      {
         _Connector.send("/account/unblockUser",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "userId":param2
         });
      }
      
      public static function GetFriends(param1:Function) : void
      {
         _Connector.send("/account/getFriends",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function GetGameList(param1:Function) : void
      {
         _Connector.send("/game/overview",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function PlayWord(param1:Function, param2:Vector.<BaseBlock>, param3:Array, param4:String) : void
      {
         var _loc6_:* = 0;
         var _loc5_:Array = [];
         _loc6_ = 0;
         while(_loc6_ < param2.length)
         {
            _loc5_.push(param2[_loc6_].GetLetter(false));
            _loc6_++;
         }
         _Connector.send("/game/play",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "word":_loc5_.join(","),
            "bestWord":param3.join(","),
            "gameId":param4
         });
      }
      
      public static function Chat(param1:Function, param2:String, param3:String, param4:String) : void
      {
         _Connector.send("/chat",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "msgid":param2,
            "msg":param3,
            "gid":param4
         },"POST",Settings.NODEJS_URL);
      }
      
      public static function ChatSeen(param1:Function, param2:String) : void
      {
         _Connector.send("/chatseen",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gid":param2
         },"POST",Settings.NODEJS_URL);
      }
      
      public static function PassTurn(param1:Function, param2:String) : void
      {
         _Connector.send("/game/swap",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function SwapAll(param1:Function, param2:String, param3:Boolean) : void
      {
         var _loc4_:String = param3?"/game/swapAllKeepTurn":"/game/swapAllLoseTurn";
         _Connector.send(_loc4_,Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function Resign(param1:Function, param2:String) : void
      {
         _Connector.send("/game/resign",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function SneakPeek(param1:Function, param2:String) : void
      {
         _Connector.send("/game/sneakPeek",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function CheckTiles(param1:Function, param2:String) : void
      {
         _Connector.send("/game/checkTiles",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function Hint(param1:Function, param2:String) : void
      {
         _Connector.send("/game/hint",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function GetGameStats(param1:Function, param2:String) : void
      {
         _Connector.send("/game/stats",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function GetProfile(param1:Function, param2:String, param3:Boolean = false) : void
      {
         if(!param3)
         {
            _Connector.send("/account/profile",Finalizer,param1,{
               "authToken":ClientData.Instance.AuthToken,
               "userId":param2
            });
         }
         else
         {
            _Connector.send("/account/profile",Finalizer,param1,{
               "authToken":ClientData.Instance.AuthToken,
               "facebookId":param2
            });
         }
      }
      
      public static function HasSeenTutorial(param1:Function = null) : void
      {
         _Connector.send("/account/flagTutorial",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function HasSeenAnalyzerTutorial(param1:Function, param2:String) : void
      {
         _Connector.send("/game/flagSMTutorial",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function GetShopOverview(param1:Function) : void
      {
         _Connector.send("/shop/overview",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function GetInventory(param1:Function) : void
      {
         _Connector.send("/shop/inventory",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function BuyConsumable(param1:Function, param2:String) : void
      {
         _Connector.send("/shop/buy",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "itemId":param2
         });
      }
      
      public static function ChangeAccount(param1:Function, param2:String, param3:String, param4:String, param5:String = "", param6:Boolean = false) : void
      {
         _Connector.send("/account/change",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "username":param2,
            "displayname":param3,
            "password":(param4 != ""?MD5.encrypt(param4 + "ohf87ewyr87wfhj"):""),
            "image":param5,
            "paymentApproval":param6
         });
      }
      
      public static function StoreApplicationLanguage(param1:Function, param2:String) : void
      {
         _Connector.send("/account/changeLocale",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "locale":param2
         });
      }
      
      public static function GetShopItemInfo(param1:Function, param2:String) : void
      {
         _Connector.send("/shop/item",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "itemId":param2
         });
      }
      
      public static function RemoveFinishedGame(param1:Function, param2:String) : void
      {
         _Connector.send("/game/delete",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function ResetDeviceToken(param1:Function) : void
      {
         _Connector.send("/account/updateDeviceToken",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "deviceId":ClientData.Instance.DeviceType,
            "deviceToken":"",
            "type":"reset"
         });
      }
      
      public static function AddDeviceToken(param1:Function, param2:String) : void
      {
         _Connector.send("/account/updateDeviceToken",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "deviceId":ClientData.Instance.DeviceType,
            "deviceToken":param2,
            "type":"register"
         });
      }
      
      public static function DisableDeviceToken(param1:Function, param2:String) : void
      {
         _Connector.send("/account/updateDeviceToken",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "deviceId":ClientData.Instance.DeviceType,
            "deviceToken":param2,
            "type":"deregister"
         });
      }
      
      public static function GetLeaderboard(param1:Function, param2:Array) : void
      {
         _Connector.send("/account/leaderboard",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "ids":param2.join(",")
         });
      }
      
      public static function EnableStrengthMeter(param1:Function, param2:String) : void
      {
         _Connector.send("/game/strengthMeter",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "gameId":param2
         });
      }
      
      public static function StoreInvite(param1:Function, param2:String, param3:String, param4:int) : void
      {
         _Connector.send("/account/facebookInvite",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "facebookId":param2,
            "dictionaryId":param3,
            "tilesetId":param4
         });
      }
      
      public static function FacebookFriendPromoter(param1:Function, param2:String) : void
      {
         _Connector.send("/account/facebookFriendPromoter",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "ids":param2
         });
      }
      
      public static function GetFacebookNewPlayers(param1:Function) : void
      {
         _Connector.send("/account/facebookNewcomers",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function RequestNewsItems(param1:Function) : void
      {
         _Connector.send("/news/overview",Finalizer,param1,{"authToken":ClientData.Instance.AuthToken});
      }
      
      public static function DefineWord(param1:Function, param2:String, param3:String, param4:uint) : void
      {
         _Connector.send("/game/definition",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "word":param2,
            "dictionary":param3,
            "rid":param4
         },"POST",Settings.WORDDEF_URL);
      }
      
      public static function ReportMissingDefinition(param1:Function, param2:Array, param3:String) : void
      {
         _Connector.send("/game/reportDefinition",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "word":param2.join(","),
            "dictionary":param3
         });
      }
      
      public static function Poke(param1:Function, param2:String) : void
      {
         _Connector.send("/account/poke",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "friendId":param2
         });
      }
      
      public static function Resume() : void
      {
         _Connector.send("/game/resume",Finalizer,OnResume,{
            "authToken":ClientData.Instance.AuthToken,
            "timestamp":AppData.Instance.UpdateTimestamp
         });
      }
      
      public static function RedeemCode(param1:Function, param2:String) : void
      {
         _Connector.send("/account/redeem",Finalizer,param1,{
            "authToken":ClientData.Instance.AuthToken,
            "code":param2
         });
      }
      
      public static function Catch(param1:String, param2:String, param3:String, param4:String = null, param5:int = -2147483648) : void
      {
         var _loc6_:Object = {};
         _loc6_.dt = Settings.IS_IOS?"iOS":Settings.IS_ANDROID?"Android":"Unknown";
         _loc6_.uid = ClientData.Instance.IsLoggedIn?ClientData.Instance.Player.ID:"n/a";
         _loc6_.src = param1 + "::" + param2;
         _loc6_.msg = param3;
         if(param4 != null)
         {
            _loc6_.emg = param4;
         }
         if(param5 != -2147483648)
         {
            _loc6_.eid = param5;
         }
         _Connector.send("/catchAll",Finalizer,null,_loc6_);
      }
      
      private static function OnResume(param1:Object) : void
      {
         if(param1.result == ":)")
         {
            if(param1.invitesSent || param1.invitesPending)
            {
               ClientData.Instance.ProcessInviteData(param1.invitesSent,param1.invitesPending);
            }
            AppData.Instance.Set(param1);
            if(param1.promo)
            {
               AppData.Instance.PromoData = param1.promo;
            }
         }
      }
      
      private static function Finalizer(param1:Object, param2:Function) : void
      {
         if(param1.error == 10 && ClientData.Instance.IsLoggedIn)
         {
            ClientData.Instance.Logout(true);
         }
         else
         {
            AppData.Instance.ProcessServerMessage(param1.msg);
            if(param2 != null)
            {
               param2(param1);
            }
         }
      }
      
      public function get Instance() : PHPWrapper
      {
         return _Instance;
      }
   }
}
