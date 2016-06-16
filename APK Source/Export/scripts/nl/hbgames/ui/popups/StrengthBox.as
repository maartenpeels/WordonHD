package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.AppData;
   import flash.events.MouseEvent;
   import nl.hbgames.logic.game.BaseGame;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.managers.WordOnGoodsManager;
   
   public class StrengthBox extends BasePopup
   {
       
      private var _Callback:Function;
      
      private var _GameID:String;
      
      private var _ButtonOK:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      public function StrengthBox(param1:Function, param2:String)
      {
         _Callback = param1;
         _GameID = param2;
         super(new libStrengthBox());
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.htmlText = Localization.Get("strengthbox_title");
         _Content.lblMessage.htmlText = Localization.Get("strengthbox_body");
         _ButtonOK = new PopupButton(_Content.btnContinue,OnOKClick,Localization.Get("strengthbox_confirm",AppData.Instance.CostCoinBar),"sfxButtonConfirm");
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnCancelClick);
      }
      
      private function OnOKClick(param1:MouseEvent = null) : void
      {
         if(BaseGame.Instance != null)
         {
            WaitBox.Show();
            PHPWrapper.EnableStrengthMeter(OnMeterEnabled,_GameID);
         }
         else
         {
            OnCancelClick(null);
         }
      }
      
      private function OnMeterEnabled(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Inventory.TotalStars = param1.strengthMeter.stars;
            SWRVETracker.Instance.TrackVirtualPurchase(1,"consumable.strengthmeter",AppData.Instance.CostCoinBar,"stars");
            _Callback(param1.strengthMeter.timestamp);
            Remove();
         }
         else if(param1.error == 20)
         {
            Remove();
            WordOnGoodsManager.checkStarFlow(AppData.Instance.CostCoinBar,OnOKClick,Localization.Get("shop_buy_stars_quickly_feature_wordalyzer"));
         }
         else if(param1.error == 12)
         {
            Remove();
            new MessageBox(Localization.Get("whoops"),Localization.Get("shop_already_has_item"));
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("consumable_use_failed"),true);
         }
      }
      
      private function OnCancelClick(param1:MouseEvent = null) : void
      {
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         OnCancelClick(null);
      }
      
      override public function Dispose() : void
      {
         if(_ButtonOK != null)
         {
            _ButtonOK.Dispose();
            _ButtonOK = null;
         }
         if(_ButtonClose != null)
         {
            _ButtonClose.Dispose();
            _ButtonClose = null;
         }
         super.Dispose();
      }
   }
}
