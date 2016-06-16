package nl.hbgames.ui.popups
{
   import flash.events.MouseEvent;
   import nl.hbgames.utils.Time;
   import flash.display.MovieClip;
   
   public class BaseTimedBox extends BasePopup
   {
       
      private var _SecsOnScreen:Number = 0;
      
      private var _Timer:Number = 0;
      
      private var _IsActive:Boolean;
      
      private var _Callback:Function;
      
      public function BaseTimedBox(param1:MovieClip, param2:Number, param3:Function = null)
      {
         _SecsOnScreen = param2;
         _Timer = 0;
         _IsActive = false;
         _Callback = param3;
         super(param1);
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.btnClose.addEventListener("click",OnClick);
      }
      
      protected function SetActive(param1:Boolean) : void
      {
         _IsActive = param1;
      }
      
      private function OnClick(param1:MouseEvent) : void
      {
         ForceTimeUp();
      }
      
      protected function ForceTimeUp() : void
      {
         _Timer = _SecsOnScreen;
      }
      
      override public function OnBackHandler() : void
      {
         ForceTimeUp();
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_IsActive)
         {
            _Timer = §§dup()._Timer + Time.DeltaTime;
         }
         if(_Timer >= _SecsOnScreen)
         {
            if(_Callback != null)
            {
               _Callback();
            }
            Remove();
         }
      }
      
      override public function Dispose() : void
      {
         _Content.btnClose.removeEventListener("click",OnClick);
         _Callback = null;
         super.Dispose();
      }
   }
}
