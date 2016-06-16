package nl.hbgames.managers.social
{
   import com.milkmangames.nativeextensions.GoViral;
   import nl.hbgames.utils.Debugger;
   import com.milkmangames.nativeextensions.events.GVFacebookEvent;
   import nl.hbgames.utils.Response;
   import com.milkmangames.nativeextensions.GVFacebookFriend;
   
   public class FacebookSocialHandler extends BaseSocialHandler implements ISocialHandler
   {
       
      private const DIALOG_NONE:int = 0;
      
      private const DIALOG_SHARE:int = 1;
      
      private const DIALOG_INVITE:int = 2;
      
      private var theIsLoggingInFlag:Boolean;
      
      private var theLogoutCallback:Function;
      
      private var theAuthCallback:Function;
      
      private var theDialogCallback:Function;
      
      private var theDialogMode:int;
      
      private const DEBUG_TO_SCREEN:Boolean = false;
      
      public function FacebookSocialHandler()
      {
         super();
      }
      
      override public function initialize(param1:String) : void
      {
         super.initialize(param1);
         if(!theIsInitializedFlag)
         {
            GoViral.goViral.initFacebook(param1);
            theIsInitializedFlag = true;
         }
      }
      
      override public function connect(param1:Function, param2:Boolean = true, param3:String = null) : void
      {
         super.connect(param1,param2,param3);
         theAuthCallback = param1;
         if(!GoViral.goViral.isFacebookSupported())
         {
            Debugger.Instance.Write("[FacebookSocialHandler::login] Facebook login not supported on device.",true,false);
            finalizeLogin(false,103);
            return;
         }
         login();
      }
      
      private function login() : void
      {
         if(theIsLoggingInFlag)
         {
            Debugger.Instance.Write("[FacebookSocialHandler::login] Already handling a login process.",true,false);
            return;
         }
         if(GoViral.goViral.isFacebookAuthenticated())
         {
            Debugger.Instance.Write("[FacebookSocialHandler::login] Already authenticated.",false,false);
            clearLoginEvents();
            finalizeLogin(true);
         }
         else
         {
            Debugger.Instance.Write("[FacebookSocialHandler::login] Proceed to log-in dialogue.",false,false);
            setLoginEvents();
            GoViral.goViral.authenticateWithFacebook(theReadPermissions);
         }
      }
      
      private function onHandleLogin(param1:GVFacebookEvent) : void
      {
         Debugger.Instance.Write("[FacebookSocialHandler::onHandleLogin] Type: " + param1.type,false,false);
         clearLoginEvents();
         var _loc2_:* = param1.type;
         if("gvFacebookLoggedin" !== _loc2_)
         {
            Debugger.Instance.Write("[FacebookSocialHandler::onHandleLogin] " + param1.errorMessage + " (" + param1.errorCode + ")",true,false);
            if(param1.errorCode == 9001)
            {
               finalizeLogin(false,104);
            }
            else
            {
               finalizeLogin(false);
            }
         }
         else
         {
            finalizeLogin(true);
         }
      }
      
      private function finalizeLogin(param1:Boolean, param2:int = 98) : void
      {
         aSuccessFlag = param1;
         anErrorResponseType = param2;
         if(aSuccessFlag)
         {
            theIsConnectedFlag = true;
            theAuthToken = GoViral.goViral.getFbAccessToken();
            if(!GoViral.goViral.hasEventListener("gvFbRawResponse"))
            {
               GoViral.goViral.addEventListener("gvFbRawResponse",onValidResponse);
            }
            if(!GoViral.goViral.hasEventListener("gvFbRequestFailed"))
            {
               GoViral.goViral.addEventListener("gvFbRequestFailed",onErrorResponse);
            }
            if(!GoViral.goViral.hasEventListener("gvFacebookSessionInvalidated"))
            {
               GoViral.goViral.addEventListener("gvFacebookSessionInvalidated",onErrorResponse);
            }
            if(theAutoLoadProfileFlag && theUserProfile == null)
            {
               getProfile(function(param1:Response):void
               {
               });
            }
            else
            {
               var r:Response = new Response(":)");
               r.data = theUserProfile;
               theAuthCallback(r);
            }
         }
         else
         {
            theAuthCallback(new Response(":(",anErrorResponseType));
         }
      }
      
      override public function isPermissionGranted(param1:String) : Boolean
      {
         return GoViral.goViral.isFacebookPermissionGranted(param1);
      }
      
      override public function getDeclinedPermissions() : Vector.<String>
      {
         return GoViral.goViral.getDeclinedFacebookPermissions();
      }
      
      override public function requestNewReadPermissions(param1:String) : void
      {
         GoViral.goViral.requestNewFacebookReadPermissions(param1);
      }
      
      override public function requestNewWritePermissions(param1:String) : void
      {
         GoViral.goViral.requestNewFacebookPublishPermissions(param1);
      }
      
      override public function getFriends(param1:Function) : void
      {
         aCallback = param1;
         super.getFriends(aCallback);
         process(function(param1:Response):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc5_:* = 0;
            var _loc4_:* = null;
            if(param1.isSuccess && param1.data != null && param1.data.length > 0)
            {
               _loc2_ = new Vector.<SocialProfile>();
               _loc3_ = param1.data?param1.data:new Vector.<GVFacebookFriend>();
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc4_ = _loc3_[_loc5_];
                  _loc2_.push(new SocialProfile(_loc4_.id,_loc4_.properties.first_name,_loc4_.properties.middle_name,_loc4_.properties.last_name,_loc4_.email(),_loc4_.gender,_loc4_.installed));
                  _loc5_++;
               }
               param1.data = _loc2_;
               aCallback(param1);
            }
            else
            {
               aCallback(new Response(":(",99));
            }
         },GoViral.goViral.requestFacebookFriends,{
            "fields":"installed,first_name,middle_name,last_name,location,gender",
            "limit":200
         });
      }
      
      override public function getProfile(param1:Function) : void
      {
         aCallback = param1;
         super.getProfile(aCallback);
         process(function(param1:Response):void
         {
            var _loc3_:* = null;
            var _loc2_:* = null;
            if(param1.isSuccess && param1.data != null)
            {
               try
               {
                  if(param1.data is Vector.<*>)
                  {
                     _loc3_ = param1.data[0];
                     theUserProfile = new SocialProfile(_loc3_.id,_loc3_.properties.first_name,_loc3_.properties.middle_name,_loc3_.properties.last_name,_loc3_.email(),_loc3_.gender,true);
                  }
                  else
                  {
                     _loc2_ = param1.data;
                     theUserProfile = new SocialProfile(_loc2_.id,_loc2_.first_name,_loc2_.middle_name,_loc2_.last_name,_loc2_.email,_loc2_.gender,true);
                  }
                  param1.data = theUserProfile;
                  aCallback(param1);
               }
               catch(e:Error)
               {
                  theUserProfile = null;
                  aCallback(new Response(":(",99));
               }
            }
            else
            {
               theUserProfile = null;
               aCallback(new Response(":(",99));
            }
         },GoViral.goViral.requestMyFacebookProfile);
      }
      
      override public function getHighscore(param1:Function) : void
      {
         super.getHighscore(param1);
         process(param1,GoViral.goViral.facebookGraphRequest,"/me/scores");
      }
      
      override public function getLeaderboardScores(param1:Function) : void
      {
         super.getLeaderboardScores(param1);
         process(param1,GoViral.goViral.facebookGraphRequest,"/" + theNetworkAppID + "/scores");
      }
      
      override public function setHighscore(param1:int, param2:Function) : void
      {
         super.setHighscore(param1,param2);
         process(param2,GoViral.goViral.postFacebookHighScore,param1);
      }
      
      override public function showShareDialog(param1:Function, param2:String, param3:String, param4:String, param5:String = null, param6:String = null) : void
      {
         aCallback = param1;
         aTitle = param2;
         aCaption = param3;
         aMessage = param4;
         aLinkURL = param5;
         anImageURL = param6;
         super.showShareDialog(aCallback,aTitle,aCaption,aMessage,aLinkURL,anImageURL);
         theDialogCallback = aCallback;
         theDialogMode = 1;
         if(!GoViral.goViral.hasEventListener("gvFbDialogFinished"))
         {
            GoViral.goViral.addEventListener("gvFbDialogFinished",onDialogStatus);
            GoViral.goViral.addEventListener("gvFbDialogFailed",onDialogStatus);
            GoViral.goViral.addEventListener("gvFbDialogCancelled",onDialogStatus);
         }
         if(GoViral.goViral.isFacebookShareDialogAvailable())
         {
            GoViral.goViral.showFacebookShareDialog(aTitle,aCaption,aMessage,aLinkURL,anImageURL);
         }
         else if(!GoViral.goViral.isFacebookAuthenticated())
         {
            connect(function(param1:Response):void
            {
               if(param1.isSuccess)
               {
                  GoViral.goViral.showFacebookFeedDialog(aTitle,aCaption,aMessage,aMessage,aLinkURL,anImageURL);
               }
            },false,"public_profile");
         }
         else
         {
            GoViral.goViral.showFacebookFeedDialog(aTitle,aCaption,aMessage,aMessage,aLinkURL,anImageURL);
         }
      }
      
      override public function showRequestDialog(param1:Function, param2:String, param3:String, param4:String = null, param5:String = null, param6:String = null) : void
      {
         theDialogCallback = param1;
         theDialogMode = 2;
         if(!GoViral.goViral.hasEventListener("gvFbDialogFinished"))
         {
            GoViral.goViral.addEventListener("gvFbDialogFinished",onDialogStatus);
            GoViral.goViral.addEventListener("gvFbDialogFailed",onDialogStatus);
            GoViral.goViral.addEventListener("gvFbDialogCancelled",onDialogStatus);
         }
         GoViral.goViral.showFacebookRequestDialog(param3,param2,param4,null,param5,param6,false);
      }
      
      private function onDialogStatus(param1:GVFacebookEvent) : void
      {
         var _loc2_:* = null;
         switch(theDialogMode - 1)
         {
            case 0:
         }
         if(theDialogCallback != null)
         {
            if(param1.type == "gvFbDialogFinished")
            {
               _loc2_ = new Response(":)");
               _loc2_.data = param1.data;
               theDialogCallback(_loc2_);
            }
            else if(param1.type == "gvFbDialogCancelled")
            {
               theDialogCallback(new Response(":(",102));
            }
            else
            {
               theDialogCallback(new Response(":(",101));
            }
         }
         theDialogMode = 0;
         theDialogCallback = null;
      }
      
      private function onValidResponse(param1:GVFacebookEvent) : void
      {
         Debugger.Instance.Write("[FacebookSocialHandler::onValidResponse] Type = " + param1.type,false,false);
         var _loc2_:Response = new Response(":)");
         _loc2_.data = param1.friends != null && param1.friends.length > 0?param1.friends:param1.data;
         finalizeProcess(_loc2_);
      }
      
      private function onErrorResponse(param1:GVFacebookEvent) : void
      {
         Debugger.Instance.Write("[FacebookSocialHandler::onErrorResponse] Error #" + param1.errorCode,true,false);
         if(param1.shouldNotifyFacebookUser)
         {
            sendErrorNotification(param1.errorCode,param1.errorMessage);
         }
         var _loc2_:Response = new Response(":(",param1.errorCode);
         _loc2_.data = param1;
         finalizeProcess(_loc2_);
      }
      
      override public function logout(param1:Function) : void
      {
         super.logout(param1);
         if(theIsConnectedFlag)
         {
            if(!GoViral.goViral.hasEventListener("gvFacebookLoggedout"))
            {
               GoViral.goViral.addEventListener("gvFacebookLoggedout",onHandleLogout);
            }
            theLogoutCallback = param1;
            GoViral.goViral.logoutFacebook();
         }
         else
         {
            Debugger.Instance.Write("[FacebookSocialHandler::logout] User is not connected.",true,false);
            param1(new Response(":(",100));
         }
      }
      
      private function onHandleLogout(param1:GVFacebookEvent) : void
      {
         GoViral.goViral.removeEventListener("gvFacebookLoggedout",onHandleLogout);
         theIsConnectedFlag = false;
         theLogoutCallback(new Response(":)"));
         dispose();
      }
      
      private function setLoginEvents() : void
      {
         GoViral.goViral.addEventListener("gvFacebookLoggedin",onHandleLogin);
         GoViral.goViral.addEventListener("gvFacebookLoginCancelled",onHandleLogin);
         GoViral.goViral.addEventListener("gvFacebookLoginFailed",onHandleLogin);
         theIsLoggingInFlag = true;
      }
      
      private function clearLoginEvents() : void
      {
         GoViral.goViral.removeEventListener("gvFacebookLoggedin",onHandleLogin);
         GoViral.goViral.removeEventListener("gvFacebookLoginCancelled",onHandleLogin);
         GoViral.goViral.removeEventListener("gvFacebookLoginFailed",onHandleLogin);
         theIsLoggingInFlag = false;
      }
      
      override public function dispose() : void
      {
         clearLoginEvents();
         GoViral.goViral.removeEventListener("gvFbRawResponse",onValidResponse);
         GoViral.goViral.removeEventListener("gvFbRequestFailed",onErrorResponse);
         GoViral.goViral.removeEventListener("gvFacebookSessionInvalidated",onErrorResponse);
         GoViral.goViral.removeEventListener("gvFacebookLoggedout",onHandleLogout);
         GoViral.goViral.removeEventListener("gvFbDialogFinished",onDialogStatus);
         GoViral.goViral.removeEventListener("gvFbDialogFailed",onDialogStatus);
         GoViral.goViral.removeEventListener("gvFbDialogCancelled",onDialogStatus);
         theAuthCallback = null;
         theLogoutCallback = null;
         theDialogCallback = null;
         theDialogMode = 0;
         super.dispose();
      }
   }
}
