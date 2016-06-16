package nl.hbgames.managers.offerwalls
{
   import flash.events.EventDispatcher;
   
   public class OfferProvider extends EventDispatcher implements IOfferWallNetwork
   {
       
      protected var theInitializedFlag:Boolean = false;
      
      protected var theInventoryUpdateCallback:Function;
      
      public function OfferProvider()
      {
         super();
         theInitializedFlag = false;
         theInventoryUpdateCallback = null;
      }
      
      public function get isInitialized() : Boolean
      {
         return theInitializedFlag;
      }
      
      public function initialize(param1:Function) : void
      {
         theInitializedFlag = true;
         theInventoryUpdateCallback = param1;
      }
      
      public function showOffers() : void
      {
      }
      
      public function getInventory() : void
      {
      }
      
      public function removePointsFromInventory(param1:int) : void
      {
      }
      
      public function updateInventory() : void
      {
      }
      
      public function dispose() : void
      {
         theInitializedFlag = false;
         theInventoryUpdateCallback = null;
      }
   }
}
