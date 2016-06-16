package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.ui.panels.ExistingUserPanel;
   import nl.hbgames.ui.panels.NewUserPanel;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.utils.Response;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.popups.MessageBox;
   
   public class LoginByEmailLogic extends Logic
   {
       
      private var _BtnLogin:BigButton;
      
      private var _BtnSignup:BigButton;
      
      private var _BtnFacebookLogin:BigButton;
      
      public function LoginByEmailLogic()
      {
         super(new libLoginByEmailScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _BtnLogin = new BigButton(_Content.btnLogin,OnLoginClick,Localization.Get("email_button_login"));
         _BtnSignup = new BigButton(_Content.btnSignup,OnSignupClick,Localization.Get("email_button_signup"));
         _BtnFacebookLogin = new BigButton(_Content.btnFacebookLogin,OnFacebookClick,Localization.Get("general_button_facebook"));
         _Content.lblEmailOption.htmlText = Localization.Get("email_login_choose_option");
         _Content.lblOptionOr.htmlText = Localization.Get("email_login_option_divider");
         _Content.lblOrConnectWithFacebook.htmlText = Localization.Get("email_or_connect_with_facebook");
         _Content.lblFacebookIsFastest.htmlText = Localization.Get("welcome_facebook_note");
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         LogicManager.Instance.SetState("Welcome",null,"AnimRight");
      }
      
      private function OnLoginClick(param1:MouseEvent) : void
      {
      }
      
      private function OnSignupClick(param1:MouseEvent) : void
      {
      }
      
      private function OnProcessResult(param1:int = 2) : void
      {
         switch(param1)
         {
            case 0:
               break;
            case 1:
               new ExistingUserPanel(OnProcessResult);
               break;
            case 2:
               LogicManager.Instance.SetState("GameOverview",null,"AnimLeft");
               break;
         }
      }
      
      private function OnFacebookClick(param1:MouseEvent) : void
      {
         WaitBox.Show();
         FBWrapper.Connect(OnFacebookInitResult);
      }
      
      private function OnFacebookInitResult(param1:Response) : void
      {
         if(param1.isSuccess)
         {
            PHPWrapper.LoginWithFacebook(OnFacebookLoginResult,ClientData.Instance.FacebookToken);
         }
         else
         {
            WaitBox.Hide();
         }
      }
      
      private function OnFacebookLoginResult(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            ClientData.Instance.Login(function():void
            {
               LogicManager.Instance.SetState("GameOverview",null,"AnimLeft");
            },response);
         }
         else
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("could_not_login"),true);
         }
      }
      
      override public function Dispose() : void
      {
         _BtnLogin.Dispose();
         _BtnLogin = null;
         _BtnSignup.Dispose();
         _BtnSignup = null;
         _BtnFacebookLogin.Dispose();
         _BtnFacebookLogin = null;
         super.Dispose();
      }
   }
}
