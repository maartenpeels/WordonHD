package nl.hbgames.managers.promo
{
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.NetRequest;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.TrackingData;
   import flash.net.navigateToURL;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.ui.popups.PromoRewardBox;
   import flash.desktop.NativeApplication;
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.Localization;
   import flash.net.URLRequest;
   import com.hurlant.crypto.hash.SHA256;
   import flash.utils.ByteArray;
   import com.hurlant.util.Hex;
   import nl.hbgames.data.Base64;
   import flash.net.URLVariables;
   
   public class HBPromoManager extends Object
   {
      
      public static const ERR_CODE_NO_REWARDS:int = 3;
      
      public static const ERR_CODE_OUTOFDATE:int = 4;
      
      public static const ERR_CODE_ALREADY_REDEEMED:int = 5;
      
      public static const ERR_CODE_INVALID:int = 6;
      
      private static var theInstance:HBPromoManager = new HBPromoManager();
       
      private const SIGNATURE:String = "+VuN,A1DIYBzd@a@X@g.v%bzNfeh2lyK#66Vh_|?pBAn?sR;m/,ad+GkB-xa*RjR";
      
      private const BASE_URL:String = "http://promo.huckleberry-games.com";
      
      private const WEB_REWARD_URL:String = "http://promo.huckleberry-games.com/redeem";
      
      private const WEB_VERIFY_URL:String = "http://promo.huckleberry-games.com/redeemVerify";
      
      private const API_URL:String = "http://promo.huckleberry-games.com/api/redeem";
      
      private var thePromoCode:String;
      
      private const MAX_PROMO_VALID_TIME:Number = 1.728E8;
      
      public function HBPromoManager()
      {
         super();
         if(theInstance == null)
         {
            theInstance = this;
            return;
         }
         throw new Error("[HBPromoManager] Class is a singleton. Use HBPromoManager.instance to access!");
      }
      
      public static function get instance() : HBPromoManager
      {
         return theInstance;
      }
      
      public function useAPI(param1:Function, param2:String, param3:String) : void
      {
         if(param2 != null)
         {
            WaitBox.Show();
            thePromoCode = param3;
            new NetRequest(onAPIResult,param1,createURLRequest("http://promo.huckleberry-games.com/api/redeem",getBasicParams(param2),true),"text",false);
         }
      }
      
      private function onAPIResult(param1:Object, param2:Function) : void
      {
         aResponse = param1;
         aTargetMethod = param2;
         WaitBox.Hide();
         if(aResponse.result == ":)")
         {
            PHPWrapper.GetInventory(function(param1:Object):void
            {
               if(param1.result == ":)")
               {
                  ClientData.Instance.Inventory.Set(param1);
               }
            });
         }
      }
      
      public function useWebsite(param1:String, param2:String, param3:String) : Boolean
      {
         var _loc4_:* = null;
         if(param1 != null && param2 != null && param3 != null && param3.length == 2)
         {
            TrackingData.Instance.UsedPromoTool(true);
            _loc4_ = getBasicParams(param1);
            _loc4_.displayname = param2;
            _loc4_.locale = param3.toLowerCase();
            navigateToURL(createURLRequest("http://promo.huckleberry-games.com/redeem",_loc4_,false),"_blank");
            return true;
         }
         return false;
      }
      
      public function checkManually(param1:String) : Boolean
      {
         var _loc2_:* = NaN;
         if(param1 != null && TrackingData.Instance.HasUsedHBPromo)
         {
            _loc2_ = new Date().getTime();
            if(_loc2_ < TrackingData.Instance.HBPromoTimestamp + 172800000)
            {
               new NetRequest(onVerifyData,null,createURLRequest("http://promo.huckleberry-games.com/redeemVerify",getBasicParams(param1),false),"text",false);
               return true;
            }
            Debugger.Instance.Write("[HBPromoManager::check] Validation time elapsed. Resetting.");
            TrackingData.Instance.UsedPromoTool(false);
            return false;
         }
         return false;
      }
      
      private function onVerifyData(param1:Object, param2:Function = null) : void
      {
         var _loc3_:* = false;
         if(param1.result == ":)")
         {
            new PromoRewardBox(param1);
            _loc3_ = true;
         }
         else if(param1.error == 3)
         {
            Debugger.Instance.Write("[HBPromoManager::onVerifyData] No reward available. Resetting.");
            _loc3_ = true;
         }
         if(_loc3_)
         {
            TrackingData.Instance.UsedPromoTool(false);
         }
      }
      
      private function getBasicParams(param1:String) : Object
      {
         var _loc3_:String = NativeApplication.nativeApplication.applicationID;
         if(_loc3_.substr(0,4) == "air.")
         {
            _loc3_ = _loc3_.substr(4);
         }
         var _loc2_:Object = {};
         _loc2_.gameId = _loc3_;
         _loc2_.userId = param1;
         _loc2_.deviceId = Settings.UDID;
         _loc2_.deviceType = Settings.IS_IOS?"iOS":Settings.IS_ANDROID?"Android":"unknown";
         _loc2_.lang = Localization.ActiveLanguage;
         _loc2_.locale = Settings.COUNTRY_CODE;
         return _loc2_;
      }
      
      private function createURLRequest(param1:String, param2:Object, param3:Boolean) : URLRequest
      {
         var _loc10_:* = null;
         var _loc5_:String = JSON.stringify(param2);
         var _loc11_:SHA256 = new SHA256();
         var _loc7_:String = _loc5_ + "+VuN,A1DIYBzd@a@X@g.v%bzNfeh2lyK#66Vh_|?pBAn?sR;m/,ad+GkB-xa*RjR";
         var _loc6_:ByteArray = new ByteArray();
         _loc6_.writeUTFBytes(_loc7_);
         var _loc4_:ByteArray = _loc11_.hash(_loc6_);
         _loc4_.position = 0;
         var _loc8_:Object = {};
         _loc8_.json = _loc5_;
         _loc8_.hash = Hex.fromArray(_loc4_);
         var _loc9_:String = Base64.Encode(JSON.stringify(_loc8_));
         if(param3)
         {
            _loc10_ = new URLRequest(param1);
            _loc10_.data = new URLVariables();
            _loc10_.data.d = _loc9_;
            _loc10_.data.c = thePromoCode;
            _loc10_.method = "POST";
         }
         else
         {
            _loc10_ = new URLRequest(param1 + "/" + _loc9_);
            _loc10_.method = "GET";
         }
         return _loc10_;
      }
   }
}
