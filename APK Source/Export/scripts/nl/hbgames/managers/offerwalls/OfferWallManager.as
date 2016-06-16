package nl.hbgames.managers.offerwalls
{
   import nl.hbgames.data.AppData;
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.TrackingData;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import flash.events.Event;
   
   public class OfferWallManager extends Object
   {
      
      private static var theInstance:OfferWallManager = new OfferWallManager();
      
      public static const EVENT_OFFERS_FAILED:String = "offers_failed";
      
      private static var theActiveProvider:OfferProvider;
       
      public function OfferWallManager()
      {
         super();
         if(theInstance == null)
         {
            theInstance = this;
            return;
         }
         throw new Error("[OfferWallManager] Class is a singleton. Use OfferWallManager.instance to access!");
      }
      
      public static function get instance() : OfferWallManager
      {
         return theInstance;
      }
      
      public static function get isEnabled() : Boolean
      {
         return theActiveProvider != null;
      }
      
      public function initialize() : void
      {
         if(theActiveProvider == null)
         {
            if(AppData.Instance.ActiveOfferWallProvider - 2)
            {
            }
            setProvider(new TapjoyOfferProvider(Settings.IS_IOS?"cc7d9857-56af-41a7-8aaa-388e1b57e13b":"a67d0f68-7df3-43f4-9f06-b9ad3d387c67",Settings.IS_IOS?"oq1eb1bOsw6wS0PyEtRQ":"gi3REjU4qKi8BJrcMbqQ",ClientData.Instance.Player.ID));
         }
      }
      
      public function setProvider(param1:OfferProvider, param2:Function = null) : void
      {
         if(theActiveProvider != null)
         {
            theActiveProvider.removeEventListener("offers_failed",onOffersFailed);
            theActiveProvider = null;
         }
         theActiveProvider = param1;
         theActiveProvider.initialize(param2);
         if(!theActiveProvider.isInitialized)
         {
            theActiveProvider = null;
         }
         else
         {
            theActiveProvider.addEventListener("offers_failed",onOffersFailed);
         }
      }
      
      public function showOffers() : void
      {
         if(theActiveProvider != null)
         {
            if(TrackingData.Instance.HasViewedOfferExplanation)
            {
               SWRVETracker.Instance.TrackCustomEvent("offerwall.tapjoy.clicked");
               theActiveProvider.showOffers();
            }
            else
            {
               new MessageBox(Localization.Get("offerwall_info_title"),Localization.Get("offerwall_info_description"),false,true,showOffers);
               TrackingData.Instance.SetViewedOfferExplanation();
            }
         }
         else
         {
            onOffersFailed(null);
         }
      }
      
      public function getInventory() : void
      {
         if(theActiveProvider != null)
         {
            theActiveProvider.getInventory();
         }
      }
      
      public function removePointsFromInventory(param1:int) : void
      {
         if(theActiveProvider != null)
         {
            theActiveProvider.removePointsFromInventory(param1);
         }
      }
      
      private function onOffersFailed(param1:Event) : void
      {
         new MessageBox(Localization.Get("sorry"),Localization.Get("offerwall_unavailable"),true);
         SWRVETracker.Instance.TrackCustomEvent("offerwall.tapjoy.failed");
      }
   }
}
