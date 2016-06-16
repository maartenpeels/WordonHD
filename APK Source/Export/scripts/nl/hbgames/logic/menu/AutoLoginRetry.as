package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.SWRVETracker;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.ui.popups.MessageBox;
   
   public class AutoLoginRetry extends Logic
   {
       
      private var _BtnRetry:BigButton;
      
      private var _BtnLogout:BigButton;
      
      public function AutoLoginRetry()
      {
         super(new libAutoLoginRetry_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _BtnRetry = new BigButton(_Content.btnRetry,OnRetry,Localization.Get("autologin_btn_retry",ClientData.Instance.Player.Name));
         _BtnLogout = new BigButton(_Content.btnLogout,OnLogout,Localization.Get("autologin_btn_logout"));
         _Content.lblTitle.htmlText = Localization.Get("autologin_title");
         _Content.lblMessage.htmlText = Localization.Get("autologin_help_message");
         _Content.lblLogoutMessage.htmlText = Localization.Get("autologin_logout_message");
         _BtnLogout.Content.alpha = 0.6;
         _Content.mcFBIcon.visible = ClientData.Instance.IsFacebookUser;
         SWRVETracker.Instance.TrackCustomEvent("application.login.failed");
      }
      
      private function OnRetry(param1:MouseEvent) : void
      {
         WaitBox.Show();
         ClientData.Instance.AutoLogin();
      }
      
      private function OnLogout(param1:MouseEvent) : void
      {
      }
      
      private function OnProceedLogout() : void
      {
         ClientData.Instance.Logout();
      }
      
      override public function Dispose() : void
      {
         _BtnRetry.Dispose();
         _BtnRetry = null;
         _BtnLogout.Dispose();
         _BtnLogout = null;
         super.Dispose();
      }
   }
}
