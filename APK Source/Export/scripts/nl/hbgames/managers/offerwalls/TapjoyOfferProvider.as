package nl.hbgames.managers.offerwalls
{
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.config.Settings;
   import flash.system.Capabilities;
   import com.tapjoy.extensions.TapjoyAIR;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.net.PHPWrapper;
   import flash.events.Event;
   
   public class TapjoyOfferProvider extends OfferProvider implements IOfferWallNetwork
   {
       
      private const SHOW_DEBUG:Boolean = false;
      
      private var theAppID:String;
      
      private var theAppSecret:String;
      
      private var theUserID:String;
      
      private var theExtension;
      
      public function TapjoyOfferProvider(param1:String, param2:String, param3:String = null)
      {
         theAppID = param1;
         theAppSecret = param2;
         theUserID = param3;
         super();
      }
      
      private static function onPlayerInventoryReceived(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Inventory.Set(param1);
         }
      }
      
      override public function initialize(param1:Function) : void
      {
         if(Settings.IS_DESKTOP || Settings.IS_IOS && Capabilities.os.indexOf("OS 4") != -1)
         {
            return;
         }
         super.initialize(param1);
         TapjoyAIR.requestTapjoyConnect(theAppID,theAppSecret);
         theExtension = TapjoyAIR.getTapjoyConnectInstance();
         theExtension.addEventListener("TJ_SHOW_OFFERWALL_FAILED",onOfferWallFailed);
      }
      
      override public function showOffers() : void
      {
         if(theExtension != null)
         {
            if(theUserID != null)
            {
               theExtension.setUserID(theUserID);
            }
            theExtension.addEventListener("TJ_VIEW_CLOSED",onViewClosed);
            theExtension.showOffers();
         }
      }
      
      private function onViewClosed(param1:*) : void
      {
         Debugger.Instance.Write("[TapjoyOfferProvider::onViewClosed] View closed.",false,false);
         theExtension.addEventListener("TJ_VIEW_CLOSED",onViewClosed);
         WaitBox.Show();
         PHPWrapper.GetInventory(onPlayerInventoryReceived);
      }
      
      private function onOfferWallFailed(param1:*) : void
      {
         Debugger.Instance.Write("[TapjoyOfferProvider::onOfferWallFailed] " + param1,true,false);
         dispatchEvent(new Event("offers_failed"));
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
