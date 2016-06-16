package nl.hbgames.ui.popups
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import nl.hbgames.WordOn;
   import nl.hbgames.managers.LayoutManager;
   import nl.hbgames.config.Settings;
   import nl.hbgames.managers.PopupManager;
   import com.greensock.TweenLite;
   
   public class BasePopup extends Sprite
   {
       
      protected var _Content:MovieClip;
      
      private var _CenterToScreen:Boolean;
      
      protected var _Disposed:Boolean;
      
      private var _Removed:Boolean;
      
      private var _SoundID:String;
      
      protected var _ShowCover:Boolean = true;
      
      protected var _BlockInteraction:Boolean = true;
      
      public var Descriptor:String = null;
      
      public function BasePopup(param1:MovieClip, param2:Boolean = false, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true, param6:String = null)
      {
         super();
         _Content = param1;
         this.addChild(_Content);
         _CenterToScreen = param3;
         _Disposed = false;
         _Removed = false;
         _ShowCover = param4;
         _BlockInteraction = param5;
         _SoundID = param6 != null?param6:"sfxPopup";
         if(PopupManager.Instance != null)
         {
            PopupManager.Instance.Add(this,param2);
         }
      }
      
      public function get ShowCover() : Boolean
      {
         return _ShowCover;
      }
      
      public function get BlockInteraction() : Boolean
      {
         return _BlockInteraction;
      }
      
      public function Initialize() : void
      {
         if(WordOn.Instance.IsActive && WordOn.Instance.Audio != null)
         {
            WordOn.Instance.Audio.Play(_SoundID);
         }
         LayoutManager.AdjustToScreen(_Content,false,false);
         if(_CenterToScreen)
         {
            _Content.x = Settings.SCREEN_CENTER_X;
            _Content.y = Settings.SCREEN_CENTER_Y;
         }
      }
      
      public function Remove() : void
      {
         _Removed = true;
         if(PopupManager.Instance != null)
         {
            PopupManager.Instance.Remove(this);
         }
      }
      
      public function OnBackHandler() : void
      {
      }
      
      public function OnShow() : void
      {
         var _loc1_:Number = _Content.scaleX;
         var _loc2_:Number = _Content.scaleY;
         _Content.scaleX = _Content.scaleX * 0.9;
         _Content.scaleY = _Content.scaleY * 0.9;
         TweenLite.to(_Content,0.2,{
            "scaleX":_loc1_,
            "scaleY":_loc2_
         });
      }
      
      public function OnHide() : void
      {
      }
      
      public function Update() : void
      {
      }
      
      public function Dispose() : void
      {
         if(_Disposed)
         {
            return;
         }
         if(!_Removed)
         {
            Remove();
            return;
         }
         this.removeChild(_Content);
         _Content = null;
         _Disposed = true;
      }
   }
}
