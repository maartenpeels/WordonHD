package nl.hbgames.managers.offerwalls
{
   public interface IOfferWallNetwork
   {
       
      function initialize(param1:Function) : void;
      
      function showOffers() : void;
      
      function getInventory() : void;
      
      function removePointsFromInventory(param1:int) : void;
      
      function dispose() : void;
   }
}
