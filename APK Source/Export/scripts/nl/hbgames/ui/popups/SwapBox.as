package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButtonLarge;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.AppData;
   import flash.events.MouseEvent;
   
   public class SwapBox extends BasePopup
   {
       
      private var _Callback:Function;
      
      private var _AllowFullSwap:Boolean;
      
      private var _BtnSwapAll:PopupButtonLarge;
      
      private var _BtnSwapTwo:PopupButtonLarge;
      
      private var _BtnClose:PopupCloseButton;
      
      public function SwapBox(param1:Function, param2:Boolean)
      {
         _Callback = param1;
         _AllowFullSwap = param2;
         super(new libSwapBox());
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = Localization.Get("action_newswap_title");
         _Content.lblMessage.text = Localization.Get("action_newswap_body");
         _Content.lblCost.text = AppData.Instance.CostSwapAll;
         _Content.lblCost.mouseEnabled = false;
         _BtnSwapAll = new PopupButtonLarge(_Content.btnSwapAll,OnSwapAll,Localization.Get("action_newswap_all"));
         _BtnSwapTwo = new PopupButtonLarge(_Content.btnSwap,OnSwapTwo,Localization.Get("action_newswap_two"));
         _BtnClose = new PopupCloseButton(_Content.btnClose,OnCancel);
         if(!_AllowFullSwap)
         {
            _BtnSwapAll.Disable();
         }
      }
      
      private function OnSwapAll(param1:MouseEvent) : void
      {
         _Callback(true);
         this.Remove();
      }
      
      private function OnSwapTwo(param1:MouseEvent) : void
      {
         _Callback(false);
         this.Remove();
      }
      
      private function OnCancel(param1:MouseEvent = null) : void
      {
         this.Remove();
      }
      
      override public function OnBackHandler() : void
      {
         OnCancel(null);
      }
      
      override public function Dispose() : void
      {
         _BtnSwapAll.Dispose();
         _BtnSwapTwo.Dispose();
         _BtnClose.Dispose();
         _BtnClose = null;
         _BtnSwapAll = null;
         _BtnSwapTwo = null;
         _Callback = null;
         super.Dispose();
      }
   }
}
