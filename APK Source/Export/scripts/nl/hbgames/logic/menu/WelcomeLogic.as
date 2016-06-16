package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.utils.Response;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.net.SWRVETracker;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.FBWrapper;
   
   public class WelcomeLogic extends Logic
   {
       
      private var _BtnFacebookLogin:BigButton;
      
      private var _BtnEmailLogin:BigButton;
      
      private var _BtnGuestLogin:BigButton;
      
      public function WelcomeLogic()
      {
         super(new libWelcomeScreen_Layouts());
      }
      
      private static function OnFacebookInitResult(param1:Response) : void
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
      
      private static function OnFacebookLoginResult(param1:Object) : void
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
            ClientData.Instance.ResetFacebookData();
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("could_not_login"),true);
         }
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _BtnFacebookLogin = new BigButton(_Content.btnFacebookLogin,OnFacebookClick,Localization.Get("general_button_facebook"));
         _BtnEmailLogin = new BigButton(_Content.btnEmailLogin,OnEmailClick,Localization.Get("welcome_email_button"));
         _BtnGuestLogin = new BigButton(_Content.btnGuestLogin,OnGuestClick,Localization.Get("welcome_guest_button"));
         _Content.lblWelcome.htmlText = Localization.Get("welcome");
         _Content.lblConnectWithFacebook.htmlText = Localization.Get("welcome_connect_with_facebook");
         _Content.lblFacebookIsFastest.htmlText = Localization.Get("welcome_facebook_is_fastest") + "\n" + Localization.Get("welcome_facebook_note");
         _Content.lblDontHaveFacebook.htmlText = Localization.Get("welcome_no_facebook");
         _BtnGuestLogin.Content.alpha = 0.6;
         SWRVETracker.Instance.TrackCustomEvent("application.start");
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
      }
      
      private function OnFacebookClick(param1:MouseEvent) : void
      {
         WaitBox.Show();
         FBWrapper.Connect(OnFacebookInitResult);
      }
      
      private function OnEmailClick(param1:MouseEvent) : void
      {
         LogicManager.Instance.SetState("EmailLogin",null,"AnimLeft");
      }
      
      private function OnGuestClick(param1:MouseEvent) : void
      {
         WaitBox.Show();
         if(ClientData.Instance.IsGuest)
         {
            ClientData.Instance.AutoLogin();
         }
         else
         {
            PHPWrapper.CreateGuest(OnGuestCreated);
         }
      }
      
      private function OnGuestCreated(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            ClientData.Instance.Login(function():void
            {
               LogicManager.Instance.SetState("GameOverview");
            },response,true);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_create_guest"),true);
         }
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         _BtnFacebookLogin.Dispose();
         _BtnFacebookLogin = null;
         _BtnEmailLogin.Dispose();
         _BtnEmailLogin = null;
         _BtnGuestLogin.Dispose();
         _BtnGuestLogin = null;
         super.Dispose();
      }
   }
}
