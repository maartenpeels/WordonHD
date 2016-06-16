package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.AppData;
   import flash.events.MouseEvent;
   import nl.hbgames.config.Settings;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import nl.hbgames.managers.Serializer;
   
   public class RateBox extends BasePopup
   {
       
      private const LAUNCHES_UNTIL_PROMPT:int = 3;
      
      private const DAYS_UNTIL_PROMPT:int = 1;
      
      private const MAX_REMINDS:int = 1;
      
      private var _ButtonOK:PopupButton;
      
      private var _ButtonCancel:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      public function RateBox()
      {
         var _loc1_:* = NaN;
         if(!AppData.Instance.HasSeenRateBox)
         {
            _loc1_ = AppData.Instance.AppInstallDate + (AppData.Instance.RateBoxRemindAmount + 1) * 1 * 24 * 60 * 60 * 1000;
            if(new Date().getTime() >= _loc1_)
            {
               if(AppData.Instance.AppLaunches >= 3)
               {
                  super(new libRateBox());
               }
            }
         }
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.htmlText = "<b>" + Localization.Get("rate_box_title") + "</b>";
         _Content.lblTitleShadow.htmlText = "<b>" + Localization.Get("rate_box_title") + "</b>";
         _Content.lblMessage.htmlText = Localization.Get("rate_box_desc");
         _ButtonOK = new PopupButton(_Content.btnOK,OnRateClick,Localization.Get("rate_box_continue"));
         if(AppData.Instance.RateBoxRemindAmount < 1)
         {
            _ButtonCancel = new PopupButton(_Content.btnCancel,OnRemindClick,Localization.Get("rate_box_remind"),"sfxButtonClose");
            _ButtonClose = new PopupCloseButton(_Content.btnClose,OnRemindClick);
         }
         else
         {
            _ButtonCancel = new PopupButton(_Content.btnCancel,OnCloseClick,Localization.Get("rate_box_never"),"sfxButtonClose");
            _ButtonClose = new PopupCloseButton(_Content.btnClose,OnCloseClick);
         }
      }
      
      private function OnRateClick(param1:MouseEvent) : void
      {
         FlagSeen();
         if(Settings.IS_IOS)
         {
            navigateToURL(new URLRequest("itms://itunes.com/apps/wordonhd"),"_blank");
         }
         else if(Settings.IS_ANDROID)
         {
            navigateToURL(new URLRequest("market://details?id=air.com.flaregames.wordon"),"_blank");
         }
         this.Remove();
      }
      
      private function OnRemindClick(param1:MouseEvent = null) : void
      {
         §§dup(AppData.Instance).RateBoxRemindAmount++;
         this.Remove();
      }
      
      private function OnCloseClick(param1:MouseEvent = null) : void
      {
         FlagSeen();
         this.Remove();
      }
      
      private function FlagSeen() : void
      {
         AppData.Instance.HasSeenRateBox = true;
      }
      
      override public function OnBackHandler() : void
      {
         if(AppData.Instance.RateBoxRemindAmount < 1)
         {
            OnRemindClick(null);
         }
         else
         {
            OnCloseClick(null);
         }
      }
      
      override public function Dispose() : void
      {
         Serializer.Instance.Serialize();
         _ButtonOK.Dispose();
         _ButtonOK = null;
         _ButtonCancel.Dispose();
         _ButtonCancel = null;
         _ButtonClose.Dispose();
         _ButtonClose = null;
         super.Dispose();
      }
   }
}
