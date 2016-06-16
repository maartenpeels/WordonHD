package nl.hbgames.managers.ads
{
   public class AdProvider extends Object implements IAdNetwork
   {
       
      protected var theEnabledFlag:Boolean = true;
      
      protected var theInitializedFlag:Boolean = false;
      
      protected var theInterstitialCallback:Function;
      
      public function AdProvider()
      {
         super();
         theEnabledFlag = true;
         theInitializedFlag = false;
      }
      
      public function get isInitialized() : Boolean
      {
         return theInitializedFlag;
      }
      
      public function get isEnabled() : Boolean
      {
         return theEnabledFlag;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         theEnabledFlag = param1;
      }
      
      public function initialize() : void
      {
      }
      
      public function cacheInterstitial(param1:String = null) : void
      {
      }
      
      public function showInterstitial(param1:String = null, param2:Function = null) : void
      {
         theInterstitialCallback = param2;
      }
      
      protected function sendInterstitialFeedback(param1:int) : void
      {
         if(theInterstitialCallback != null)
         {
            theInterstitialCallback(param1);
         }
      }
      
      public function dispose() : void
      {
         theInitializedFlag = false;
      }
   }
}
