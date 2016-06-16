package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.SWRVETracker;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.ShareManager;
   import nl.hbgames.managers.LogicManager;
   
   public class PromoshareLogic extends Logic
   {
       
      private var _BtnShare:BigButton;
      
      public function PromoshareLogic()
      {
         super(new libPromoshare_Layouts(),true,false);
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblSpreadTitle.htmlText = Localization.Get("promoshare_spread_title");
         _Content.lblSpreadMessage.htmlText = Localization.Get("promoshare_spread_message");
         _Content.lblYourInviteCode.htmlText = Localization.Get("promoshare_your_invite_code");
         _BtnShare = new BigButton(_Content.btnPromote,OnShare,Localization.Get("promoshare_btn_share"));
         if(ClientData.Instance.InviteCode)
         {
            _Content.lblCode.text = ClientData.Instance.InviteCode.split("").join(" ");
         }
         else
         {
            _Content.lblCode.text = Localization.Get("promoshare_no_invite_code");
            _BtnShare.Disable();
         }
         SWRVETracker.Instance.TrackCustomEvent("promoshare.viewed");
      }
      
      private function OnShare(param1:MouseEvent) : void
      {
         SWRVETracker.Instance.TrackCustomEvent("promoshare.code.shared");
         ShareManager.SharePromoMessage();
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
         LogicManager.Instance.SetState(LogicManager.Instance.PrevState,LogicManager.Instance.PrevData,"AnimRight");
      }
      
      override public function Dispose() : void
      {
         _BtnShare.Dispose();
         _BtnShare = null;
         super.Dispose();
      }
   }
}
