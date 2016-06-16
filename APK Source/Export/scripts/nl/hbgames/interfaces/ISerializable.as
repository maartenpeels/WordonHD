package nl.hbgames.interfaces
{
   import flash.utils.ByteArray;
   
   public interface ISerializable
   {
       
      function Serialize(param1:ByteArray) : void;
      
      function Unserialize(param1:XML) : void;
   }
}
