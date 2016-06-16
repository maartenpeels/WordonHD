package nl.hbgames.ui.panels
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import nl.hbgames.ui.list.ScrollingList;
   import nl.hbgames.logic.menu.elements.Banks;
   import nl.hbgames.ui.buttons.ArrowButton;
   import nl.hbgames.config.Settings;
   import com.greensock.TweenLite;
   import nl.hbgames.managers.PanelManager;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.managers.LayoutManager;
   import nl.hbgames.managers.AssetManager;
   import flash.display.Bitmap;
   
   public class BasePanel extends Sprite
   {
       
      protected var _Content:MovieClip;
      
      protected var _List:ScrollingList;
      
      private var _Banks:Banks;
      
      private var _Disposed:Boolean;
      
      private var _Closing:Boolean;
      
      private var _Duration:Number;
      
      private var _Delay:Number;
      
      private var _BtnBack:ArrowButton;
      
      private var _TweenOnFrames:Boolean = true;
      
      private var _Removed:Boolean;
      
      private var _FromBottom:Boolean = true;
      
      private var _OpenOnInitialize:Boolean;
      
      public function BasePanel(param1:MovieClip, param2:Boolean = true, param3:Boolean = true, param4:Number = 0.4, param5:Number = 0.0, param6:Boolean = true, param7:Boolean = true)
      {
         var _loc8_:* = null;
         super();
         if(param2)
         {
            _Content = LayoutManager.AdjustToScreen(param1,true);
         }
         else
         {
            _Content = param1;
         }
         if(param6)
         {
            _loc8_ = AssetManager.GetAsBitmap("libBackground");
            _loc8_.x = 0;
            _loc8_.y = 0;
            _Content.addChildAt(_loc8_,0);
         }
         this.addChild(_Content);
         _Disposed = false;
         _Removed = false;
         _Closing = false;
         _Duration = param4;
         _Delay = param5;
         _FromBottom = param3;
         _OpenOnInitialize = param7;
         var _loc9_:Sprite = _Content.mcListBounds;
         if(_loc9_ != null)
         {
            _List = new ScrollingList(_loc9_.width,_loc9_.height,0,26 * AssetManager.ContentScaleFactor,false,true);
            _loc9_.removeChildren();
            var _loc10_:* = 1;
            _loc9_.scaleY = _loc10_;
            _loc9_.scaleX = _loc10_;
            _loc9_.addChild(_List);
         }
         if(PanelManager.Instance.Add(this))
         {
            Initialize();
         }
      }
      
      public function get Remove() : Boolean
      {
         return _Removed;
      }
      
      protected function Initialize() : void
      {
         this.x = 0;
         this.y = _FromBottom?Settings.SCREEN_HEIGHT:-_Content.height;
         if(_OpenOnInitialize)
         {
            Open();
         }
      }
      
      protected function CenterList() : void
      {
         if(_List != null)
         {
            _List.x = (Settings.SCREEN_WIDTH >> 1) - (_List.width >> 1);
         }
      }
      
      public function Open() : void
      {
         var _loc1_:* = 0;
         if(_FromBottom)
         {
            _loc1_ = Settings.SCREEN_HEIGHT - this.height;
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
         }
         if(_Content.btnBack != null)
         {
            _BtnBack = new ArrowButton(_Content.btnBack,OnBackClick);
         }
         if(_Content.mcInventory != null)
         {
            _Banks = new Banks(_Content.mcInventory);
         }
         TweenLite.to(this,_TweenOnFrames?_Duration * 60:_Duration,{
            "delay":_Delay,
            "y":_loc1_,
            "onComplete":OnOpened,
            "useFrames":_TweenOnFrames
         });
      }
      
      public function Close() : void
      {
         if(_Closing)
         {
            return;
         }
         TweenLite.to(this,_TweenOnFrames?_Duration * 60:_Duration,{
            "y":(_FromBottom?Settings.SCREEN_HEIGHT:-_Content.height),
            "onComplete":OnClosed,
            "useFrames":_TweenOnFrames
         });
         _Closing = true;
      }
      
      protected function OnOpened() : void
      {
      }
      
      protected function OnClosed() : void
      {
         _Removed = true;
         PanelManager.Instance.Remove(this);
      }
      
      public function OnBackClick(param1:MouseEvent = null) : void
      {
         Close();
      }
      
      public function Update() : void
      {
         if(!PopupManager.Instance.isActive)
         {
            if(_List != null)
            {
               _List.Update();
            }
         }
      }
      
      public function Dispose() : void
      {
         if(_Disposed)
         {
            return;
         }
         if(_List)
         {
            _List.Dispose();
            _List.parent.removeChild(_List);
            _List = null;
         }
         if(_BtnBack != null)
         {
            _BtnBack.Dispose();
            _BtnBack = null;
         }
         if(_Banks != null)
         {
            _Banks.Dispose();
            _Banks = null;
         }
         this.removeChild(_Content);
         _Content = null;
         _Disposed = true;
      }
   }
}
