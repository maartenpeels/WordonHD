package nl.hbgames.ui.buttons
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Loader;
   import flash.utils.Timer;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.config.Settings;
   import nl.hbgames.enums.AvatarSize;
   import flash.geom.Rectangle;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.utils.Debugger;
   import flash.system.LoaderContext;
   import flash.net.URLRequest;
   import nl.hbgames.utils.ImageUtil;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.list.ScrollingList;
   import nl.hbgames.ui.panels.ProfilePanel;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.events.SocialEvent;
   
   public class AvatarButton extends Sprite
   {
      
      private static var _WaitQueue:Array = [];
      
      private static var _ProcessQueue:Array = [];
      
      private static const MAX_SIMULTANEOUS_LOADS:int = 1;
      
      private static const LOAD_INTERVAL_IN_SECS:Number = 0.3;
       
      private var _Image:Bitmap;
      
      private var _SourceImage:BitmapData;
      
      private var _BorderID:int;
      
      private var _Border:MovieClip;
      
      private var _Loader:Loader;
      
      private var _IsBusy:Boolean = false;
      
      private var _ListenersAdded:Boolean = false;
      
      private var _UserID:String;
      
      private var _CacheID:String;
      
      private var _AutoResize:Boolean;
      
      private var _KeepSourceImage:Boolean;
      
      private var _ResizeWidth:int;
      
      private var _ResizeHeight:int;
      
      private var _DimensionsSet:Boolean = false;
      
      private var _RequestedSize:String;
      
      private var _IsFacebook:Boolean = false;
      
      private var _IsPlayer:Boolean = false;
      
      private var _LoaderAni:MovieClip;
      
      private var _LoadTimer:Timer;
      
      private var _UseScaleFactor:Boolean;
      
      public function AvatarButton(param1:Boolean, param2:String, param3:Boolean, param4:int = 0, param5:String = "small", param6:Boolean = false)
      {
         super();
         _UserID = param2;
         _BorderID = param4;
         _UseScaleFactor = param6;
         _IsPlayer = false;
         _IsFacebook = false;
         if(param2 != null && param3)
         {
            LoadByUserID(_UserID,param4,param5);
         }
         if(param1)
         {
            this.addEventListener("click",OnAvatarClick);
         }
      }
      
      public function get IsBusy() : Boolean
      {
         return _IsBusy;
      }
      
      public function get SourceImage() : BitmapData
      {
         return _SourceImage;
      }
      
      public function LoadByUserID(param1:String = null, param2:int = 0, param3:String = "small", param4:int = -1, param5:int = -1) : void
      {
         var _loc6_:* = null;
         if(_IsBusy)
         {
            return;
         }
         if(param1 == null)
         {
            var param1:String = _UserID;
         }
         if(!_RequestedSize)
         {
            _RequestedSize = param3;
         }
         if(_BorderID == 0)
         {
            _BorderID = param2;
         }
         _UserID = param1;
         _IsFacebook = false;
         _IsPlayer = true;
         if(!_ListenersAdded)
         {
            ClientData.Instance.Social.addEventListener("userBlocked",OnBlockChange);
            ClientData.Instance.Social.addEventListener("userUnblocked",OnBlockChange);
            _ListenersAdded = true;
         }
         if(!ClientData.Instance.Social.IsBlocked(_UserID))
         {
            _loc6_ = Settings.IMAGE_BASE_URL + "/" + param1.charAt(0) + "/" + param1.charAt(1) + "/" + param1.charAt(2) + "/" + param1 + "/" + _RequestedSize + ".jpg";
            if(ClientData.Instance.Player.ID == _UserID)
            {
               _loc6_ = _loc6_ + ("?" + ClientData.Instance.AvatarTimestamp);
            }
            Load(LoadByUserID,param1,_loc6_,param4,param5);
         }
         else
         {
            SetDimensions(param4,param5);
            ShowBlocked(true);
         }
      }
      
      private function SetDimensions(param1:int, param2:int, param3:Boolean = false) : void
      {
         if(!_DimensionsSet || param3)
         {
            _AutoResize = param1 != -1 || param2 != -1;
            _ResizeWidth = param1;
            _ResizeHeight = param2;
            _DimensionsSet = true;
         }
      }
      
      public function LoadByFacebookID(param1:String, param2:Boolean = false, param3:int = 0, param4:String = "small", param5:Boolean = false, param6:int = -1, param7:int = -1) : void
      {
         if(_IsBusy)
         {
            return;
         }
         if(_BorderID == 0)
         {
            _BorderID = param3;
         }
         _UserID = param1;
         _KeepSourceImage = param5;
         _RequestedSize = param4;
         _IsFacebook = true;
         if(!_IsPlayer)
         {
            _IsPlayer = param2;
         }
         var _loc8_:Rectangle = AvatarSize.GetRect(param4);
         if(param6 != -1 && param7 != -1)
         {
            _loc8_.width = param6;
            _loc8_.height = param7;
         }
         Load(LoadByFacebookID,param1,"http://graph.facebook.com/" + param1 + "/picture?type=large",_loc8_.width,_loc8_.height,true);
      }
      
      private function Load(param1:Function, param2:String, param3:String, param4:int = -1, param5:int = -1, param6:Boolean = false) : void
      {
         var _loc9_:* = null;
         Clear();
         _CacheID = param2;
         SetDimensions(param4,param5,param6);
         var _loc8_:String = "avatar_" + param2 + "_" + _RequestedSize;
         var _loc7_:BitmapData = AssetManager.ReadFromCache(_loc8_);
         if(_loc7_ != null)
         {
            Debugger.Instance.Write("[AvatarButton::Load] Getting cached image for \'" + param2 + "\'");
            SetImage(_loc7_);
            ContinueLoadProcess(true);
            return;
         }
         if(_ProcessQueue.length < 1)
         {
            Debugger.Instance.Write("[AvatarButton::Load] Start downloading image for \'" + param2 + "\'");
            AddToQueue(_ProcessQueue,_CacheID);
            CreateLoader();
            _loc9_ = new LoaderContext();
            _loc9_.imageDecodingPolicy = "onLoad";
            _Loader.load(new URLRequest(param3),_loc9_);
            ShowLoader();
            _IsBusy = true;
         }
         else
         {
            Debugger.Instance.Write("[AvatarButton::Load] Queueing download for \'" + param2 + "\'");
            AddToQueue(_WaitQueue,_CacheID,param1);
         }
      }
      
      public function SetImage(param1:BitmapData, param2:Boolean = true) : void
      {
         var _loc3_:* = null;
         Clear();
         if(_AutoResize)
         {
            var param1:BitmapData = ImageUtil.CreateThumbnail(param1,_ResizeWidth,_ResizeHeight);
         }
         _Image = new Bitmap(param1);
         _Image.smoothing = true;
         if(param2)
         {
            _loc3_ = "avatar_" + _CacheID + "_" + _RequestedSize;
            AssetManager.Cache(param1,_loc3_);
         }
         if(_UseScaleFactor)
         {
            var _loc4_:* = AssetManager.ContentScaleFactor;
            _Image.scaleY = _loc4_;
            _Image.scaleX = _loc4_;
         }
         ShowBorder();
         this.addChildAt(_Image,0);
      }
      
      private function ShowBorder() : void
      {
         var _loc1_:* = NaN;
         if(_BorderID != 0)
         {
            switch(_BorderID - 998)
            {
               case 0:
                  _Border = new libAvatarFrameDevteam();
                  break;
               case 1:
                  _Border = new libAvatarFrameVerified();
                  break;
            }
            if(_Border != null)
            {
               _loc1_ = _Border.width / AvatarSize.GetRect("small").width;
               _Border.width = _Image.width * _loc1_;
               _Border.height = _Image.height * _loc1_;
               this.addChild(_Border);
            }
         }
      }
      
      public function ClearFromCache(param1:String = null) : void
      {
         if(param1 == null)
         {
            if(_CacheID != null)
            {
               var param1:String = _CacheID;
            }
            else
            {
               return;
            }
         }
         AssetManager.RemoveFromCache("avatar_" + param1 + "_" + "small");
         AssetManager.RemoveFromCache("avatar_" + param1 + "_" + "medium");
         AssetManager.RemoveFromCache("avatar_" + param1 + "_" + "large");
      }
      
      private function OnLoadComplete(param1:Event = null) : void
      {
         _IsBusy = false;
         if(_KeepSourceImage)
         {
            _SourceImage = new BitmapData(_Loader.width,_Loader.height,false,0);
            _SourceImage.draw(_Loader);
         }
         var _loc2_:BitmapData = new BitmapData(_Loader.width,_Loader.height,false,0);
         _loc2_.draw(_Loader);
         SetImage(_loc2_);
         DisposeLoader();
         RemoveLoader();
         ContinueLoadProcess();
      }
      
      private function OnLoadError(param1:*) : void
      {
         Debugger.Instance.Write("[AvatarButton::OnLoadError] Could not load image for \'" + _CacheID + "\'. Assigning a default one.");
         SetImage(AssetManager.ReadFromCache("avatar_default_" + _RequestedSize),true);
         RemoveLoader();
         _IsBusy = false;
         ContinueLoadProcess();
      }
      
      private function ContinueLoadProcess(param1:Boolean = false) : void
      {
         RemoveFromQueue(_ProcessQueue,_CacheID);
         ClearTimer();
         if(_WaitQueue.length > 0)
         {
            if(!param1 && true && true)
            {
               _LoadTimer = new Timer(0.3 * 1000,1);
               _LoadTimer.addEventListener("timerComplete",OnLoadTimerComplete);
               _LoadTimer.start();
            }
            else
            {
               OnLoadTimerComplete(null);
            }
         }
      }
      
      private function OnLoadTimerComplete(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(_WaitQueue.length > 0)
         {
            _loc2_ = _WaitQueue.shift();
            if(_loc2_.callback != null)
            {
               _loc2_.callback(_loc2_.id);
            }
         }
         ClearTimer();
      }
      
      private function OnAvatarClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(!ScrollingList.IsDragging)
         {
            if(_IsPlayer)
            {
               new ProfilePanel(_UserID,_IsFacebook);
            }
            else if(_IsFacebook && !_IsPlayer)
            {
               new MessageBox(Localization.Get("sorry"),Localization.Get("facebook_avatar_no_profile"));
            }
         }
      }
      
      private function Clear() : void
      {
         if(_Image != null)
         {
            if(this.contains(_Image))
            {
               this.removeChild(_Image);
            }
            _Image = null;
         }
         if(_Border != null)
         {
            this.removeChild(_Border);
            _Border = null;
         }
      }
      
      private function CreateLoader() : void
      {
         if(_Loader == null)
         {
            _Loader = new Loader();
            _Loader.contentLoaderInfo.addEventListener("complete",OnLoadComplete);
            _Loader.contentLoaderInfo.addEventListener("error",OnLoadError);
            _Loader.contentLoaderInfo.addEventListener("ioError",OnLoadError);
            _Loader.contentLoaderInfo.addEventListener("unload",OnUnload);
         }
      }
      
      private function DisposeLoader() : void
      {
         if(_Loader != null)
         {
            _Loader.unloadAndStop();
         }
      }
      
      private function OnUnload(param1:Event) : void
      {
         _Loader.contentLoaderInfo.removeEventListener("complete",OnLoadComplete);
         _Loader.contentLoaderInfo.removeEventListener("error",OnLoadError);
         _Loader.contentLoaderInfo.removeEventListener("ioError",OnLoadError);
         _Loader.contentLoaderInfo.removeEventListener("unload",OnUnload);
         _Loader = null;
      }
      
      private function AddToQueue(param1:Array, param2:String, param3:Function = null) : void
      {
         param1.push({
            "callback":param3,
            "id":param2
         });
      }
      
      private function RemoveFromQueue(param1:Array, param2:String) : void
      {
         var _loc3_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            if(param1[_loc3_].id == param2)
            {
               param1.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
      }
      
      public function ClearFromWaitQueue() : void
      {
         RemoveFromQueue(_WaitQueue,_UserID);
      }
      
      public function Show() : void
      {
         this.visible = true;
      }
      
      public function Hide() : void
      {
         this.visible = false;
      }
      
      private function OnBlockChange(param1:SocialEvent) : void
      {
         if(param1.UserID == _UserID)
         {
            var _loc2_:* = param1.type;
            if("userBlocked" !== _loc2_)
            {
               if("userUnblocked" === _loc2_)
               {
                  ShowBlocked(false);
               }
            }
            else
            {
               ShowBlocked(true);
            }
         }
      }
      
      private function ShowBlocked(param1:Boolean) : void
      {
         if(param1)
         {
            SetImage(AssetManager.ReadFromCache("avatar_default_" + _RequestedSize),true);
         }
         else
         {
            ClearFromCache(_UserID);
            LoadByUserID(_UserID,_BorderID,_RequestedSize,_ResizeWidth,_ResizeHeight);
         }
      }
      
      private function ShowLoader() : void
      {
         var _loc1_:* = null;
         if(!_LoaderAni)
         {
            _loc1_ = AvatarSize.GetRect(_RequestedSize);
            _LoaderAni = AssetManager.GetDefinition("libSmallLoader",true,true);
            _LoaderAni.x = _loc1_.width / 2;
            _LoaderAni.y = _loc1_.height / 2;
            this.addChildAt(_LoaderAni,0);
         }
      }
      
      private function RemoveLoader() : void
      {
         if(_LoaderAni)
         {
            this.removeChild(_LoaderAni);
            _LoaderAni = null;
         }
      }
      
      private function ClearTimer() : void
      {
         if(_LoadTimer)
         {
            _LoadTimer.removeEventListener("timerComplete",OnLoadTimerComplete);
            _LoadTimer.stop();
            _LoadTimer = null;
         }
      }
      
      public function Dispose() : void
      {
         this.removeEventListener("click",OnAvatarClick);
         ClientData.Instance.Social.removeEventListener("userBlocked",OnBlockChange);
         ClientData.Instance.Social.removeEventListener("userUnblocked",OnBlockChange);
         RemoveFromQueue(_WaitQueue,_CacheID);
         RemoveFromQueue(_ProcessQueue,_CacheID);
         RemoveLoader();
         ClearTimer();
         if(_SourceImage != null)
         {
            _SourceImage.dispose();
            _SourceImage = null;
         }
         Clear();
         DisposeLoader();
         _CacheID = null;
         _RequestedSize = null;
         _IsBusy = false;
         _ListenersAdded = false;
      }
   }
}
