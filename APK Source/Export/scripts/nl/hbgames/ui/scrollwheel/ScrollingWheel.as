package nl.hbgames.ui.scrollwheel
{
   import flash.events.EventDispatcher;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.ui.popups.BasePopup;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.events.ScrollEvent;
   import nl.hbgames.config.Settings;
   import nl.hbgames.WordOn;
   import nl.hbgames.utils.Random;
   import nl.hbgames.utils.LayoutUtil;
   
   public class ScrollingWheel extends EventDispatcher
   {
       
      private const MOVE_SPRINGINESS:Number = 0.2;
      
      private const MOUSE_DAMPING:Number = 0.95;
      
      private const SCROLL_DAMPING:Number = 0.7;
      
      private const DISTANCE_BEFORE_DRAG:Number = LayoutUtil.MilliToPixels(3);
      
      private const SPEED_BEFORE_SLIDE:Number = 4;
      
      private const SNAP_SIZE:Number = 2;
      
      private const SNAP_DAMPING:Number = 0.3;
      
      private const MAX_VELOCITY:Number = 80;
      
      private var _Content:MovieClip;
      
      private var _Items:Vector.<BaseWheelItem>;
      
      private var _Height:Number;
      
      private var _Width:Number;
      
      private var _CenterX:Number;
      
      private var _CenterY:Number;
      
      private var _Spacing:int;
      
      private var _ScrollDirection:String;
      
      private var _MouseDown:Boolean;
      
      private var _MousePos:Point;
      
      private var _PrevMousePos:Point;
      
      private var _MouseY:Number;
      
      private var _MouseX:Number;
      
      private var _Velocity:Number;
      
      private var _Scrolling:Boolean;
      
      private var _Snapping:Boolean;
      
      private var _Dragging:Boolean;
      
      private var _HasDragged:Boolean;
      
      private var _PrevScrollIndex:int = -1;
      
      private var _ScrollIndex:int;
      
      private var _Offset:Number;
      
      private var _VisibleItems:int;
      
      private var _ExtraHitAreaSize:int = 0;
      
      private var _Output:TextField;
      
      private var _WrapAround:Boolean;
      
      public function ScrollingWheel(param1:MovieClip, param2:int, param3:int, param4:int = 0, param5:String = "ScrollVertical", param6:int = 0)
      {
         super();
         _ScrollDirection = param5;
         _Spacing = param4;
         _Content = param1;
         _Height = _Content.height / AssetManager.ContentScaleFactor;
         _Width = _Content.width / AssetManager.ContentScaleFactor;
         _Items = new Vector.<BaseWheelItem>();
         _MouseDown = false;
         _MousePos = new Point();
         _PrevMousePos = new Point();
         _MouseY = 0;
         _MouseX = 0;
         _Velocity = 0;
         _Dragging = false;
         _Scrolling = false;
         _HasDragged = false;
         _VisibleItems = param3;
         _ExtraHitAreaSize = param6;
         _WrapAround = true;
         _CenterX = _Width >> 1;
         _CenterY = _Height >> 1;
         _ScrollIndex = param2;
         _Offset = 0;
         _Content.mouseChildren = false;
         if(_Content.stage)
         {
            _Content.stage.addEventListener("mouseDown",OnMouseDown);
         }
         else
         {
            _Content.addEventListener("addedToStage",OnAddedToStage);
         }
      }
      
      public function get ScrollIndex() : int
      {
         return _ScrollIndex;
      }
      
      public function get SelectedItem() : BaseWheelItem
      {
         return _Items[_ScrollIndex];
      }
      
      private function OnAddedToStage(param1:Event) : void
      {
         this.removeEventListener("addedToStage",OnAddedToStage);
         _Content.stage.addEventListener("mouseDown",OnMouseDown);
      }
      
      public function Initialize(param1:TextField = null) : void
      {
         _Output = param1;
         var _loc2_:int = (_ScrollIndex + 1) % _Items.length;
         if(_ScrollDirection == "ScrollVertical")
         {
            _Offset = _CenterY - _Items[_loc2_].y + (_Items[_loc2_].height >> 1) + _Spacing;
         }
         else
         {
            _Offset = _CenterX - _Items[_loc2_].x + (_Items[_loc2_].width >> 1) + _Spacing;
         }
         var _loc3_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < _Items.length)
         {
            if(_ScrollDirection == "ScrollVertical")
            {
               var _loc4_:* = _Items[_loc3_].y + _Offset;
               _Items[_loc3_].y = _loc4_;
               _Items[_loc3_].TargetY = _loc4_;
            }
            else
            {
               _loc4_ = _Items[_loc3_].x + _Offset;
               _Items[_loc3_].x = _loc4_;
               _Items[_loc3_].TargetX = _loc4_;
            }
            _loc3_++;
         }
         _loc3_ = _Items.length - 1;
         while(_loc3_ >= 0)
         {
            AlignItem(_loc3_);
            _loc3_--;
         }
         HighlightSelectedItem(false);
      }
      
      private function OnMouseDown(param1:MouseEvent) : void
      {
         if(WaitBox.IsVisible || _MouseDown || PopupManager.Instance.isActive && !(_Content.parent.parent is BasePopup))
         {
            return;
         }
         var _loc2_:Point = new Point(0,0);
         _loc2_ = _Content.localToGlobal(_loc2_);
         if(param1.stageY >= _loc2_.y && param1.stageY <= _loc2_.y + _Content.height + _ExtraHitAreaSize * AssetManager.ContentScaleFactor)
         {
            _MousePos = new Point(param1.stageX,param1.stageY);
            _PrevMousePos = new Point(param1.stageX,param1.stageY);
            _MouseY = _Content.y;
            _MouseX = _Content.x;
            _HasDragged = false;
            _Velocity = 0;
            _Content.stage.addEventListener("mouseUp",OnMouseUp);
            _MouseDown = true;
            this.dispatchEvent(new ScrollEvent("Scrolling"));
         }
      }
      
      private function OnMouseUp(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(!_MouseDown)
         {
            return;
         }
         if(!_HasDragged)
         {
            OnListClick(param1.stageX,param1.stageY);
         }
         _Content.stage.removeEventListener("mouseUp",OnMouseUp);
         _MouseDown = false;
         _HasDragged = false;
         if(_Velocity < -80)
         {
            _Velocity = -80;
         }
         else if(_Velocity > 80)
         {
            _Velocity = 80;
         }
      }
      
      private function OnListClick(param1:Number, param2:Number) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(_Snapping)
         {
            return;
         }
         var _loc3_:* = true;
         var _loc4_:Point = new Point(0,0);
         _loc4_ = _Content.localToGlobal(_loc4_);
         if(_ScrollDirection == "ScrollVertical")
         {
            _loc5_ = Math.floor((param2 - _loc4_.y) / _Height / AssetManager.ContentScaleFactor * _VisibleItems) - Math.floor(_VisibleItems / 2);
            if(_WrapAround || !_WrapAround && _ScrollIndex + _loc5_ >= 0 && _ScrollIndex + _loc5_ <= _Items.length - 1)
            {
               _loc6_ = 0;
               while(_loc6_ < _Items.length)
               {
                  _Items[_loc6_].TargetY = _Items[_loc6_].y - _loc5_ * (_Items[_loc6_].height + _Spacing);
                  _loc6_++;
               }
            }
            else
            {
               _loc3_ = false;
            }
         }
         else
         {
            _loc5_ = Math.floor((param1 - _loc4_.x) / _Width / AssetManager.ContentScaleFactor * _VisibleItems) - Math.floor(_VisibleItems / 2);
            if(_WrapAround || !_WrapAround && _ScrollIndex + _loc5_ >= 0 && _ScrollIndex + _loc5_ <= _Items.length - 1)
            {
               _loc6_ = 0;
               while(_loc6_ < _Items.length)
               {
                  _Items[_loc6_].TargetX = _Items[_loc6_].x - _loc5_ * (_Items[_loc6_].width + _Spacing);
                  _loc6_++;
               }
            }
            else
            {
               _loc3_ = false;
            }
         }
         if(_loc3_)
         {
            _ScrollIndex = _ScrollIndex + _loc5_;
            if(_ScrollIndex < 0)
            {
               _ScrollIndex = §§dup()._ScrollIndex + _Items.length;
            }
            else if(_ScrollIndex >= _Items.length)
            {
               _ScrollIndex = §§dup()._ScrollIndex - _Items.length;
            }
            _Snapping = true;
            if(_ScrollIndex != _PrevScrollIndex)
            {
               this.dispatchEvent(new ScrollEvent("Tapped"));
            }
            else
            {
               this.dispatchEvent(new ScrollEvent("SelectedTapped"));
            }
         }
      }
      
      public function Add(param1:BaseWheelItem) : void
      {
         if(_ScrollDirection == "ScrollVertical")
         {
            param1.x = 0;
            param1.y = _Items.length * (param1.height + _Spacing);
         }
         else
         {
            param1.x = _Items.length * (param1.width + _Spacing);
            param1.y = _Height - param1.height >> 1;
         }
         _Content.addChild(param1);
         _Items.push(param1);
      }
      
      public function Remove(param1:BaseWheelItem) : void
      {
         _Items.splice(_Items.indexOf(param1),1);
      }
      
      public function Update() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc2_:* = NaN;
         if(_MouseDown)
         {
            _loc1_ = new Point(_Content.stage.mouseX,_Content.stage.mouseY);
            _loc5_ = _ScrollDirection == "ScrollVertical"?Math.abs(_loc1_.y - _MousePos.y):Math.abs(_loc1_.x - _MousePos.x);
            if(_loc5_ > DISTANCE_BEFORE_DRAG)
            {
               _HasDragged = true;
            }
            if(_HasDragged)
            {
               _loc3_ = _ScrollDirection == "ScrollVertical"?_loc1_.y - _PrevMousePos.y:_loc1_.x - _PrevMousePos.x;
               _Velocity = _loc3_ / AssetManager.ContentScaleFactor;
               if(_Velocity < -80)
               {
                  _Velocity = -80;
               }
               else if(_Velocity > 80)
               {
                  _Velocity = 80;
               }
            }
            _PrevMousePos = _loc1_;
            SnapToNearestItem();
            HighlightSelectedItem();
         }
         if(_MouseDown)
         {
            _Velocity = §§dup()._Velocity * 0.95;
         }
         else
         {
            _Velocity = §§dup()._Velocity * 0.7;
         }
         if(!(_Velocity < 0.5 && _Velocity > -0.5))
         {
            _Scrolling = true;
         }
         else if(_Scrolling && !_HasDragged)
         {
            _Scrolling = false;
            _Velocity = 0;
            SnapToNearestItem();
            if(_ScrollDirection == "ScrollVertical")
            {
               _loc4_ = 0;
               while(_loc4_ < _Items.length)
               {
                  _Items[_loc4_].TargetY = _Items[_loc4_].y + _Offset;
                  _loc4_++;
               }
            }
            else
            {
               _loc4_ = 0;
               while(_loc4_ < _Items.length)
               {
                  _Items[_loc4_].TargetX = _Items[_loc4_].x + _Offset;
                  _loc4_++;
               }
            }
            _Snapping = true;
         }
         _loc4_ = 0;
         if(_Scrolling)
         {
            if(_ScrollDirection == "ScrollVertical")
            {
               _loc4_ = 0;
               while(_loc4_ < _Items.length)
               {
                  _Items[_loc4_].y = _Items[_loc4_].y + _Velocity;
                  _loc4_++;
               }
            }
            else
            {
               _loc4_ = 0;
               while(_loc4_ < _Items.length)
               {
                  _Items[_loc4_].x = _Items[_loc4_].x + _Velocity;
                  _loc4_++;
               }
            }
            _loc4_ = _Items.length - 1;
            while(_loc4_ >= 0)
            {
               AlignItem(_loc4_);
               _loc4_--;
            }
         }
         else if(_Snapping)
         {
            if(_ScrollDirection == "ScrollVertical")
            {
               _loc4_ = 0;
               while(_loc4_ < _Items.length)
               {
                  _Items[_loc4_].y = _Items[_loc4_].y + (_Items[_loc4_].TargetY - _Items[_loc4_].y) * 0.3;
                  _loc4_++;
               }
            }
            else
            {
               _loc4_ = 0;
               while(_loc4_ < _Items.length)
               {
                  _Items[_loc4_].x = _Items[_loc4_].x + (_Items[_loc4_].TargetX - _Items[_loc4_].x) * 0.3;
                  _loc4_++;
               }
            }
            _loc2_ = _ScrollDirection == "ScrollVertical"?Math.abs(_Items[0].y - _Items[0].TargetY):Math.abs(_Items[0].x - _Items[0].TargetX);
            if(_loc2_ < 2)
            {
               if(_ScrollDirection == "ScrollVertical")
               {
                  _loc4_ = 0;
                  while(_loc4_ < _Items.length)
                  {
                     _Items[_loc4_].y = _Items[_loc4_].TargetY;
                     _loc4_++;
                  }
               }
               else
               {
                  _loc4_ = 0;
                  while(_loc4_ < _Items.length)
                  {
                     _Items[_loc4_].x = _Items[_loc4_].TargetX;
                     _loc4_++;
                  }
               }
               HighlightSelectedItem();
               _Snapping = false;
            }
            _loc4_ = _Items.length - 1;
            while(_loc4_ >= 0)
            {
               AlignItem(_loc4_);
               _loc4_--;
            }
         }
      }
      
      public function Refresh() : void
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Items.length)
         {
            _Items[_loc1_].Refresh();
            _loc1_++;
         }
      }
      
      private function AlignItem(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = 0;
         if(_WrapAround)
         {
            _loc3_ = _Items[param1];
            if(_ScrollDirection == "ScrollVertical")
            {
               if(_loc3_.y >= _Height + _Spacing)
               {
                  _loc2_ = param1 + 1 >= _Items.length?0:param1 + 1;
                  _loc3_.y = _Items[_loc2_].y - _loc3_.height - _Spacing;
                  _loc3_.TargetY = Math.round(_Items[_loc2_].TargetY - _loc3_.height - _Spacing);
               }
               else if(_loc3_.y < -_loc3_.height - _Spacing)
               {
                  _loc2_ = param1 - 1 < 0?_Items.length - 1:param1 - 1;
                  _loc3_.y = _Items[_loc2_].y + _loc3_.height + _Spacing;
                  _loc3_.TargetY = Math.round(_Items[_loc2_].TargetY + _loc3_.height + _Spacing);
               }
            }
            else if(_loc3_.x >= _Width + _Spacing)
            {
               _loc2_ = param1 + 1 >= _Items.length?0:param1 + 1;
               _loc3_.x = _Items[_loc2_].x - _loc3_.width - _Spacing;
               _loc3_.TargetX = Math.round(_Items[_loc2_].TargetX - _loc3_.width - _Spacing);
            }
            else if(_loc3_.x < -_loc3_.width - _Spacing)
            {
               _loc2_ = param1 - 1 < 0?_Items.length - 1:param1 - 1;
               _loc3_.x = _Items[_loc2_].x + _loc3_.width + _Spacing;
               _loc3_.TargetX = Math.round(_Items[_loc2_].TargetX + _loc3_.width + _Spacing);
            }
         }
      }
      
      private function SnapToNearestItem() : void
      {
         var _loc4_:* = NaN;
         var _loc3_:* = 0;
         if(_Items.length == 0)
         {
            return;
         }
         var _loc2_:* = -1;
         var _loc1_:Number = 10000;
         _loc3_ = 0;
         while(_loc3_ < _Items.length)
         {
            _loc4_ = _ScrollDirection == "ScrollVertical"?Math.abs(_Items[_loc3_].y - (_Items[_loc3_].height >> 1) - _CenterY - _Spacing):Math.abs(_Items[_loc3_].x - (_Items[_loc3_].width >> 1) - _CenterX - _Spacing);
            if(_loc4_ < _loc1_)
            {
               _loc1_ = _loc4_;
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         _ScrollIndex = _loc2_ - 1;
         if(_ScrollIndex < 0)
         {
            _ScrollIndex = §§dup()._ScrollIndex + _Items.length;
         }
         if(_ScrollDirection == "ScrollVertical")
         {
            _Offset = _CenterY - _Items[_loc2_].y + (_Items[_loc2_].height >> 1) + _Spacing;
         }
         else
         {
            _Offset = _CenterX - _Items[_loc2_].x + (_Items[_loc2_].width >> 1) + _Spacing;
         }
      }
      
      private function HighlightSelectedItem(param1:Boolean = true) : void
      {
         var _loc2_:* = 0;
         if(_ScrollIndex != _PrevScrollIndex)
         {
            _PrevScrollIndex = _ScrollIndex;
            if(_Items != null)
            {
               _loc2_ = 0;
               while(_loc2_ < _Items.length)
               {
                  if(_loc2_ != _ScrollIndex)
                  {
                     _Items[_loc2_].alpha = 0.4;
                  }
                  else
                  {
                     _Items[_loc2_].alpha = 1;
                     if(_Output != null)
                     {
                        _Output.text = _Items[_loc2_].Output;
                     }
                     if(param1 && Settings.IS_IOS)
                     {
                        WordOn.Instance.Audio.Play("sfxWheelSnap1",Random.nextFloatRange(0.1,0.3),0,0,0,true,false);
                     }
                     this.dispatchEvent(new ScrollEvent("Selected"));
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      public function Dispose() : void
      {
         var _loc1_:* = null;
         _Content.stage.removeEventListener("mouseDown",OnMouseDown);
         _Content.stage.removeEventListener("mouseUp",OnMouseUp);
         while(_Items.length > 0)
         {
            _loc1_ = _Items.shift();
            _loc1_.Dispose();
            _Content.removeChild(_loc1_);
            _loc1_ = null;
         }
         _Items = null;
         _MousePos = null;
         _PrevMousePos = null;
         _Content = null;
      }
   }
}
