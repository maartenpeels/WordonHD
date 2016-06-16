package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.checkboxes.Checkbox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.GameInfoData;
   import nl.hbgames.utils.Debugger;
   
   public class WelcomeBox extends BasePopup
   {
       
      private var _Avatar:AvatarButton;
      
      private var _BtnContinue:PopupButton;
      
      private var _BtnPromo:PopupButton;
      
      private var _Checkbox:Checkbox;
      
      private var _PlayTutorial:Boolean;
      
      public function WelcomeBox()
      {
         super(new libWelcomeBox());
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.htmlText = Localization.Get("welcome_invite_title");
         _Content.lblInvitee.htmlText = Localization.Get("welcome_invite_invitee","<b>" + ClientData.Instance.InviteeFirstName + "</b>");
         _Content.lblMessage.htmlText = Localization.Get("welcome_invite_message");
         _Content.lblPromo.htmlText = Localization.Get("welcome_invite_promo_message");
         _Content.btnCheck.label.htmlText = Localization.Get("welcome_invite_skip_tutorial","<b>" + ClientData.Instance.InviteeFirstName + "</b>");
         _Avatar = new AvatarButton(false,ClientData.Instance.InviteeID,true,ClientData.Instance.InviteeBorderID);
         _Content.mcPicture.addChild(_Avatar);
         _Content.mcFrame.visible = ClientData.Instance.InviteeBorderID == 0;
         _BtnContinue = new PopupButton(_Content.btnContinue,OnContinueClick,Localization.Get("welcome_invite_tutorial_play"));
         _BtnPromo = new PopupButton(_Content.btnPromo,OnPromoClick,Localization.Get("introduction_btnlabel_promocode"));
         _Checkbox = new Checkbox(_Content.btnCheck,OnCheckToggle);
         _PlayTutorial = true;
      }
      
      private function OnCheckToggle(param1:Boolean) : void
      {
         _PlayTutorial = !param1;
         if(_PlayTutorial)
         {
            _BtnContinue.SetLabel(Localization.Get("welcome_invite_tutorial_play"));
         }
         else
         {
            _BtnContinue.SetLabel(Localization.Get("welcome_invite_versus_play"));
         }
      }
      
      private function OnPromoClick(param1:MouseEvent) : void
      {
         LogicManager.Instance.SetState("Promoredeem",{"showWelcome":true});
         Remove();
      }
      
      private function OnContinueClick(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         PHPWrapper.HasSeenTutorial();
         if(_PlayTutorial)
         {
            LogicManager.Instance.SetState("GameTutorial");
         }
         else
         {
            _loc2_ = ClientData.Instance.GameListData.GetGameByID(ClientData.Instance.InviteeGameID);
            if(_loc2_)
            {
               LogicManager.Instance.SetState("GameVsPlayer",{
                  "gameID":_loc2_.GameID,
                  "languageID":_loc2_.DictionaryLanguage,
                  "timeLeftInSec":_loc2_.TimeLeftInSeconds
               });
            }
            else
            {
               Debugger.Instance.Write("[WelcomeBox::OnContinueClick] Game \'" + ClientData.Instance.InviteeGameID + "\' not found!",true);
            }
            ClientData.Instance.ResetInviteeData();
         }
         this.Remove();
      }
      
      override public function Dispose() : void
      {
         _BtnContinue.Dispose();
         _BtnContinue = null;
         _BtnPromo.Dispose();
         _BtnPromo = null;
         _Checkbox.Dispose();
         _Checkbox = null;
         _Avatar.Dispose();
         _Content.mcPicture.removeChild(_Avatar);
         _Avatar = null;
         super.Dispose();
      }
   }
}
