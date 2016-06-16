package nl.hbgames.data.exif
{
   import flash.utils.ByteArray;
   
   public class TIFFHeader extends Object
   {
       
      private const INTEL_ENDIAN:uint = 18761;
      
      private const MARK:uint = 42;
      
      private const OFFSET:uint = 8;
      
      private var _endian:String;
      
      private var _position:uint;
      
      public function TIFFHeader(param1:ByteArray)
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc2_:* = 0;
         super();
         _position = param1.position;
         _loc2_ = param1.readUnsignedShort();
         if(_loc2_ == 18761)
         {
            _endian = "littleEndian";
         }
         else
         {
            _endian = "bigEndian";
         }
         param1.endian = _endian;
         _loc3_ = param1.readUnsignedShort();
         _loc4_ = param1.readUnsignedInt();
         if(_loc3_ != 42 || _loc4_ != 8)
         {
            trace("error");
         }
      }
      
      public function get endian() : String
      {
         return _endian;
      }
      
      public function get position() : uint
      {
         return _position;
      }
   }
}
