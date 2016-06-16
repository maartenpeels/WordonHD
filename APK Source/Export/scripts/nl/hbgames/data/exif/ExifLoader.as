package nl.hbgames.data.exif
{
   import flash.display.Loader;
   import flash.net.URLLoader;
   import flash.system.LoaderContext;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.events.Event;
   
   public class ExifLoader extends Loader
   {
       
      private var _exif:ExifInfo;
      
      private var _urlLoader:URLLoader;
      
      private var _context:LoaderContext;
      
      public function ExifLoader()
      {
         super();
      }
      
      public function get exif() : ExifInfo
      {
         return _exif;
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null) : void
      {
         _context = param2;
         _urlLoader = new URLLoader();
         _urlLoader.dataFormat = "binary";
         _urlLoader.addEventListener("complete",onComplete,false,0,true);
         _urlLoader.addEventListener("ioError",forwardEvent,false,0,true);
         _urlLoader.addEventListener("progress",forwardEvent,false,0,true);
         _urlLoader.addEventListener("open",forwardEvent,false,0,true);
         _urlLoader.addEventListener("httpStatus",forwardEvent,false,0,true);
         _urlLoader.addEventListener("securityError",forwardEvent,false,0,true);
         _urlLoader.load(param1);
      }
      
      override public function loadBytes(param1:ByteArray, param2:LoaderContext = null) : void
      {
         _exif = new ExifInfo(param1);
         super.loadBytes(param1,param2);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:ByteArray = _urlLoader.data as ByteArray;
         _exif = new ExifInfo(_loc2_);
         super.loadBytes(_loc2_,_context);
         _urlLoader = null;
         dispatchEvent(param1);
      }
      
      private function forwardEvent(param1:Event) : void
      {
         dispatchEvent(param1);
      }
   }
}
