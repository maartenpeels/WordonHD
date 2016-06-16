package nl.hbgames.managers.ads
{
   public interface IAdNetwork
   {
       
      function initialize() : void;
      
      function cacheInterstitial(param1:String = null) : void;
      
      function showInterstitial(param1:String = null, param2:Function = null) : void;
      
      function dispose() : void;
   }
}
