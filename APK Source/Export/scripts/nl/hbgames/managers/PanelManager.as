package nl.hbgames.managers
{
   import flash.display.Sprite;
   import nl.hbgames.ui.panels.BasePanel;
   import flash.display.Bitmap;
   import flash.utils.getQualifiedClassName;
   import nl.hbgames.events.PanelEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.ui.panels.ChatPanel;
   import nl.hbgames.ui.panels.SettingsPanel;
   import nl.hbgames.ui.panels.EditAccountPanel;
   import nl.hbgames.ui.panels.LegalPanel;
   
   public class PanelManager extends Sprite
   {
      
      public static var Instance:PanelManager = null;
       
      private var _Panels:Vector.<BasePanel> = null;
      
      private var _HasFocus:Boolean = false;
      
      private var _CoverVisible:Boolean = false;
      
      private var _Cover:Bitmap = null;
      
      private var _ActivePanel:BasePanel;
      
      public function PanelManager()
      {
         super();
         Instance = this;
         _Panels = new Vector.<BasePanel>();
         _Cover = new Bitmap(AssetManager.BackgroundCover);
         PopupManager.Instance.addEventListener("PopupAddedEvent",CheckFocusState);
         PopupManager.Instance.addEventListener("AllPopupsClosedEvent",CheckFocusState);
         WaitBox.Instance.addEventListener("WaitBoxShow",CheckFocusState);
         WaitBox.Instance.addEventListener("WaitBoxHide",CheckFocusState);
      }
      
      public function get IsActive() : Boolean
      {
         return _Panels.length > 0;
      }
      
      public function get HasFocus() : Boolean
      {
         return _HasFocus;
      }
      
      public function get ActivePanel() : BasePanel
      {
         return _ActivePanel;
      }
      
      public function Add(param1:BasePanel, param2:Boolean = false) : Boolean
      {
         var _loc3_:* = 0;
         if(!param2)
         {
            _loc3_ = 0;
            while(_loc3_ < _Panels.length)
            {
               if(getQualifiedClassName(_Panels[_loc3_]) == getQualifiedClassName(param1))
               {
                  return false;
               }
               _loc3_++;
            }
         }
         if(!_CoverVisible)
         {
            this.addChildAt(_Cover,0);
            _CoverVisible = true;
         }
         _Panels.push(param1);
         if(AssetManager.OverdrawY > 0)
         {
            param1.height = param1.height - AssetManager.OverdrawY;
         }
         this.addChild(param1);
         _ActivePanel = param1;
         this.dispatchEvent(new PanelEvent("PanelAddedEvent"));
         return true;
      }
      
      public function Remove(param1:BasePanel) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         _loc3_ = 0;
         while(_loc3_ < _Panels.length)
         {
            _loc2_ = _Panels[_loc3_];
            if(_loc2_ == param1)
            {
               if(_loc2_.Remove)
               {
                  DisposePanel(_loc3_);
                  _loc3_--;
               }
               else
               {
                  _loc2_.Close();
               }
            }
            _loc3_++;
         }
      }
      
      public function Update() : void
      {
         if(_ActivePanel != null)
         {
            _ActivePanel.Update();
         }
      }
      
      public function CloseAll() : void
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Panels.length)
         {
            _Panels[_loc1_].Close();
            _loc1_++;
         }
      }
      
      public function CloseActive(param1:Boolean = true) : void
      {
         if(_ActivePanel != null)
         {
            if(param1)
            {
               _ActivePanel.OnBackClick();
            }
            else
            {
               _ActivePanel.Close();
            }
         }
      }
      
      private function DisposePanel(param1:int) : void
      {
         _Panels[param1].Dispose();
         this.removeChild(_Panels[param1]);
         _Panels[param1] = null;
         _Panels.splice(param1,1);
         this.dispatchEvent(new PanelEvent("PanelClosedEvent"));
         if(_Panels.length > 0)
         {
            _ActivePanel = _Panels[_Panels.length - 1];
         }
         else
         {
            _ActivePanel = null;
            if(_CoverVisible)
            {
               this.removeChild(_Cover);
               _CoverVisible = false;
            }
            this.dispatchEvent(new PanelEvent("AllPanelsClosedEvent"));
         }
      }
      
      private function CheckFocusState(param1:*) : void
      {
         if(PopupManager.Instance.isActive || WaitBox.IsVisible)
         {
            _HasFocus = false;
         }
         else
         {
            _HasFocus = true;
         }
         var _loc2_:* = _HasFocus;
         this.mouseChildren = _loc2_;
         this.mouseEnabled = _loc2_;
      }
      
      public function DetermineScreenID() : int
      {
         if(_ActivePanel is ChatPanel)
         {
            return 11;
         }
         if(_ActivePanel is SettingsPanel)
         {
            return 10;
         }
         if(_ActivePanel is EditAccountPanel)
         {
            return 12;
         }
         if(_ActivePanel is LegalPanel)
         {
            return 16;
         }
         return 0;
      }
      
      public function ContainsType(param1:Class) : Boolean
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _Panels.length)
         {
            if(_Panels[_loc2_] is param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function Dispose() : void
      {
         var _loc1_:* = 0;
         PopupManager.Instance.removeEventListener("PopupAddedEvent",CheckFocusState);
         PopupManager.Instance.removeEventListener("AllPopupsClosedEvent",CheckFocusState);
         WaitBox.Instance.removeEventListener("WaitBoxShow",CheckFocusState);
         WaitBox.Instance.removeEventListener("WaitBoxHide",CheckFocusState);
         _loc1_ = 0;
         while(_loc1_ < _Panels.length)
         {
            _Panels[_loc1_].Dispose();
            this.removeChild(_Panels[_loc1_]);
            _loc1_++;
         }
         if(_CoverVisible)
         {
            this.removeChild(_Cover);
            _Cover.bitmapData.dispose();
            _Cover = null;
         }
         _Panels = null;
         Instance = null;
      }
   }
}
