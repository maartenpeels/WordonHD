package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.ui.buttons.TextButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.TextfieldUtil;
   import flash.events.MouseEvent;
   import nl.hbgames.utils.RegularExpression;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.MD5;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.LogicManager;
   
   public class ExistingUserPanel extends BasePanel
   {
       
      private var _BtnContinue:BigButton;
      
      private var _BtnForgotPassword:TextButton;
      
      private var _Succeeded:Boolean;
      
      private var _SuccessCallback:Function;
      
      private var _DefaultPassText:String;
      
      private var _Hash:String = "";
      
      public function ExistingUserPanel(param1:Function)
      {
         _SuccessCallback = param1;
         _Succeeded = false;
         super(new libExistingUserScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _BtnContinue = new BigButton(_Content.btnContinue,OnContinueClick,Localization.Get("general_button_continue"));
         _BtnForgotPassword = new TextButton(_Content.btnForgotPassword,OnForgotPasswordClick,"<u>" + Localization.Get("existing_user_forgot_password") + "</u>");
         var _loc1_:* = Localization.Get("existing_user_welcome");
         _Content.lblWelcomeBottom.text = _loc1_;
         _Content.lblWelcomeTop.htmlText = _loc1_;
         _Content.txtEmail.htmlText = Localization.Get("new_user_email");
         _Content.txtEmail.restrict = null;
         _Content.txtEmail.maxChars = 255;
         _DefaultPassText = Localization.Get("existing_user_type_password");
         _Content.txtPassword.htmlText = _DefaultPassText;
         _Content.txtPassword.maxChars = 64;
         TextfieldUtil.Register(_Content.txtEmail,"email",true,false);
         TextfieldUtil.Register(_Content.txtPassword,"default",true,true);
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
         _BtnContinue.Disable();
         _BtnForgotPassword.Disable();
         _Succeeded = false;
      }
      
      private function OnContinueClick(param1:MouseEvent) : void
      {
         e = param1;
         var email:String = _Content.txtEmail.text;
         var pass:String = _Content.txtPassword.text;
         if(!RegularExpression.EMAIL.test(email))
         {
            return;
            §§push(new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_email"),false,true,function():void
            {
               _Content.mcAttention1.gotoAndPlay(2);
            }));
         }
         else if(pass.length < 4 || pass == _DefaultPassText)
         {
            return;
            §§push(new MessageBox(Localization.Get("whoops"),Localization.Get("invalid_password_length",4),false,true,function():void
            {
               _Content.mcAttention2.gotoAndPlay(2);
            }));
         }
         else
         {
            WaitBox.Show();
            _Hash = MD5.encrypt(_Content.txtPassword.text + "ohf87ewyr87wfhj");
            ClientData.Instance.Player.Email = email;
            PHPWrapper.Login(OnUserLoginResult,email,_Hash);
            return;
         }
      }
      
      private function OnForgotPasswordClick(param1:MouseEvent) : void
      {
         e = param1;
         var email:String = _Content.txtEmail.text;
         if(!RegularExpression.EMAIL.test(email))
         {
            return;
            §§push(new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_email_password_recovery"),false,true,function():void
            {
               _Content.mcAttention1.gotoAndPlay(2);
            }));
         }
         else
         {
            WaitBox.Show();
            ClientData.Instance.Player.Email = email;
            PHPWrapper.ForgotPassword(OnForgotPasswordHandled,email);
            return;
         }
      }
      
      private function OnForgotPasswordHandled(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            new MessageBox(Localization.Get("awesome"),Localization.Get("forgot_password_request_success"));
         }
         else if(param1.error == 8)
         {
            new MessageBox(Localization.Get("sorry"),Localization.Get("forgot_password_request_unknown_user",_Content.txtEmail.text));
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("forgot_password_request_failed"));
         }
      }
      
      private function OnUserLoginResult(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            ClientData.Instance.PasswordHash = _Hash;
            ClientData.Instance.Login(function():void
            {
               _Succeeded = true;
               Close();
            },response);
         }
         else if(response.error == 25)
         {
            new MessageBox(Localization.Get("sorry"),Localization.Get("email_use_facebook_instead"),false,true,function():void
            {
               PanelManager.Instance.CloseAll();
               LogicManager.Instance.SetState("Welcome",null,"AnimRight");
            });
         }
         else
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_credentials"),false);
         }
      }
      
      override protected function OnClosed() : void
      {
         if(_Succeeded)
         {
            _SuccessCallback();
         }
         super.OnClosed();
      }
      
      override public function Dispose() : void
      {
         TextfieldUtil.Unregister(_Content.txtPassword);
         TextfieldUtil.Unregister(_Content.txtEmail);
         _BtnContinue.Dispose();
         _BtnContinue = null;
         _BtnForgotPassword.Dispose();
         _BtnForgotPassword = null;
         _SuccessCallback = null;
         _DefaultPassText = null;
         super.Dispose();
      }
   }
}
