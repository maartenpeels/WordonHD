package nl.hbgames.managers.social
{
   import flash.utils.Timer;
   import nl.hbgames.utils.Response;
   import nl.hbgames.utils.Random;
   import flash.events.TimerEvent;
   import nl.hbgames.utils.Debugger;
   
   public class TestSocialHandler extends BaseSocialHandler implements ISocialHandler
   {
       
      private const SIMULATED_MIN_WAIT:Number = 200;
      
      private const SIMULATED_MAX_WAIT:Number = 1500;
      
      private const FAIL_RATIO:Number = 0.05;
      
      private const TEST_PROFILE:SocialProfile = new SocialProfile("100007108508292","Huckle","","Berry","tester@hbgames.nl","male",true);
      
      private const TEST_FRIEND_PROFILES:Array = [new SocialProfile("1391680453","Marijn","","Harinck","marijn@hbgames.nl","male",true),new SocialProfile("1700451760","Jur","","DeFur","jur@hbgames.nl","male",true),new SocialProfile("100001384573505","Marcel","","Brouwer","marcel@hbgames.nl","male",true),new SocialProfile("100000926116366","Eljo","","Bosman","eljo@hbgames.nl","male",true),new SocialProfile("576277944","Lourens","","Beerkens","lourens@hbgames.nl","male",false),new SocialProfile("100002415815324","Lianne","","De Blok","lianne@hbgames.nl","female",false),new SocialProfile("1450566641","Óluva","","Á Torkilsheyggi","oluva@hbgames.nl","female",false),new SocialProfile("100000380495463","Safira","","De Witte","safira@hbgames.nl","female",false),new SocialProfile("789154939","Sharmyla","","De Jong","sharmyla@hbgames.nl","female",true),new SocialProfile("870720690","Joyce","","Walthaus","joyce@hbgames.nl","female",false)];
      
      private var theTimer:Timer;
      
      private var theFinalizeResponse:Response;
      
      public function TestSocialHandler()
      {
         super();
         theIsConnectedFlag = true;
      }
      
      override public function initialize(param1:String) : void
      {
         super.initialize(param1);
         theIsInitializedFlag = true;
      }
      
      override public function connect(param1:Function, param2:Boolean = true, param3:String = null) : void
      {
         aCallback = param1;
         anAutoLoadProfileFlag = param2;
         aReadPermissionList = param3;
         super.connect(aCallback,anAutoLoadProfileFlag,aReadPermissionList);
         process(aCallback,function():void
         {
            theAuthToken = "1234567890";
            theIsInitializedFlag = true;
            var _loc1_:Response = new Response(":)");
            if(anAutoLoadProfileFlag)
            {
               theUserProfile = TEST_PROFILE;
               _loc1_.data = TEST_PROFILE;
            }
            finalizeProcess(_loc1_);
         });
      }
      
      override public function isPermissionGranted(param1:String) : Boolean
      {
         return true;
      }
      
      override public function getDeclinedPermissions() : Vector.<String>
      {
         return new Vector.<String>();
      }
      
      override public function requestNewReadPermissions(param1:String) : void
      {
      }
      
      override public function requestNewWritePermissions(param1:String) : void
      {
      }
      
      override public function getFriends(param1:Function) : void
      {
         aCallback = param1;
         super.getFriends(aCallback);
         process(aCallback,function():void
         {
            var _loc3_:* = 0;
            var _loc1_:Response = new Response(":)");
            var _loc2_:Vector.<SocialProfile> = new Vector.<SocialProfile>();
            _loc3_ = 0;
            while(_loc3_ < TEST_FRIEND_PROFILES.length)
            {
               _loc2_.push(TEST_FRIEND_PROFILES[_loc3_]);
               _loc3_++;
            }
            _loc1_.data = _loc2_;
            finalizeProcess(_loc1_);
         });
      }
      
      override public function getProfile(param1:Function) : void
      {
         aCallback = param1;
         super.getProfile(aCallback);
         process(aCallback,function():void
         {
            var _loc1_:Response = new Response(":)");
            _loc1_.data = TEST_PROFILE;
            theUserProfile = TEST_PROFILE;
            finalizeProcess(_loc1_);
         });
      }
      
      override public function getHighscore(param1:Function) : void
      {
         aCallback = param1;
         super.getHighscore(aCallback);
         process(aCallback,function():void
         {
            var _loc1_:Response = new Response(":)");
            var _loc2_:Array = [{
               "user":{
                  "name":TEST_PROFILE.fullName,
                  "id":TEST_PROFILE.id
               },
               "score":Random.nextIntRange(5,5000),
               "application":{
                  "name":"TestApp",
                  "application":theNetworkAppID
               },
               "type":"score"
            }];
            _loc1_.data = {"data":_loc2_};
            finalizeProcess(_loc1_);
         });
      }
      
      override public function getLeaderboardScores(param1:Function) : void
      {
         aCallback = param1;
         super.getLeaderboardScores(aCallback);
         process(aCallback,function():void
         {
            var _loc3_:* = 0;
            var _loc1_:Response = new Response(":)");
            var _loc2_:Array = [];
            _loc3_ = 0;
            while(_loc3_ < TEST_FRIEND_PROFILES.length)
            {
               _loc2_.push({
                  "user":{
                     "name":TEST_FRIEND_PROFILES[_loc3_].fullName,
                     "id":TEST_FRIEND_PROFILES[_loc3_].id
                  },
                  "score":Random.nextIntRange(5,5000),
                  "application":{
                     "name":"TestApp",
                     "application":theNetworkAppID
                  },
                  "type":"score"
               });
               _loc3_++;
            }
            _loc2_.push({
               "user":{
                  "name":TEST_PROFILE.fullName,
                  "id":TEST_PROFILE.id
               },
               "score":Random.nextIntRange(5,5000),
               "application":{
                  "name":"TestApp",
                  "application":theNetworkAppID
               },
               "type":"score"
            });
            _loc1_.data = {"data":_loc2_};
            finalizeProcess(_loc1_);
         });
      }
      
      override public function setHighscore(param1:int, param2:Function) : void
      {
         aScore = param1;
         aCallback = param2;
         super.setHighscore(aScore,aCallback);
         process(aCallback,function():void
         {
            finalizeProcess(new Response(":)"));
         });
      }
      
      override public function showShareDialog(param1:Function, param2:String, param3:String, param4:String, param5:String = null, param6:String = null) : void
      {
         super.showShareDialog(param1,param2,param3,param4,param5,param6);
      }
      
      override public function showRequestDialog(param1:Function, param2:String, param3:String, param4:String = null, param5:String = null, param6:String = null) : void
      {
         super.showRequestDialog(param1,param2,param3,param4,param5,param6);
      }
      
      override public function logout(param1:Function) : void
      {
         aCallback = param1;
         super.logout(aCallback);
         process(aCallback,function():void
         {
            theIsConnectedFlag = false;
            finalizeProcess(new Response(":)"));
         });
      }
      
      private function simulateDelay(param1:Response) : Boolean
      {
         var _loc2_:* = 0;
         if(theTimer == null)
         {
            theFinalizeResponse = param1;
            _loc2_ = Random.nextIntRange(200,1500);
            theTimer = new Timer(_loc2_,1);
            theTimer.addEventListener("timerComplete",onSimulatedDelayComplete);
            theTimer.start();
            return true;
         }
         theTimer.stop();
         theTimer.removeEventListener("timerComplete",onSimulatedDelayComplete);
         theTimer = null;
         return false;
      }
      
      private function onSimulatedDelayComplete(param1:TimerEvent) : void
      {
         finalizeProcess(theFinalizeResponse);
      }
      
      override protected function finalizeProcess(param1:Response) : void
      {
         if(simulateDelay(param1))
         {
            return;
         }
         super.finalizeProcess(getFinalResponse(param1));
      }
      
      private function getFinalResponse(param1:Response) : Response
      {
         if(Random.nextFloatRange(0,1) > 0.05)
         {
            return param1;
         }
         Debugger.Instance.Write("[TestSocialHandler::getFinalResponse] NOTE: Simulating failed response!",true);
         var _loc2_:Response = new Response(":(",101);
         return _loc2_;
      }
      
      override public function dispose() : void
      {
         if(theTimer != null)
         {
            theTimer.stop();
            theTimer.removeEventListener("timerComplete",onSimulatedDelayComplete);
            theTimer = null;
         }
         theFinalizeResponse = null;
         super.dispose();
      }
   }
}
