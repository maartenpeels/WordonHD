package nl.hbgames.data.exif
{
   public class Tags extends Object
   {
      
      public static const PRIMARY:Class = §0th_ifd_tiff_xml$3371d9ba0cfe10930751f512130849be-31966842§;
      
      public static const EXIF:Class = §0th_ifd_exif_xml$82bd529b4822de39f7571d6fbd871e55-2039309445§;
      
      public static const GPS:Class = §0th_ifd_gps_xml$f488ed810f5974cd89ecd668f01ceea3-797876949§;
      
      public static const INTEROPERABILITY:Class = §0th_ifd_int_xml$739ead7b41e9d8c606602de5c9cfdf1c-1094700586§;
      
      public static const THUMBNAIL:Class = §1st_ifd_tiff_xml$5b8f17ac19a305f023cd0c240ee67c8c-1673789200§;
      
      private static const levels:Object = {
         "primary":PRIMARY,
         "exif":EXIF,
         "gps":GPS,
         "interoperability":INTEROPERABILITY,
         "thumbnail":THUMBNAIL
      };
       
      public function Tags()
      {
         super();
      }
      
      public static function getSet(param1:String) : *
      {
         if(!levels[param1])
         {
            return null;
         }
         return XML(levels[param1].data);
      }
   }
}
