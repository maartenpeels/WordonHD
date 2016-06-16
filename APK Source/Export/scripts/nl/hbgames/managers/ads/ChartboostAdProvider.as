package nl.hbgames.managers.ads
{
   import nl.hbgames.config.Settings;
   import so.cuo.platform.chartboost.Chartboost;
   
   public class ChartboostAdProvider extends AdProvider implements IAdNetwork
   {
       
      private var theAppID:String;
      
      private var theAppSignature:String;
      
      public function ChartboostAdProvider(param1:String, param2:String)
      {
         super();
         theAppID = param1;
         theAppSignature = param2;
      }
      
      override public function initialize() : void
      {
         if(Settings.IS_DESKTOP)
         {
            return;
         }
         super.initialize();
         if(!theInitializedFlag && Chartboost.getInstance().supportDevice)
         {
            Chartboost.getInstance().setInterstitialKeys(theAppID,theAppSignature);
            Chartboost.getInstance().addEventListener("onInterstitialDismiss",onStatus);
            Chartboost.getInstance().addEventListener("onInterstitialFailedReceive",onStatus);
            Chartboost.getInstance().addEventListener("onInterstitialLeaveApplication",onStatus);
            Chartboost.getInstance().addEventListener("onInterstitialPresent",onStatus);
            Chartboost.getInstance().addEventListener("onInterstitialReceive",onStatus);
            theInitializedFlag = true;
         }
      }
      
      override public function cacheInterstitial(param1:String = null) : void
      {
         super.cacheInterstitial(param1);
         if(theInitializedFlag)
         {
            Chartboost.getInstance().cacheInterstitial();
         }
      }
      
      override public function showInterstitial(param1:String = null, param2:Function = null) : void
      {
         super.showInterstitial(param1,param2);
         if(theInitializedFlag && Chartboost.getInstance().isInterstitialReady())
         {
            Chartboost.getInstance().showInterstitial();
            sendInterstitialFeedback(2);
         }
         else
         {
            sendInterstitialFeedback(1);
         }
      }
      
      private function onStatus(param1:*) : void
      {
         var _loc2_:* = param1.type;
         if("onInterstitialDismiss" !== _loc2_)
         {
            if("onInterstitialFailedReceive" !== _loc2_)
            {
            }
         }
         else
         {
            sendInterstitialFeedback(3);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         Chartboost.getInstance().removeEventListener("onInterstitialDismiss",onStatus);
         Chartboost.getInstance().removeEventListener("onInterstitialFailedReceive",onStatus);
         Chartboost.getInstance().removeEventListener("onInterstitialLeaveApplication",onStatus);
         Chartboost.getInstance().removeEventListener("onInterstitialPresent",onStatus);
         Chartboost.getInstance().removeEventListener("onInterstitialReceive",onStatus);
      }
   }
}
