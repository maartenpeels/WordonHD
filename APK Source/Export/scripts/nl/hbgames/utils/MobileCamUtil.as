package nl.hbgames.utils
{
   import flash.events.EventDispatcher;
   import flash.media.CameraRoll;
   import flash.media.CameraUI;
   import nl.hbgames.data.exif.ExifLoader;
   import flash.utils.ByteArray;
   import flash.media.MediaPromise;
   import flash.utils.IDataInput;
   import flash.events.IEventDispatcher;
   import flash.display.BitmapData;
   import flash.events.MediaEvent;
   import flash.events.Event;
   import flash.events.ErrorEvent;
   import nl.hbgames.data.exif.ExifInfo;
   import flash.display.Bitmap;
   
   public class MobileCamUtil extends EventDispatcher
   {
       
      private var _CameraRoll:CameraRoll;
      
      private var _CameraUI:CameraUI;
      
      private var _EXIFLoader:ExifLoader;
      
      private var _Callback:Function;
      
      private var _IsLoading:Boolean;
      
      private var _RawImageData:ByteArray;
      
      private var _MediaPromise:MediaPromise;
      
      private var _DataSource:IDataInput;
      
      private var _EventSource:IEventDispatcher;
      
      private var _LoadedImage:BitmapData;
      
      private var _Orientation:uint = 0;
      
      public function MobileCamUtil()
      {
         super();
         _CameraRoll = new CameraRoll();
         _CameraUI = new CameraUI();
         _IsLoading = false;
      }
      
      public function get LoadedImage() : BitmapData
      {
         return _LoadedImage;
      }
      
      public function get Orientation() : uint
      {
         return _Orientation;
      }
      
      public function get IsLoading() : Boolean
      {
         return _IsLoading;
      }
      
      public function ShowGallery() : Boolean
      {
         if(CameraRoll.supportsBrowseForImage)
         {
            AddGalleryListeners();
            _CameraRoll.browseForImage();
            return true;
         }
         return false;
      }
      
      public function ShowCamera() : Boolean
      {
         if(CameraUI.isSupported)
         {
            AddCameraListeners();
            _CameraUI.launch("image");
            return true;
         }
         return false;
      }
      
      private function OnSelected(param1:MediaEvent) : void
      {
         RemoveAllListeners();
         this.dispatchEvent(new Event("select"));
         _MediaPromise = param1.data as MediaPromise;
         _DataSource = _MediaPromise.open();
         _IsLoading = true;
         if(_MediaPromise.isAsync)
         {
            _EventSource = _DataSource as IEventDispatcher;
            _EventSource.addEventListener("complete",OnMediaLoaded);
         }
         else
         {
            ReadMediaData();
         }
      }
      
      private function OnMediaLoaded(param1:Event) : void
      {
         _EventSource.removeEventListener("complete",OnMediaLoaded);
         ReadMediaData();
      }
      
      private function ReadMediaData() : void
      {
         _RawImageData = new ByteArray();
         _DataSource.readBytes(_RawImageData);
         if(_EXIFLoader != null)
         {
            _EXIFLoader.unloadAndStop();
            _EXIFLoader = null;
         }
         try
         {
            _EXIFLoader = new ExifLoader();
            _EXIFLoader.contentLoaderInfo.addEventListener("complete",OnImageLoadComplete);
            _EXIFLoader.contentLoaderInfo.addEventListener("error",OnError);
            _RawImageData.position = 0;
            _EXIFLoader.loadBytes(_RawImageData);
            return;
         }
         catch(e:Error)
         {
            _IsLoading = false;
            this.dispatchEvent(new ErrorEvent("error"));
            return;
         }
      }
      
      private function OnImageLoadComplete(param1:Event) : void
      {
         RemoveAllListeners();
         _IsLoading = false;
         _MediaPromise.close();
         var _loc2_:ExifInfo = _EXIFLoader.exif;
         _LoadedImage = (_EXIFLoader.contentLoaderInfo.content as Bitmap).bitmapData;
         _Orientation = _loc2_.isValid && _loc2_.ifds.primary?_loc2_.ifds.primary.getEntryByTagName("Orientation").data:0;
         this.dispatchEvent(new Event("complete"));
      }
      
      private function OnCancelled(param1:Event) : void
      {
         RemoveAllListeners();
      }
      
      private function OnError(param1:ErrorEvent) : void
      {
         RemoveAllListeners();
         _IsLoading = false;
         this.dispatchEvent(param1);
      }
      
      private function AddGalleryListeners() : void
      {
         _CameraRoll.addEventListener("select",OnSelected);
         _CameraRoll.addEventListener("cancel",OnCancelled);
         _CameraRoll.addEventListener("error",OnError);
      }
      
      private function AddCameraListeners() : void
      {
         _CameraUI.addEventListener("complete",OnSelected);
         _CameraUI.addEventListener("cancel",OnCancelled);
         _CameraUI.addEventListener("error",OnError);
      }
      
      private function RemoveAllListeners() : void
      {
         if(_EXIFLoader != null)
         {
            _EXIFLoader.contentLoaderInfo.removeEventListener("complete",OnImageLoadComplete);
            _EXIFLoader.contentLoaderInfo.removeEventListener("error",OnError);
         }
         _CameraRoll.removeEventListener("select",OnSelected);
         _CameraRoll.removeEventListener("cancel",OnCancelled);
         _CameraRoll.removeEventListener("error",OnError);
         _CameraUI.removeEventListener("complete",OnSelected);
         _CameraUI.removeEventListener("cancel",OnCancelled);
         _CameraUI.removeEventListener("error",OnError);
      }
      
      public function Dispose() : void
      {
         RemoveAllListeners();
         if(_EXIFLoader != null)
         {
            _EXIFLoader.unloadAndStop();
            _EXIFLoader = null;
         }
         _CameraRoll = null;
         _CameraUI = null;
         _RawImageData = null;
         _DataSource = null;
         _EventSource = null;
         _MediaPromise = null;
         _IsLoading = false;
         if(_LoadedImage)
         {
            _LoadedImage.dispose();
            _LoadedImage = null;
         }
      }
   }
}
