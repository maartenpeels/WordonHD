package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.data.Localization;
   
   public class SplashLogic extends Logic
   {
       
      public function SplashLogic()
      {
         super(new libSplashScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblLoading.text = Localization.Get("splash_loading");
         _Content.lblLoading.autoSize = "center";
         _Content.mcLoadIcon.x = _Content.lblLoading.x - _Content.mcLoadIcon.width;
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
