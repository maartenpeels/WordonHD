package nl.hbgames.ui.list
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.events.Event;
   import nl.hbgames.WordOn;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.AssetManager;
   
   public class BaseListItem extends Sprite
   {
      
      public static const SWIPE_LEFT:String = "SwipeLeft";
      
      public static const SWIPE_RIGHT:String = "SwipeRight";
       
      private const SWIPE_LENGTH:Number = 200;
      
      protected var _Content:MovieClip = null;
      
      protected var _ScrollingList:ScrollingList = null;
      
      protected var _Index:String = "";
      
      private var _MouseX:Number;
      
      private var _MouseY:Number;
      
      private var _OffsetX:Number;
      
      private var _OffsetY:Number;
      
      private var _Swiping:Boolean;
      
      public function BaseListItem(param1:MovieClip = null)
      {
         super();
         if(param1 != null)
         {
            _Content = param1;
            this.addChild(_Content);
            _Content.scaleX = _Content.scaleX * AssetManager.ContentScaleFactor;
            _Content.scaleY = _Content.scaleY * AssetManager.ContentScaleFactor;
            Initialize();
            _Content.cacheAsBitmap = true;
         }
         this.addEventListener("mouseDown",OnMouseDown);
         _OffsetY = 0;
         _OffsetX = 0;
         _MouseY = 0;
         _MouseX = 0;
         _Swiping = false;
         this.addEventListener("removedFromStage",OnRemovedFromStage);
      }
      
      public function get Content() : MovieClip
      {
         return _Content;
      }
      
      public function get ItemHeight() : Number
      {
         return this.height;
      }
      
      public function get Index() : String
      {
         return _Index;
      }
      
      private function OnRemovedFromStage(param1:Event) : void
      {
         WordOn.Instance.stage.removeEventListener("mouseMove",OnMouseMove);
         WordOn.Instance.stage.removeEventListener("mouseUp",OnMouseUp);
      }
      
      protected function Initialize() : void
      {
      }
      
      public function SetList(param1:ScrollingList) : void
      {
         _ScrollingList = param1;
      }
      
      public function OnRefresh() : void
      {
      }
      
      public function OnListClick() : void
      {
      }
      
      public function OnScrollStatus(param1:Boolean) : void
      {
      }
      
      public function OnRendered(param1:Boolean) : void
      {
      }
      
      private function OnMouseDown(param1:MouseEvent) : void
      {
         if(_Swiping)
         {
            return;
         }
         _MouseX = stage.mouseX;
         _MouseY = stage.mouseY;
         _Swiping = true;
         WordOn.Instance.stage.addEventListener("mouseMove",OnMouseMove);
         WordOn.Instance.stage.addEventListener("mouseUp",OnMouseUp);
      }
      
      private function OnMouseMove(param1:MouseEvent) : void
      {
         if(_Swiping)
         {
            _OffsetX = stage.mouseX - _MouseX;
            _OffsetY = stage.mouseY - _MouseY;
         }
      }
      
      private function OnMouseUp(param1:MouseEvent) : void
      {
         WordOn.Instance.stage.removeEventListener("mouseMove",OnMouseMove);
         WordOn.Instance.stage.removeEventListener("mouseUp",OnMouseUp);
         _Swiping = false;
         var _loc2_:String = "NONE";
         var _loc4_:int = 200 * AssetManager.ContentScaleFactor;
         var _loc3_:Number = Math.abs(_MouseY - stage.mouseY);
         if(_OffsetX < -_loc4_ && _loc3_ <= ItemHeight)
         {
            _loc2_ = "SwipeLeft";
         }
         else if(_OffsetX > _loc4_ && _loc3_ <= ItemHeight)
         {
            _loc2_ = "SwipeRight";
         }
         this.dispatchEvent(new Event(_loc2_));
         _OffsetY = 0;
         _OffsetX = 0;
      }
      
      public function Update() : void
      {
      }
      
      public function Dispose() : void
      {
         this.removeEventListener("removedFromStage",OnRemovedFromStage);
         if(this.hasEventListener("mouseDown"))
         {
            this.removeEventListener("mouseDown",OnMouseDown);
         }
         if(WordOn.Instance.stage.hasEventListener("mouseMove"))
         {
            WordOn.Instance.stage.removeEventListener("mouseMove",OnMouseMove);
         }
         if(WordOn.Instance.stage.hasEventListener("mouseUp"))
         {
            WordOn.Instance.stage.removeEventListener("mouseUp",OnMouseUp);
         }
         _ScrollingList = null;
         if(_Content != null && this.contains(_Content))
         {
            this.removeChild(_Content);
         }
         _Content = null;
      }
   }
}
