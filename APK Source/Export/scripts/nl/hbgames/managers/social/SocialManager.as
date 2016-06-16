package nl.hbgames.managers.social
{
   import flash.system.Capabilities;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.utils.Response;
   
   public class SocialManager extends Object
   {
      
      private static var theInstance:SocialManager = new SocialManager();
       
      private var theHandler:BaseSocialHandler;
      
      public function SocialManager()
      {
         super();
         if(theInstance == null)
         {
            theInstance = this;
            return;
         }
         throw new Error("[SocialManager] Class is a singleton. Use SocialManager.instance to access!");
      }
      
      public static function get instance() : SocialManager
      {
         return theInstance;
      }
      
      public function get isConnected() : Boolean
      {
         return theHandler != null?theHandler.isConnected:false;
      }
      
      public function get authToken() : String
      {
         return theHandler != null?theHandler.authToken:null;
      }
      
      public function get profile() : SocialProfile
      {
         return theHandler != null?theHandler.userProfile:null;
      }
      
      public function initialize(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:String = Capabilities.manufacturer;
         if((_loc3_.indexOf("Android") > -1 || _loc3_.indexOf("iOS") > -1) && !param2)
         {
            theHandler = new FacebookSocialHandler();
         }
         else
         {
            theHandler = new TestSocialHandler();
         }
         if(theHandler != null)
         {
            theHandler.initialize(param1);
         }
      }
      
      public function setErrorNotificationCallback(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.setErrorNotificationCallback(param1);
         }
      }
      
      public function connect(param1:Function, param2:Boolean = true, param3:String = null) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.connect(param1,param2,param3);
         }
      }
      
      public function isPermissionGranted(param1:String) : Boolean
      {
         if(isHandlerAvailable())
         {
            return theHandler.isPermissionGranted(param1);
         }
         return false;
      }
      
      public function getDeclinedPermissions() : Vector.<String>
      {
         if(isHandlerAvailable())
         {
            return theHandler.getDeclinedPermissions();
         }
         return new Vector.<String>();
      }
      
      public function requestNewReadPermissions(param1:String) : void
      {
         if(isHandlerAvailable())
         {
            return theHandler.requestNewReadPermissions(param1);
         }
      }
      
      public function requestNewWritePermissions(param1:String) : void
      {
         if(isHandlerAvailable())
         {
            return theHandler.requestNewWritePermissions(param1);
         }
      }
      
      public function getFriends(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.getFriends(param1);
         }
      }
      
      public function getProfile(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.getProfile(param1);
         }
      }
      
      public function getHighscore(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.getHighscore(param1);
         }
      }
      
      public function getLeaderboardScores(param1:Function) : void
      {
         if(isHandlerAvailable(param1))
         {
            theHandler.getLeaderboardScores(param1);
         }
      }
      
      public function setHighscore(param1:int, param2:Function) : void
      {
         if(isHandlerAvailable(param2))
         {
            theHandler.setHighscore(param1,param2);
         }
      }
      
      public function showShareDialog(param1:Function, param2:String, param3:String, param4:String, param5:String = null, param6:String = null) : void
      {
         if(isHandlerAvailable())
         {
            theHandler.showShareDialog(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function showRequestDialog(param1:Function, param2:String, param3:String, param4:String = null, param5:String = null, param6:String = null) : void
      {
         if(isHandlerAvailable())
         {
            theHandler.showRequestDialog(param1,param2,param3,param4,param5,param6);
         }
      }
      
      private function isHandlerAvailable(param1:Function = null) : Boolean
      {
         if(theHandler == null)
         {
            Debugger.Instance.Write("[SocialManager::isHandlerAvailable] Initialization required!",true);
            if(param1 != null)
            {
               param1(new Response(":(",96));
            }
            return false;
         }
         return true;
      }
   }
}
