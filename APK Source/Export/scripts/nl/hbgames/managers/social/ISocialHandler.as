package nl.hbgames.managers.social
{
   public interface ISocialHandler
   {
       
      function setErrorNotificationCallback(param1:Function) : void;
      
      function initialize(param1:String) : void;
      
      function connect(param1:Function, param2:Boolean = true, param3:String = null) : void;
      
      function isPermissionGranted(param1:String) : Boolean;
      
      function getDeclinedPermissions() : Vector.<String>;
      
      function requestNewReadPermissions(param1:String) : void;
      
      function requestNewWritePermissions(param1:String) : void;
      
      function getFriends(param1:Function) : void;
      
      function getProfile(param1:Function) : void;
      
      function getHighscore(param1:Function) : void;
      
      function getLeaderboardScores(param1:Function) : void;
      
      function setHighscore(param1:int, param2:Function) : void;
      
      function showShareDialog(param1:Function, param2:String, param3:String, param4:String, param5:String = null, param6:String = null) : void;
      
      function showRequestDialog(param1:Function, param2:String, param3:String, param4:String = null, param5:String = null, param6:String = null) : void;
      
      function logout(param1:Function) : void;
   }
}
