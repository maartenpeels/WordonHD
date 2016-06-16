package nl.hbgames.managers.ads
{
   import com.jirbo.airadc.AirAdColony;
   import flash.events.StatusEvent;
   
   public class AdColonyReward extends Object
   {
       
      private var theProvider:AirAdColony;
      
      private var theIsSupported:Boolean = false;
      
      private var theHasInventory:Boolean = false;
      
      private var theReceivedReward:Boolean = false;
      
      private var theCompleteCallback:Function;
      
      private const AD_COLONY_APP_ID:String = "app045584618bdd40ad93";
      
      private const AD_ZONE_ID:String = "vz638dfc52f5ce40b4b5";
      
      public function AdColonyReward()
      {
         super();
         theProvider = new AirAdColony();
         if(theProvider.isSupported())
         {
            theIsSupported = true;
            theProvider.adcContext.addEventListener("status",onAdColonyStatusEvent);
            theProvider.configure("1.88","app045584618bdd40ad93","vz638dfc52f5ce40b4b5");
         }
      }
      
      public function get isSupported() : Boolean
      {
         return theIsSupported;
      }
      
      public function get hasInventory() : Boolean
      {
         return theHasInventory;
      }
      
      public function show(param1:Function = null) : Boolean
      {
         if(this.hasInventory)
         {
            theReceivedReward = false;
            theHasInventory = false;
            theCompleteCallback = param1;
            return theProvider.showV4VC(false,"vz638dfc52f5ce40b4b5");
         }
         return false;
      }
      
      private function onAdColonyStatusEvent(param1:StatusEvent) : void
      {
         var _loc3_:String = param1.code;
         var _loc2_:Array = _loc3_.split("|");
         if(_loc3_.indexOf("AdAvailability") >= 0)
         {
            theHasInventory = _loc2_[1] == "true";
         }
         else if(_loc3_.indexOf("V4VCReward") >= 0)
         {
            theReceivedReward = _loc2_[1] == "true";
         }
         else if(_loc3_.indexOf("AdFinished") >= 0)
         {
            if(theCompleteCallback != null)
            {
               theCompleteCallback(theReceivedReward);
               theCompleteCallback = null;
            }
         }
      }
   }
}
