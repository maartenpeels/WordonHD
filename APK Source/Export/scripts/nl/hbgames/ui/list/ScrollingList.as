package nl.hbgames.ui.list
{
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.utils.LayoutUtil;
   
   public class ScrollingList extends Sprite
   {
      
      private static var _HasDragged:Boolean;
       
      private const MOVE_SPRINGINESS:Number = 0.1;
      
      private const BOUNCE_SPRINGINESS:Number = 0.25;
      
      private const MOUSE_DAMPING:Number = 0.95;
      
      private const SCROLL_DAMPING:Number = 0.95;
      
      private const BOUNCE_DAMPING:Number = 0.5;
      
      private const DISTANCE_BEFORE_DRAG:Number = LayoutUtil.MilliToPixels(3);
      
      private const SPEED_BEFORE_SLIDE:Number = 4;
      
      private const STIFFNESS_OUTSIDE_BOUNDS:Number = 2.5;
      
      private var _Canvas:Sprite;
      
      private var _ListHeight:Number;
      
      private var _ListWidth:Number;
      
      private var _TotalListHeight:Number;
      
      private var _Spacing:Number;
      
      private var _Margin:int;
      
      private var _TopPosition:int;
      
      private var _MouseDown:Boolean;
      
      private var _MousePos:Point;
      
      private var _PrevMousePos:Point;
      
      private var _MouseY:Number;
      
      private var _Velocity:Number;
      
      private var _Moving:Boolean;
      
      private var _Dragging:Boolean;
      
      private var _Scrolling:Boolean;
      
      private var _HasDraggedOutOfUpperBound:Boolean;
      
      private var _InformAboutScrollState:Boolean = false;
      
      private var _InformAboutVisibility:Boolean = false;
      
      private var _Items:Vector.<BaseListItem>;
      
      private var _RefreshItem:RefreshListItem;
      
      public function ScrollingList(param1:Number, param2:Number, param3:int = 0, param4:int = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super();
         _ListWidth = param1;
         _ListHeight = param2;
         _Spacing = param3;
         _Margin = param4;
         _TotalListHeight = 0;
         _TopPosition = 0;
         _InformAboutScrollState = param5;
         _InformAboutVisibility = param6;
         _MouseDown = false;
         _MousePos = new Point();
         _PrevMousePos = new Point();
         _MouseY = 0;
         _Velocity = 0;
         _Dragging = false;
         _Scrolling = false;
         _HasDraggedOutOfUpperBound = false;
         _Moving = false;
         _Items = new Vector.<BaseListItem>();
         _Canvas = new Sprite();
         this.addChild(_Canvas);
         this.name = "ScrollingList";
         this.addEventListener("addedToStage",OnAddedToStage);
      }
      
      public static function get IsDragging() : Boolean
      {
         return _HasDragged;
      }
      
      public function get Items() : Vector.<BaseListItem>
      {
         return _Items;
      }
      
      public function get InformAboutScrollState() : Boolean
      {
         return _InformAboutScrollState;
      }
      
      public function get InformAboutVisibility() : Boolean
      {
         return _InformAboutVisibility;
      }
      
      public function set InformAboutScrollState(param1:Boolean) : void
      {
         _InformAboutScrollState = param1;
      }
      
      public function set InformAboutVisibility(param1:Boolean) : void
      {
         _InformAboutVisibility = param1;
      }
      
      private function OnAddedToStage(param1:Event) : void
      {
         this.removeEventListener("addedToStage",OnAddedToStage);
         this.stage.addEventListener("mouseDown",OnMouseDown);
      }
      
      public function EnableListRefresh(param1:Boolean, param2:Function = null) : void
      {
         if(param1)
         {
            _RefreshItem = new RefreshListItem(param2);
            Add(_RefreshItem);
            _TopPosition = -_RefreshItem.ItemHeight;
            _Canvas.y = _TopPosition;
         }
         else
         {
            Remove(_RefreshItem);
            _RefreshItem = null;
            _TopPosition = 0;
         }
      }
      
      public function OnRefreshed() : void
      {
         _TopPosition = -_RefreshItem.ItemHeight;
      }
      
      public function GetScrollPosition() : Object
      {
         return {
            "x":_Canvas.x,
            "y":_Canvas.y
         };
      }
      
      public function SetScrollPosition(param1:Object) : void
      {
         _Canvas.x = param1.x < 0?param1.x:0;
         _Canvas.y = param1.y < 0?param1.y:0;
         UpdateActiveItems();
      }
      
      private function OnMouseDown(param1:MouseEvent) : void
      {
         var _loc3_:* = 0;
         if(WaitBox.IsVisible)
         {
            return;
         }
         var _loc2_:Point = new Point(0,0);
         _loc2_ = this.localToGlobal(_loc2_);
         if(param1.stageY >= _loc2_.y && param1.stageY <= _loc2_.y + _ListHeight)
         {
            if(!_MouseDown)
            {
               _MousePos = new Point(param1.stageX,param1.stageY);
               _PrevMousePos = new Point(param1.stageX,param1.stageY);
               _MouseY = _Canvas.y;
               _MouseDown = true;
               _Scrolling = true;
               _HasDragged = false;
               this.stage.addEventListener("mouseUp",OnMouseUp);
               if(_InformAboutScrollState)
               {
                  _loc3_ = 0;
                  while(_loc3_ < _Items.length)
                  {
                     _Items[_loc3_].OnScrollStatus(true);
                     _loc3_++;
                  }
               }
            }
         }
      }
      
      private function OnMouseUp(param1:MouseEvent) : void
      {
         if(_MouseDown)
         {
            if(_HasDraggedOutOfUpperBound && _RefreshItem != null)
            {
               _TopPosition = 0;
               _RefreshItem.Activate();
            }
            _MouseDown = false;
            this.stage.removeEventListener("mouseUp",OnMouseUp);
         }
      }
      
      public function Add(param1:BaseListItem, param2:Boolean = false) : void
      {
         var _loc3_:* = 0;
         if(param1 == null)
         {
            return;
         }
         if(_Items.length == 0)
         {
            var param2:* = false;
         }
         if(!param2)
         {
            param1.x = 0;
            if(_Items.length == 0)
            {
               param1.y = 0;
            }
            else
            {
               param1.y = _Items[_Items.length - 1].y + _Items[_Items.length - 1].ItemHeight + _Spacing;
            }
            _Items.push(param1);
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < _Items.length)
            {
               _Items[_loc3_].y = _Items[_loc3_].y + (param1.ItemHeight + _Spacing);
               _loc3_++;
            }
            param1.x = 0;
            param1.y = 0;
            _Items.unshift(param1);
         }
         FinalizeNewItem(param1);
      }
      
      public function AddAfter(param1:BaseListItem, param2:BaseListItem) : void
      {
         var _loc4_:* = 0;
         var _loc3_:int = _Items.indexOf(param2) + 1;
         if(_loc3_ != -1)
         {
            _loc4_ = _loc3_;
            while(_loc4_ < _Items.length)
            {
               _Items[_loc4_].y = _Items[_loc4_].y + (param1.ItemHeight + _Spacing);
               _loc4_++;
            }
            param1.y = param2.y + param2.ItemHeight + _Spacing;
            _Items.splice(_loc3_,0,param1);
            FinalizeNewItem(param1);
         }
      }
      
      public function AddAfterIndex(param1:BaseListItem, param2:uint) : void
      {
         var _loc4_:* = 0;
         if(_Items.length == 0 || param2 >= _Items.length - 1)
         {
            Add(param1);
            return;
         }
         var _loc3_:BaseListItem = _Items[param2];
         param2++;
         _loc4_ = param2;
         while(_loc4_ < _Items.length)
         {
            _Items[_loc4_].y = _Items[_loc4_].y + (param1.ItemHeight + _Spacing);
            _loc4_++;
         }
         param1.y = _loc3_.y + _loc3_.ItemHeight + _Spacing;
         _Items.splice(param2,0,param1);
         FinalizeNewItem(param1);
      }
      
      private function FinalizeNewItem(param1:BaseListItem) : void
      {
         param1.SetList(this);
         if(_TotalListHeight + param1.ItemHeight <= _ListHeight)
         {
            _Canvas.addChild(param1);
            if(_InformAboutVisibility)
            {
               param1.OnRendered(true);
            }
         }
         UpdateActiveItems();
      }
      
      public function JumpToTop() : void
      {
         _Canvas.y = _TopPosition;
         UpdateActiveItems();
      }
      
      public function JumpToBottom() : void
      {
         var _loc1_:int = _TotalListHeight - _ListHeight;
         if(_Items != null && _Items.length > 0 && _Canvas.y > -_loc1_)
         {
            _Canvas.y = -_loc1_;
            UpdateActiveItems();
         }
      }
      
      public function JumpToIndex(param1:String) : Boolean
      {
         var _loc4_:* = 0;
         var _loc3_:* = null;
         var _loc2_:* = 0;
         var param1:String = param1.toLowerCase();
         var _loc5_:BaseListItem = _Items[_Items.length - 1];
         if(_loc5_.y < _ListHeight)
         {
            return false;
         }
         _loc4_ = 0;
         while(_loc4_ < _Items.length)
         {
            _loc3_ = _Items[_loc4_];
            if(_loc3_.Index == param1)
            {
               _loc2_ = _loc5_.y - _loc3_.y;
               if(_loc2_ > _ListHeight)
               {
                  _Canvas.y = -_loc3_.y;
               }
               else
               {
                  _Canvas.y = -(_TotalListHeight - _ListHeight);
               }
               UpdateActiveItems();
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      public function SortOn(param1:String) : void
      {
         key = param1;
         _Items.sort(function(param1:BaseListItem, param2:BaseListItem):Number
         {
            var _loc4_:Number = param1[key];
            var _loc3_:Number = param2[key];
            if(_loc4_ < _loc3_)
            {
               return -1;
            }
            if(_loc4_ == _loc3_)
            {
               return 0;
            }
            return 1;
         });
         var i:uint = 0;
         while(i < _Items.length)
         {
            var item:BaseListItem = _Items[i];
            if(i > 0)
            {
               var prevItem:BaseListItem = _Items[i - 1];
               item.y = prevItem.y + prevItem.ItemHeight + _Spacing;
            }
            else
            {
               item.y = 0;
            }
            i = i + 1;
         }
      }
      
      public function IsItemInView(param1:BaseListItem) : Boolean
      {
         return !(_Canvas.y + param1.y - param1.ItemHeight < -this.y || _Canvas.y - this.y + param1.y > _ListHeight);
      }
      
      public function Remove(param1:BaseListItem, param2:Boolean = true) : void
      {
         var _loc5_:* = 0;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         var _loc4_:int = _Items.indexOf(param1);
         if(_loc4_ > -1)
         {
            _Items.splice(_loc4_,1);
            if(param2)
            {
               param1.Dispose();
            }
            if(_Canvas.contains(param1))
            {
               _Canvas.removeChild(param1);
            }
            var param1:BaseListItem = null;
            if(_loc4_ < _Items.length)
            {
               _loc5_ = _loc4_;
               while(_loc5_ < _Items.length)
               {
                  _loc3_ = _Items[_loc5_];
                  if(_loc5_ == 0)
                  {
                     _loc3_.y = 0;
                  }
                  else
                  {
                     _loc3_.y = _Items[_loc5_ - 1].y + _Items[_loc5_ - 1].ItemHeight + _Spacing;
                  }
                  _loc5_++;
               }
            }
            UpdateActiveItems();
         }
      }
      
      public function RemoveFromIndex(param1:int, param2:Boolean = true) : void
      {
         var _loc4_:* = 0;
         var _loc3_:* = null;
         if(param1 < 0)
         {
            var param1:* = 0;
         }
         else if(param1 > _Items.length - 1)
         {
            var _loc5_:* = 1;
            _Items.length = _loc5_;
            param1 = _loc5_;
         }
         _loc4_ = param1;
         while(_loc4_ < _Items.length)
         {
            _loc3_ = _Items.splice(_loc4_,1)[0];
            if(param2)
            {
               _loc3_.Dispose();
            }
            if(_Canvas.contains(_loc3_))
            {
               _Canvas.removeChild(_loc3_);
            }
            _loc3_ = null;
            _loc4_--;
            _loc4_++;
         }
         UpdateActiveItems();
      }
      
      public function Clear(param1:Boolean = true, param2:Boolean = true) : void
      {
         while(_Items.length > 0)
         {
            Remove(_Items[0],param2);
         }
         if(param1)
         {
            _TopPosition = 0;
            _Canvas.y = 0;
            _Velocity = 0;
         }
      }
      
      public function Update() : void
      {
         var _loc1_:* = null;
         var _loc3_:* = 0;
         var _loc2_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         _HasDraggedOutOfUpperBound = false;
         if(_MouseDown)
         {
            _loc1_ = new Point(this.stage.mouseX,this.stage.mouseY);
            if(Math.abs(_loc1_.y - _MousePos.y) > DISTANCE_BEFORE_DRAG)
            {
               _HasDragged = true;
            }
            if(_HasDragged)
            {
               _Velocity = §§dup()._Velocity + (_loc1_.y - _PrevMousePos.y) * 0.1;
               _Canvas.y = _MouseY + (_loc1_.y - _MousePos.y);
               _loc3_ = _Canvas.y + _TotalListHeight + _Margin;
               if(_Canvas.y - _Margin > _TopPosition)
               {
                  _Canvas.y = (_Canvas.y + _Margin + _TopPosition) / 2.5;
                  _Velocity = §§dup()._Velocity / 2.5;
                  if(_RefreshItem == null)
                  {
                     _HasDraggedOutOfUpperBound = true;
                  }
                  else
                  {
                     _HasDraggedOutOfUpperBound = _Canvas.y > _RefreshItem.ItemHeight;
                  }
               }
               else if(_TotalListHeight > _ListHeight && _loc3_ < _ListHeight)
               {
                  _Canvas.y = _Canvas.y + (_ListHeight - _loc3_) / 2.5 * 2;
                  _Velocity = §§dup()._Velocity / 2.5;
               }
               else if(_TotalListHeight <= _ListHeight && _Canvas.y < _TopPosition)
               {
                  _Canvas.y = _Canvas.y / 2.5;
                  _Velocity = §§dup()._Velocity / 2.5;
               }
            }
            if(_RefreshItem != null)
            {
               _RefreshItem.ReleaseToActivate(_HasDraggedOutOfUpperBound);
            }
            _PrevMousePos = _loc1_;
         }
         else
         {
            _HasDragged = false;
         }
         if(!(_Velocity < 0.5 && _Velocity > -0.5))
         {
            _Moving = true;
         }
         else
         {
            _Velocity = 0;
            _Moving = false;
         }
         if(!_MouseDown)
         {
            _loc2_ = 0.0;
            _loc4_ = _RefreshItem != null?0:_Margin;
            if(_Canvas.y - _loc4_ > _TopPosition)
            {
               _loc2_ = -(_Canvas.y - _loc4_ - _TopPosition) * 0.25;
            }
            else if(_TotalListHeight > _ListHeight && _Canvas.y + _TotalListHeight + _Margin < _ListHeight)
            {
               _loc2_ = (_ListHeight - _TotalListHeight - _Canvas.y - _Margin) * 0.25;
            }
            else if(_TotalListHeight <= _ListHeight && _Canvas.y < _TopPosition)
            {
               _loc2_ = -(_Canvas.y - _TopPosition) * 0.25;
            }
            _Canvas.y = _Canvas.y + _Velocity + _loc2_;
            if(_loc2_ == 0)
            {
               if(_Scrolling)
               {
                  _Scrolling = false;
                  if(_InformAboutScrollState)
                  {
                     _loc5_ = 0;
                     while(_loc5_ < _Items.length)
                     {
                        _Items[_loc5_].OnScrollStatus(false);
                        _loc5_++;
                     }
                  }
               }
            }
         }
         if(_loc2_ != 0 || _Velocity != 0)
         {
            UpdateActiveItems();
         }
         if(_MouseDown)
         {
            _Velocity = §§dup()._Velocity * 0.95;
         }
         else if(_loc2_ != 0)
         {
            _Velocity = §§dup()._Velocity * 0.5;
         }
         else
         {
            _Velocity = §§dup()._Velocity * 0.95;
         }
      }
      
      private function UpdateActiveItems() : void
      {
         var _loc3_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:* = -1.0;
         _loc3_ = 0;
         while(_loc3_ < _Items.length)
         {
            if(_Canvas.y + _Items[_loc3_].y + _Items[_loc3_].ItemHeight < _TopPosition || _Canvas.y + _Items[_loc3_].y > _ListHeight)
            {
               _Items[_loc3_].visible = false;
               if(_Canvas.contains(_Items[_loc3_]))
               {
                  if(_InformAboutVisibility)
                  {
                     _Items[_loc3_].OnRendered(false);
                  }
                  _Canvas.removeChild(_Items[_loc3_]);
               }
            }
            else
            {
               _Items[_loc3_].visible = true;
               if(!_Canvas.contains(_Items[_loc3_]))
               {
                  if(_InformAboutVisibility)
                  {
                     _Items[_loc3_].OnRendered(true);
                  }
                  _Canvas.addChild(_Items[_loc3_]);
               }
               _Items[_loc3_].Update();
               _loc1_++;
            }
            if(_Items[_loc3_].y > _loc2_)
            {
               _loc2_ = _Items[_loc3_].y;
               _TotalListHeight = _Items[_loc3_].y + _Items[_loc3_].ItemHeight + _Margin;
            }
            _loc3_++;
         }
      }
      
      public function Dispose() : void
      {
         var _loc1_:* = null;
         Clear();
         this.stage.removeEventListener("mouseDown",OnMouseDown);
         if(this.stage.hasEventListener("mouseUp"))
         {
            this.stage.removeEventListener("mouseUp",OnMouseUp);
         }
         while(_Items.length > 0)
         {
            _loc1_ = _Items.shift();
            _loc1_.Dispose();
            if(_Canvas.contains(_loc1_))
            {
               _Canvas.removeChild(_loc1_);
            }
            _loc1_ = null;
         }
         _Items = null;
         this.removeChild(_Canvas);
         _Canvas = null;
         _MousePos = null;
         _PrevMousePos = null;
      }
   }
}
