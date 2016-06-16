package nl.hbgames.managers
{
   import flash.display.Sprite;
   import nl.hbgames.ui.popups.BasePopup;
   import flash.display.Bitmap;
   import nl.hbgames.utils.Debugger;
   import com.greensock.TweenLite;
   import nl.hbgames.events.PopupEvent;
   
   public class PopupManager extends Sprite
   {
      
      private static var _Instance:PopupManager = new PopupManager();
       
      private var _Queue:Vector.<BasePopup>;
      
      private var _Popups:Vector.<BasePopup>;
      
      private var _ActivePopup:BasePopup;
      
      private var _CoverVisible:Boolean = false;
      
      private var _Cover:Bitmap;
      
      public function PopupManager()
      {
         super();
         if(_Instance == null)
         {
            _Instance = this;
            _Queue = new Vector.<BasePopup>();
            _Popups = new Vector.<BasePopup>();
         }
         else
         {
            Debugger.Instance.Write("[PopupManager] Class is singleton!",true);
         }
      }
      
      public static function get Instance() : PopupManager
      {
         return _Instance;
      }
      
      public function get PopupCount() : int
      {
         return _Popups.length;
      }
      
      public function get QueueSize() : int
      {
         return _Queue.length;
      }
      
      public function get ActivePopup() : BasePopup
      {
         return _ActivePopup;
      }
      
      public function get isActive() : Boolean
      {
         return _Popups.length > 0;
      }
      
      public function get IsCoverVisible() : Boolean
      {
         return _CoverVisible;
      }
      
      public function get IsBlocking() : Boolean
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Popups.length)
         {
            if(_Popups[_loc1_].BlockInteraction)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function Add(param1:BasePopup, param2:Boolean = false) : Boolean
      {
         var _loc3_:int = _Popups.indexOf(param1);
         if(_loc3_ >= 0)
         {
            Debugger.Instance.Write("[PopupManager::Add] Popup already added to the PopupManager.",true);
            return false;
         }
         if(_Popups.length > 0 && !param2)
         {
            param1.Initialize();
            _Queue.push(param1);
            Debugger.Instance.Write("[PopupManager::Add] Popup moved to queue. (length: " + _Queue.length + ")");
         }
         else
         {
            param1.Initialize();
            ShowPopup(param1);
         }
         return true;
      }
      
      public function ForceDisplayFromQueue(param1:BasePopup) : void
      {
         if(_Queue.indexOf(param1) >= 0)
         {
            RemoveFromQueue(param1,false);
            ShowPopup(param1);
         }
         else
         {
            Debugger.Instance.Write("[PopupManager::ForceDisplay] Popup has to be added to the queue first!",true);
         }
      }
      
      public function Remove(param1:BasePopup) : Boolean
      {
         var _loc4_:* = 0;
         var _loc2_:int = _Popups.indexOf(param1);
         if(_loc2_ == -1)
         {
            Debugger.Instance.Write("[PopupManager::Remove] Popup doesn\'t exist in the PopupManager.");
            return false;
         }
         param1.Dispose();
         HidePopup(param1);
         var param1:BasePopup = null;
         _ActivePopup = null;
         var _loc3_:* = false;
         _loc4_ = 0;
         while(_loc4_ < _Popups.length)
         {
            if(_loc4_ == _Popups.length - 1)
            {
               _ActivePopup = _Popups[_loc4_];
            }
            if(_Popups[_loc4_].ShowCover)
            {
               _loc3_ = true;
            }
            _loc4_++;
         }
         if(!_loc3_)
         {
            if(_CoverVisible)
            {
               TweenLite.killTweensOf(_Cover);
               this.removeChild(_Cover);
               _CoverVisible = false;
            }
         }
         this.dispatchEvent(new PopupEvent("PopupClosedEvent"));
         UpdateQueue();
         return true;
      }
      
      public function RemoveFromQueue(param1:BasePopup, param2:Boolean = true) : void
      {
         var _loc3_:int = _Queue.indexOf(param1);
         if(_loc3_ == -1)
         {
            Debugger.Instance.Write("[PopupManager::RemoveFromQueue] Popup doesn\'t exist in the popup queue.",true);
            return;
         }
         _Queue.splice(_loc3_,1);
         if(param2)
         {
            param1.Dispose();
            var param1:BasePopup = null;
         }
      }
      
      public function RemoveAll() : void
      {
         while(_Popups.length > 0)
         {
            _Popups[0].Dispose();
         }
         while(_Queue.length > 0)
         {
            RemoveFromQueue(_Queue[0]);
         }
         if(_CoverVisible)
         {
            TweenLite.killTweensOf(_Cover);
            this.removeChild(_Cover);
            _CoverVisible = false;
         }
         _ActivePopup = null;
         this.dispatchEvent(new PopupEvent("AllPopupsClosedEvent"));
      }
      
      public function BringToFront(param1:BasePopup) : void
      {
         this.setChildIndex(param1,this.numChildren - 1);
      }
      
      public function IsVisible(param1:BasePopup) : Boolean
      {
         var _loc2_:* = 0;
         if(this.contains(param1))
         {
            _loc2_ = this.getChildIndex(param1);
            if(this.numChildren - 1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      private function UpdateQueue() : void
      {
         var _loc1_:* = null;
         if(_Queue.length == 0 && _Popups.length == 0)
         {
            this.dispatchEvent(new PopupEvent("AllPopupsClosedEvent"));
            return;
         }
         if(_Queue.length > 0)
         {
            _loc1_ = _Queue.shift();
            ShowPopup(_loc1_);
         }
      }
      
      private function ShowPopup(param1:BasePopup) : void
      {
         if(!_CoverVisible && param1.ShowCover)
         {
            if(_Cover == null)
            {
               _Cover = new Bitmap(AssetManager.BackgroundCover);
            }
            this.addChildAt(_Cover,0);
            _Cover.alpha = 0;
            TweenLite.to(_Cover,0.3,{"alpha":1});
            _CoverVisible = true;
         }
         _Popups.push(param1);
         _ActivePopup = param1;
         this.dispatchEvent(new PopupEvent("PopupAddedEvent"));
         this.addChild(param1);
         param1.OnShow();
      }
      
      private function HidePopup(param1:BasePopup) : void
      {
         var _loc2_:int = _Popups.indexOf(param1);
         if(_loc2_ != -1)
         {
            _Popups.splice(_loc2_,1);
            this.removeChild(param1);
            param1.OnHide();
         }
      }
      
      public function Update() : void
      {
         if(_ActivePopup != null)
         {
            _ActivePopup.Update();
         }
      }
      
      public function Search(param1:String, param2:*) : Boolean
      {
         var _loc3_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < _Popups.length)
         {
            if(_Popups[_loc3_].hasOwnProperty(param1) && _Popups[_loc3_][param1] == param2)
            {
               return true;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _Queue.length)
         {
            if(_Queue[_loc3_].hasOwnProperty(param1) && _Queue[_loc3_][param1] == param2)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function ContainsType(param1:Class, param2:String = null, param3:Boolean = true) : Boolean
      {
         var _loc4_:* = 0;
         _loc4_ = 0;
         while(_loc4_ < _Popups.length)
         {
            if(_Popups[_loc4_] is param1 && param2 == null || param2 == _Popups[_loc4_].Descriptor)
            {
               return true;
            }
            _loc4_++;
         }
         if(param3)
         {
            _loc4_ = 0;
            while(_loc4_ < _Queue.length)
            {
               if(_Queue[_loc4_] is param1)
               {
                  return true;
               }
               _loc4_++;
            }
         }
         return false;
      }
      
      public function Dispose() : void
      {
         var _loc1_:* = null;
         while(_Popups.length > 0)
         {
            _loc1_ = _Popups.shift();
            HidePopup(_loc1_);
            _loc1_.Dispose();
            _loc1_ = null;
         }
         if(_CoverVisible)
         {
            TweenLite.killTweensOf(_Cover);
            this.removeChild(_Cover);
            _CoverVisible = false;
         }
         _Popups = null;
         _Instance = null;
      }
   }
}
