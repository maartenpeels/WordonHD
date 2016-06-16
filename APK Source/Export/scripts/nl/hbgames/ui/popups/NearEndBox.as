package nl.hbgames.ui.popups
{
   import nl.hbgames.data.Localization;
   
   public class NearEndBox extends BaseTimedBox
   {
       
      public function NearEndBox()
      {
         super(new libGameNearEndBox(),3);
      }
      
      override public function Initialize() : void
      {
         _Content.lblTitle.text = Localization.Get("game_near_end_title");
         _Content.lblResult.text = Localization.Get("game_near_end_message");
         super.Initialize();
      }
      
      override public function OnShow() : void
      {
         super.OnShow();
         SetActive(true);
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
