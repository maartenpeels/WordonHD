package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.utils.TextfieldUtil;
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   import nl.hbgames.data.ClientData;
   
   public class GuestBox extends BasePopup
   {
       
      private var _Title:String = "";
      
      private var _Message:String = "";
      
      private var _ButtonFB:PopupButton;
      
      private var _ButtonContinue:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      public function GuestBox(param1:String, param2:String)
      {
         _Title = param1;
         _Message = param2;
         super(new libMsgBoxOKCancel());
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.htmlText = "<b>" + _Title + "</b>";
         _Content.lblMessage.htmlText = _Message;
         TextfieldUtil.AlignVertically(_Content.lblMessage);
         _ButtonContinue = new PopupButton(_Content.btnCancel,OnOKClick,Localization.Get("guest_welcome_ask_later"));
         _ButtonFB = new PopupButton(_Content.btnOK,OnFBClick,Localization.Get("guest_welcome_connect_fb"));
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnOKClick);
      }
      
      private function OnOKClick(param1:MouseEvent) : void
      {
         Remove();
      }
      
      private function OnFBClick(param1:MouseEvent) : void
      {
         ClientData.Instance.MigrateToFacebook();
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         Remove();
      }
      
      override public function Dispose() : void
      {
         _ButtonContinue.Dispose();
         _ButtonContinue = null;
         _ButtonFB.Dispose();
         _ButtonFB = null;
         _ButtonClose.Dispose();
         _ButtonClose = null;
         super.Dispose();
      }
   }
}
