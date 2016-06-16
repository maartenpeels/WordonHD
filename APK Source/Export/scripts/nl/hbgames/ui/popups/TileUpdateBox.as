package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.managers.AssetManager;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.PopupManager;
   
   public class TileUpdateBox extends BasePopup
   {
       
      private var _Callback:Function;
      
      private var _AllowContinueAfterFail:Boolean;
      
      private var _ButtonOK:PopupButton;
      
      public function TileUpdateBox(param1:Function, param2:Boolean = false)
      {
         if(!PopupManager.Instance.ContainsType(TileUpdateBox))
         {
            _Callback = param1;
            _AllowContinueAfterFail = param2;
            super(new libTileUpdateBox());
         }
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = Localization.Get("tileupdatebox_title");
         _Content.lblMessage.text = Localization.Get("tileupdatebox_body");
         ShowProgress(0);
         _ButtonOK = new PopupButton(_Content.btnContinue,OnOKClick,Localization.Get("general_button_continue"),"sfxButtonConfirm");
         _ButtonOK.Disable();
         TilesetData.DownloadPackage(OnDownloadStatus,ShowProgress);
      }
      
      private function OnDownloadStatus(param1:Boolean) : void
      {
         if(param1)
         {
            _Content.lblMessage.text = Localization.Get("tileupdatebox_success_body");
            _ButtonOK.Enable();
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("tileupdatebox_error_body"),true,true,_AllowContinueAfterFail?_Callback:null);
            Remove();
         }
      }
      
      private function ShowProgress(param1:Number) : void
      {
         _Content.mcBar.scaleX = param1 * AssetManager.ContentScaleFactor;
         _Content.lblProgress.text = Math.round(param1 * 100) + "%";
      }
      
      private function OnOKClick(param1:MouseEvent) : void
      {
         if(_Callback != null)
         {
            _Callback();
         }
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         super.OnBackHandler();
         if(_ButtonOK.IsEnabled)
         {
            OnOKClick(null);
         }
      }
      
      override public function Dispose() : void
      {
         _Callback = null;
         _ButtonOK.Dispose();
         _ButtonOK = null;
         super.Dispose();
      }
   }
}
