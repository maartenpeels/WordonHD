package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.logic.menu.GameOverviewLogic;
   
   public class IntroductionBox extends BasePopup
   {
       
      private var _ButtonClose:PopupCloseButton;
      
      private var _ButtonTutorial:PopupButton;
      
      private var _ButtonPromo:PopupButton;
      
      private var _PromoEnabled:Boolean;
      
      public function IntroductionBox()
      {
         super(new libIntroductionBox(),true,true,true,true,"sfxPopupStar");
      }
      
      override public function Initialize() : void
      {
         _Content.lblTitle.htmlText = Localization.Get("introduction_welcome_title");
         _Content.lblMessage.htmlText = Localization.Get("introduction_welcome_message");
         _Content.lblPromo.htmlText = Localization.Get("introduction_promo_message");
         _Content.lblTutorial.htmlText = Localization.Get("introduction_tutorial_message");
         _ButtonTutorial = new PopupButton(_Content.btnTutorial,OnTutorialClick,Localization.Get("introduction_btnlabel_tutorial"));
         _ButtonPromo = new PopupButton(_Content.btnPromo,OnPromoClick,Localization.Get("introduction_btnlabel_promocode"));
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnCancelClick);
         super.Initialize();
      }
      
      private function OnPromoClick(param1:MouseEvent) : void
      {
         LogicManager.Instance.SetState("Promoredeem",{"showIntroduction":true});
         Remove();
      }
      
      private function OnTutorialClick(param1:MouseEvent) : void
      {
         LogicManager.Instance.SetState("GameTutorial");
         Remove();
      }
      
      private function OnCancelClick(param1:MouseEvent = null) : void
      {
         PHPWrapper.HasSeenTutorial();
         Remove();
         if(LogicManager.Instance.CurLogic is GameOverviewLogic)
         {
            (LogicManager.Instance.CurLogic as GameOverviewLogic).ShowNewcomerTip();
         }
      }
      
      override public function OnBackHandler() : void
      {
         OnCancelClick(null);
      }
      
      override public function Dispose() : void
      {
         _ButtonTutorial.Dispose();
         _ButtonPromo.Dispose();
         _ButtonClose.Dispose();
         _ButtonTutorial = null;
         _ButtonPromo = null;
         _ButtonClose = null;
         super.Dispose();
      }
   }
}
