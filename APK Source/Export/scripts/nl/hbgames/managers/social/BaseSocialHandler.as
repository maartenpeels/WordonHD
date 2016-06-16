package nl.hbgames.managers.social
{
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.utils.Response;
   
   public class BaseSocialHandler extends Object implements ISocialHandler
   {
       
      protected var theReadPermissions:String;
      
      protected var theNetworkAppID:String;
      
      protected var theAuthToken:String;
      
      protected var theIsInitializedFlag:Boolean;
      
      protected var theIsConnectedFlag:Boolean;
      
      protected var theAutoLoadProfileFlag:Boolean;
      
      protected var theUserProfile:SocialProfile;
      
      protected var theProcessQueue:Array;
      
      protected var theErrorNotificationCallback:Function;
      
      public function BaseSocialHandler()
      {
         super();
         theProcessQueue = [];
      }
      
      public function get isConnected() : Boolean
      {
         return theIsConnectedFlag;
      }
      
      public function get authToken() : String
      {
         return theAuthToken;
      }
      
      public function get userProfile() : SocialProfile
      {
         return theUserProfile;
      }
      
      public function setErrorNotificationCallback(param1:Function) : void
      {
         theErrorNotificationCallback = param1;
      }
      
      public function initialize(param1:String) : void
      {
         theNetworkAppID = param1;
      }
      
      public function connect(param1:Function, param2:Boolean = true, param3:String = null) : void
      {
         theReadPermissions = param3;
         theAutoLoadProfileFlag = param2;
      }
      
      public function isPermissionGranted(param1:String) : Boolean
      {
         return false;
      }
      
      public function getDeclinedPermissions() : Vector.<String>
      {
         return new Vector.<String>();
      }
      
      public function requestNewReadPermissions(param1:String) : void
      {
      }
      
      public function requestNewWritePermissions(param1:String) : void
      {
      }
      
      public function getFriends(param1:Function) : void
      {
      }
      
      public function getProfile(param1:Function) : void
      {
      }
      
      public function getHighscore(param1:Function) : void
      {
      }
      
      public function getLeaderboardScores(param1:Function) : void
      {
      }
      
      public function setHighscore(param1:int, param2:Function) : void
      {
      }
      
      public function showShareDialog(param1:Function, param2:String, param3:String, param4:String, param5:String = null, param6:String = null) : void
      {
      }
      
      public function showRequestDialog(param1:Function, param2:String, param3:String, param4:String = null, param5:String = null, param6:String = null) : void
      {
      }
      
      public function logout(param1:Function) : void
      {
      }
      
      protected function process(param1:Function, param2:Function, ... rest) : void
      {
         if(!theIsConnectedFlag)
         {
            Debugger.Instance.Write("[BaseSocialHandler::process] Not connected to network!",true);
            return;
            §§push(param1(new Response(":(",97)));
         }
         else
         {
            var _loc5_:* = theProcessQueue.length == 0;
            var _loc4_:Object = {
               "cb":param1,
               "pm":param2
            };
            if(rest.length > 0)
            {
               _loc4_.args = rest;
            }
            theProcessQueue.push(_loc4_);
            if(_loc5_)
            {
               processNext();
            }
            return;
         }
      }
      
      protected function processNext() : Boolean
      {
         var _loc1_:* = null;
         if(theProcessQueue.length > 0)
         {
            _loc1_ = theProcessQueue[0];
            if(_loc1_.pm != null)
            {
               if(_loc1_.args)
               {
                  _loc1_.pm.apply(null,_loc1_.args);
               }
               else
               {
                  _loc1_.pm();
               }
            }
            return true;
         }
         return false;
      }
      
      protected function finalizeProcess(param1:Response) : void
      {
         var _loc2_:Object = theProcessQueue[0];
         if(_loc2_.cb != null)
         {
            _loc2_.cb(param1);
         }
         theProcessQueue.shift();
         processNext();
      }
      
      protected function sendErrorNotification(param1:int, param2:String) : void
      {
         var _loc3_:Response = new Response(":(",param1);
         _loc3_.data = param2;
         if(theErrorNotificationCallback != null)
         {
            theErrorNotificationCallback(_loc3_);
         }
      }
      
      public function dispose() : void
      {
         theUserProfile = null;
         theIsInitializedFlag = false;
         theIsConnectedFlag = false;
         theAutoLoadProfileFlag = false;
         theProcessQueue = null;
      }
   }
}
