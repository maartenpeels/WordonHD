package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.TextfieldUtil;
   import nl.hbgames.net.SWRVETracker;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.promo.HBPromoManager;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.ui.popups.PromoRewardBox;
   import nl.hbgames.ui.popups.IntroductionBox;
   import nl.hbgames.ui.popups.WelcomeBox;
   import nl.hbgames.managers.LogicManager;
   
   public class PromoredeemLogic extends Logic
   {
       
      private var _BtnRedeem:BigButton;
      
      private var _DefaultCodeText:String;
      
      private var _ActionTypeOnExit:int = 0;
      
      public function PromoredeemLogic()
      {
         super(new libPromoredeem_Layouts(),true,false);
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.htmlText = Localization.Get("promoshare_title");
         _Content.lblRedeemMessage.htmlText = Localization.Get("promoshare_redeem_message");
         _DefaultCodeText = Localization.Get("promoshare_input_text");
         _Content.txtCode.htmlText = _DefaultCodeText;
         _Content.txtCode.restrict = "A-Za-z0-9\\-";
         _Content.txtCode.maxChars = 16;
         _BtnRedeem = new BigButton(_Content.btnRedeem,OnRedeem,Localization.Get("promoshare_btn_redeem"));
         TextfieldUtil.Register(_Content.txtCode,"default",true,false,null,false,"all");
         SWRVETracker.Instance.TrackCustomEvent("promoshare.viewed");
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         if(param1 != null)
         {
            if(param1.showIntroduction)
            {
               _ActionTypeOnExit = 1;
            }
            else if(param1.showWelcome)
            {
               _ActionTypeOnExit = 2;
            }
         }
      }
      
      private function OnRedeem(param1:MouseEvent) : void
      {
         var _loc2_:String = _Content.txtCode.text.toUpperCase();
         if(_loc2_.length > 0 && _loc2_ != _DefaultCodeText.toUpperCase())
         {
            WaitBox.Show();
            if(_loc2_.length <= 5)
            {
               SWRVETracker.Instance.TrackCustomEvent("promoshare.code.promocode_used");
               HBPromoManager.instance.useAPI(OnRedeemResult,ClientData.Instance.Player.ID,_loc2_);
            }
            else
            {
               SWRVETracker.Instance.TrackCustomEvent("promoshare.code.invitecode_used");
               PHPWrapper.RedeemCode(OnRedeemResult,_loc2_);
            }
         }
         else
         {
            new MessageBox(Localization.Get("promoshare_feedback_title"),Localization.Get("promoshare_feedback_error_no_code"));
         }
      }
      
      private function OnRedeemResult(param1:Object) : void
      {
         WaitBox.Hide();
         var _loc2_:String = _Content.txtCode.text.toUpperCase();
         if(param1.result == ":)" && param1.rewards != null)
         {
            SWRVETracker.Instance.TrackCustomEvent("promoshare.code.redeemed");
            _Content.txtCode.text = _DefaultCodeText;
            new PromoRewardBox(param1,null,null,OnBackClick);
         }
         else
         {
            var _loc3_:* = param1.error;
            if(32 !== _loc3_)
            {
               if(6 !== _loc3_)
               {
                  if(33 !== _loc3_)
                  {
                     if(4 !== _loc3_)
                     {
                        if(34 !== _loc3_)
                        {
                           if(5 !== _loc3_)
                           {
                              SWRVETracker.Instance.TrackCustomEvent("promoshare.code.failed");
                              new MessageBox(Localization.Get("promoshare_feedback_title"),Localization.Get("promoshare_feedback_error_unknown",_loc2_),true);
                           }
                        }
                        SWRVETracker.Instance.TrackCustomEvent("promoshare.code.invalid");
                        new MessageBox(Localization.Get("promoshare_feedback_title"),Localization.Get("promoshare_feedback_already_redeemed",_loc2_),true);
                     }
                  }
                  SWRVETracker.Instance.TrackCustomEvent("promoshare.code.invalid");
                  new MessageBox(Localization.Get("promoshare_feedback_title"),Localization.Get("promoshare_feedback_error_only_new",_loc2_),true);
               }
            }
            SWRVETracker.Instance.TrackCustomEvent("promoshare.code.invalid");
            new MessageBox(Localization.Get("promoshare_feedback_title"),Localization.Get("promoshare_feedback_error_invalid",_loc2_),true);
         }
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
         switch(_ActionTypeOnExit - 1)
         {
            case 0:
               new IntroductionBox();
               break;
            case 1:
               new WelcomeBox();
               break;
         }
         LogicManager.Instance.SetState(LogicManager.Instance.PrevState,LogicManager.Instance.PrevData,"AnimRight");
      }
      
      override public function Dispose() : void
      {
         _BtnRedeem.Dispose();
         _BtnRedeem = null;
         _DefaultCodeText = null;
         TextfieldUtil.Unregister(_Content.txtCode);
         super.Dispose();
      }
   }
}
