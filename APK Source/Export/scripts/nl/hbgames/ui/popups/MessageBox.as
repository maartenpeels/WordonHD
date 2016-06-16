package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.utils.TextfieldUtil;
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.Time;
   import flash.events.MouseEvent;
   import nl.hbgames.WordOn;
   import flash.display.MovieClip;
   
   public class MessageBox extends BasePopup
   {
       
      private var _Title:String = "";
      
      private var _Message:String = "";
      
      private var _CustomOKLabel:String = null;
      
      private var _CustomCancelLabel:String = null;
      
      private var _CallbackOK:Function = null;
      
      private var _CallbackCancel:Function = null;
      
      private var _EnableOK:Boolean = false;
      
      private var _ShowCancel:Boolean = false;
      
      private var _CancelAsClose:Boolean = false;
      
      private var _ButtonOK:PopupButton;
      
      private var _ButtonCancel:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      private var _Delay:Number;
      
      private var _DelayInSecs:int;
      
      private var _AutoRemove:Boolean;
      
      public function MessageBox(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true, param5:Function = null, param6:Boolean = false, param7:Function = null, param8:Boolean = true, param9:Boolean = false, param10:String = null, param11:String = null)
      {
         var _loc12_:* = null;
         _Title = param1;
         _Message = param2;
         _EnableOK = param4;
         _ShowCancel = param6;
         _CancelAsClose = param9;
         _CallbackOK = param5;
         _CallbackCancel = param7;
         _CustomOKLabel = param10;
         _CustomCancelLabel = param11;
         _AutoRemove = param8;
         if(param3)
         {
            _loc12_ = _ShowCancel?new libMsgBoxErrorOKCancel():new libMsgBoxErrorOK();
         }
         else
         {
            _loc12_ = _ShowCancel?new libMsgBoxOKCancel():new libMsgBoxOK();
         }
         super(_loc12_,param3);
      }
      
      public function get isLocked() : Boolean
      {
         return !_EnableOK && !_ShowCancel;
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.htmlText = "<b>" + _Title + "</b>";
         _Content.lblMessage.htmlText = _Message;
         TextfieldUtil.AlignVertically(_Content.lblMessage);
         _ButtonOK = new PopupButton(_Content.btnOK);
         if(_EnableOK)
         {
            _ButtonOK.Initialize(OnOKClick,_CustomOKLabel == null?Localization.Get("general_button_continue"):_CustomOKLabel);
         }
         else
         {
            _ButtonOK.Disable();
         }
         if(_ShowCancel)
         {
            _ButtonCancel = new PopupButton(_Content.btnCancel,OnCancelClick,_CustomCancelLabel == null?Localization.Get("general_button_cancel"):_CustomCancelLabel,"sfxButtonClose");
            _ButtonClose = new PopupCloseButton(_Content.btnClose,OnCancelClick);
            if(_CancelAsClose)
            {
               _ButtonCancel.Disable(0);
               _ButtonOK.Content.x = -(_ButtonOK.Content.width >> 1);
            }
         }
      }
      
      public function DelayInput(param1:uint) : void
      {
         if(param1 > 0)
         {
            _Delay = param1 / 1000;
            _DelayInSecs = 2147483647;
            if(_ButtonOK != null)
            {
               _ButtonOK.Disable();
            }
            if(_ButtonCancel != null && !_CancelAsClose)
            {
               _ButtonCancel.Disable();
            }
            if(_ButtonClose != null)
            {
               _ButtonClose.Disable();
            }
         }
      }
      
      override public function Update() : void
      {
         var _loc1_:* = 0;
         super.Update();
         if(_Delay > 0)
         {
            _Delay = §§dup()._Delay - Time.DeltaTime;
            _loc1_ = Math.ceil(_Delay);
            if(_loc1_ < _DelayInSecs)
            {
               _DelayInSecs = _loc1_;
               _ButtonOK.SetSuffix(" (" + _DelayInSecs + ")");
            }
            if(_Delay <= 0)
            {
               if(_ButtonOK != null)
               {
                  _ButtonOK.Enable();
                  _ButtonOK.SetSuffix("");
               }
               if(_ButtonCancel != null && !_CancelAsClose)
               {
                  _ButtonCancel.Enable();
               }
               if(_ButtonClose != null)
               {
                  _ButtonClose.Enable();
               }
            }
         }
      }
      
      private function OnOKClick(param1:MouseEvent = null) : void
      {
         if(_CallbackOK != null)
         {
            _CallbackOK();
         }
         if(_AutoRemove)
         {
            Remove();
         }
      }
      
      private function OnCancelClick(param1:MouseEvent = null) : void
      {
         if(_CallbackCancel != null)
         {
            _CallbackCancel();
         }
         if(_AutoRemove)
         {
            Remove();
         }
      }
      
      override public function OnBackHandler() : void
      {
         if(this.isLocked)
         {
            WordOn.Instance.Exit(false);
            return;
         }
         if(_ShowCancel)
         {
            OnCancelClick(null);
         }
         else
         {
            OnOKClick(null);
         }
      }
      
      override public function Dispose() : void
      {
         if(_ButtonOK != null)
         {
            _ButtonOK.Dispose();
            _ButtonOK = null;
         }
         if(_ShowCancel && _ButtonCancel != null && _ButtonClose != null)
         {
            _ButtonCancel.Dispose();
            _ButtonCancel = null;
            _ButtonClose.Dispose();
            _ButtonClose = null;
         }
         _CallbackCancel = null;
         _CallbackOK = null;
         _CustomCancelLabel = null;
         _CustomOKLabel = null;
         _Title = null;
         _Message = null;
         super.Dispose();
      }
   }
}
