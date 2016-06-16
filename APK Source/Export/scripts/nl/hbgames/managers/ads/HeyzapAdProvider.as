package nl.hbgames.managers.ads
{
   import nl.hbgames.config.Settings;
   import flash.system.Capabilities;
   import com.heyzap.sdk.ads.InterstitialAd;
   import com.heyzap.sdk.ads.HeyzapAds;
   
   public class HeyzapAdProvider extends AdProvider implements IAdNetwork
   {
       
      private const FETCH_ADS_AUTOMATICALLY:Boolean = true;
      
      private var thePublisherID:String;
      
      public function HeyzapAdProvider(param1:String)
      {
         super();
         thePublisherID = param1;
      }
      
      override public function initialize() : void
      {
         if(Settings.IS_DESKTOP || Settings.IS_IOS && Capabilities.os.indexOf("OS 4") != -1)
         {
            return;
         }
         super.initialize();
         if(!theInitializedFlag)
         {
            InterstitialAd.getInstance().addEventListener("available",onStatus);
            InterstitialAd.getInstance().addEventListener("show",onStatus);
            InterstitialAd.getInstance().addEventListener("click",onStatus);
            InterstitialAd.getInstance().addEventListener("failed",onStatus);
            InterstitialAd.getInstance().addEventListener("hide",onStatus);
            InterstitialAd.getInstance().addEventListener("fetch_failed",onStatus);
            HeyzapAds.getInstance().start(thePublisherID,0);
            theInitializedFlag = true;
         }
      }
      
      override public function cacheInterstitial(param1:String = null) : void
      {
         super.cacheInterstitial(param1);
         if(false)
         {
            if(theInitializedFlag)
            {
               InterstitialAd.getInstance().fetch(param1);
            }
         }
      }
      
      override public function showInterstitial(param1:String = null, param2:Function = null) : void
      {
         super.showInterstitial(param1,param2);
         if(theInitializedFlag)
         {
            InterstitialAd.getInstance().show(param1);
         }
         else
         {
            sendInterstitialFeedback(1);
         }
      }
      
      private function onStatus(param1:*) : void
      {
         var _loc2_:* = param1.type;
         if("available" !== _loc2_)
         {
            if("show" !== _loc2_)
            {
               if("click" !== _loc2_)
               {
                  if("hide" !== _loc2_)
                  {
                     if("failed" !== _loc2_)
                     {
                        if("fetch_failed" === _loc2_)
                        {
                           sendInterstitialFeedback(1);
                        }
                     }
                     else
                     {
                        sendInterstitialFeedback(1);
                     }
                  }
                  else
                  {
                     sendInterstitialFeedback(3);
                  }
               }
            }
            else
            {
               sendInterstitialFeedback(2);
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         HeyzapAds.getInstance().removeEventListener("available",onStatus);
         HeyzapAds.getInstance().removeEventListener("show",onStatus);
         HeyzapAds.getInstance().removeEventListener("click",onStatus);
         HeyzapAds.getInstance().removeEventListener("failed",onStatus);
         HeyzapAds.getInstance().removeEventListener("fetch_failed",onStatus);
      }
   }
}
