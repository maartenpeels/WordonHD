package nl.hbgames.ui.panels
{
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   
   public class LegalPanel extends BasePanel
   {
       
      public function LegalPanel()
      {
         super(new libLegalScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = Localization.Get("legal_title") + "\n\n";
         _Content.lblBody.text = Localization.Get("legal_body_1");
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
