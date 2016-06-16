package nl.hbgames.net
{
   import nl.hbgames.config.Settings;
   import eu.alebianco.air.extensions.analytics.Analytics;
   import flash.desktop.NativeApplication;
   import nl.hbgames.utils.Debugger;
   
   public class GATracker extends Object
   {
      
      private static var theAnalytics;
      
      private static var theTracker;
       
      public function GATracker()
      {
         super();
      }
      
      public static function get isInitialized() : Boolean
      {
         return theTracker != null;
      }
      
      public static function initialize(param1:String, param2:String, param3:String, param4:uint = 60) : void
      {
         if(!Settings.IS_DESKTOP)
         {
            if(theAnalytics == null)
            {
               if(Analytics.isSupported())
               {
                  theAnalytics = Analytics.getInstance();
                  theTracker = theAnalytics.getTracker(param1);
                  theTracker.appID = NativeApplication.nativeApplication.applicationID;
                  theTracker.appName = param2;
                  theTracker.appVersion = param3;
                  theTracker.sessionTimeout = param4;
                  Debugger.Instance.Write("[GATracker::initialize] Sending data to " + param1);
               }
            }
         }
      }
      
      public static function trackScreen(param1:String) : void
      {
         if(theTracker != null && param1 != null)
         {
            theTracker.buildView(param1).track();
         }
      }
      
      public static function trackEvent(param1:String, param2:String, param3:Object = null) : void
      {
         if(theTracker != null)
         {
            if(param3 == null)
            {
               theTracker.buildEvent(param1,param2).track();
            }
            else
            {
               theTracker.buildEvent(param1,param2).withLabel(param3.label == null?"":param3.label).withValue(param3.value == null?0:param3.value).track();
            }
         }
      }
      
      public static function trackSingleTransaction(param1:String, param2:String, param3:String, param4:Number, param5:String) : void
      {
         if(theTracker != null)
         {
            theTracker.buildTransaction(param1,param4).withAffiliation(param5).createProduct(param2,param3,param4,1).add().track();
         }
      }
   }
}
