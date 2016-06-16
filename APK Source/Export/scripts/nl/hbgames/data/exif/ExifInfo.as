package nl.hbgames.data.exif
{
   import flash.utils.ByteArray;
   
   public class ExifInfo extends Object
   {
       
      private const SOI_MAKER:Array = [255,216];
      
      private const APP1_MAKER:Array = [255,225];
      
      private const JFIF_MAKER:Array = [255,224];
      
      private const EXIF_HEADER:Array = [69,120,105,102,0,0];
      
      private var _isValid:Boolean = false;
      
      private var _tiffHeader:TIFFHeader;
      
      private var _ifds:IFDSet;
      
      private var _thumbnailData:ByteArray;
      
      public function ExifInfo(param1:ByteArray)
      {
         super();
         _isValid = validate(param1);
         if(_isValid)
         {
            _tiffHeader = new TIFFHeader(param1);
            readIFDs(param1);
            readThumbnail(param1);
         }
      }
      
      public function get tiffHeader() : TIFFHeader
      {
         return _tiffHeader;
      }
      
      public function get ifds() : IFDSet
      {
         return _ifds;
      }
      
      public function get thumbnailData() : ByteArray
      {
         return _thumbnailData;
      }
      
      public function get isValid() : Boolean
      {
         return _isValid;
      }
      
      private function validate(param1:ByteArray) : Boolean
      {
         var _loc2_:* = 0;
         if(!hasSoiMaker(param1))
         {
            return false;
         }
         if(hasJFIFMaker(param1))
         {
            param1.position = param1.position + 16;
         }
         else
         {
            param1.position = param1.position - 2;
         }
         if(!hasAPP1Maker(param1))
         {
            return false;
         }
         _loc2_ = param1.readUnsignedShort();
         if(!hasExifHeader(param1))
         {
            return false;
         }
         return true;
      }
      
      private function readIFDs(param1:ByteArray) : void
      {
         _ifds = new IFDSet();
         ifds._primary = new IFD(param1,Tags.getSet("primary"),tiffHeader.position);
         var _loc2_:uint = param1.readUnsignedInt();
         if(_loc2_ != 0)
         {
            param1.position = _loc2_ + tiffHeader.position;
            ifds._thumbnail = new IFD(param1,Tags.getSet("thumbnail"),tiffHeader.position);
         }
         if(ifds.primary.ExifIFDPointer)
         {
            param1.position = ifds.primary.ExifIFDPointer + tiffHeader.position;
            ifds._exif = new IFD(param1,Tags.getSet("exif"),tiffHeader.position);
            delete ifds._primary.ExifIFDPointer;
         }
         if(ifds.primary.GPSInfoIFDPointer)
         {
            param1.position = ifds.primary.GPSInfoIFDPointer + tiffHeader.position;
            ifds._gps = new IFD(param1,Tags.getSet("gps"),tiffHeader.position);
            delete ifds._primary.GPSInfoIFDPointer;
         }
         if(ifds.exif && ifds.exif.InteroperabilityIFDPointer)
         {
            param1.position = ifds.exif.InteroperabilityIFDPointer + tiffHeader.position;
            ifds._interoperability = new IFD(param1,Tags.getSet("interoperability"),tiffHeader.position);
            delete ifds._exif.InteroperabilityIFDPointer;
         }
      }
      
      private function readThumbnail(param1:ByteArray) : void
      {
         if(ifds.thumbnail && ifds.thumbnail.JPEGInterchangeFormat && ifds.thumbnail.JPEGInterchangeFormatLength)
         {
            _thumbnailData = new ByteArray();
            param1.position = ifds.thumbnail.JPEGInterchangeFormat + tiffHeader.position;
            param1.readBytes(_thumbnailData,0,ifds.thumbnail.JPEGInterchangeFormatLength);
            delete ifds._thumbnail.JPEGInterchangeFormat;
            delete ifds._thumbnail.JPEGInterchangeFormatLength;
         }
      }
      
      private function hasSoiMaker(param1:ByteArray) : Boolean
      {
         return compareStreamBytes(param1,SOI_MAKER);
      }
      
      private function hasAPP1Maker(param1:ByteArray) : Boolean
      {
         return compareStreamBytes(param1,APP1_MAKER);
      }
      
      private function hasJFIFMaker(param1:ByteArray) : Boolean
      {
         return compareStreamBytes(param1,JFIF_MAKER);
      }
      
      private function hasExifHeader(param1:ByteArray) : Boolean
      {
         return compareStreamBytes(param1,EXIF_HEADER);
      }
      
      private function compareStreamBytes(param1:ByteArray, param2:Array, param3:uint = 0) : Boolean
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(param3 > 0)
         {
            param1.position = param3;
         }
         _loc5_ = 0;
         while(_loc5_ < param2.length)
         {
            _loc4_ = param1.readUnsignedByte();
            if(_loc4_ != param2[_loc5_])
            {
               return false;
            }
            _loc5_++;
         }
         return true;
      }
   }
}
