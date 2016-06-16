package nl.hbgames.data.exif
{
   public class IFDSet extends Object
   {
       
      var _primary:IFD;
      
      var _exif:IFD;
      
      var _gps:IFD;
      
      var _thumbnail:IFD;
      
      var _interoperability:IFD;
      
      public function IFDSet()
      {
         super();
      }
      
      public function get primary() : IFD
      {
         return _primary;
      }
      
      public function get exif() : IFD
      {
         return _exif;
      }
      
      public function get gps() : IFD
      {
         return _gps;
      }
      
      public function get thumbnail() : IFD
      {
         return _thumbnail;
      }
      
      public function get interoperability() : IFD
      {
         return _interoperability;
      }
   }
}
