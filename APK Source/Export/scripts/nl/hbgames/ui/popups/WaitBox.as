package nl.hbgames.ui.popups
{
   import nl.hbgames.events.WaitBoxEvent;
   import nl.hbgames.utils.Time;
   import nl.hbgames.config.Settings;
   import nl.hbgames.managers.AssetManager;
   
   public class WaitBox extends libWaitBox
   {
      
      private static var _HideTime:Number = 0;
      
      private static var _UseTimer:Boolean = false;
      
      private static var _Instance:WaitBox;
       
      public function WaitBox()
      {
         super();
         _Instance = this;
         this.x = Settings.SCREEN_CENTER_X;
         this.y = Settings.SCREEN_CENTER_Y;
         this.scaleX = this.scaleX * AssetManager.ContentScaleFactor;
         this.scaleY = this.scaleY * AssetManager.ContentScaleFactor;
         Hide();
      }
      
      public static function get Instance() : WaitBox
      {
         return _Instance;
      }
      
      public static function get IsVisible() : Boolean
      {
         return _Instance.visible;
      }
      
      public static function Show(param1:String = "", param2:Number = 0) : void
      {
         _UseTimer = false;
         if(param2 > 0)
         {
            _HideTime = param2;
            _UseTimer = true;
         }
         else
         {
            _UseTimer = false;
            _HideTime = 0;
         }
         setText(param1);
         if(_Instance.visible)
         {
            return;
         }
         _Instance.visible = true;
         _Instance.gotoAndPlay(1);
         _Instance.dispatchEvent(new WaitBoxEvent("WaitBoxShow"));
      }
      
      public static function Hide() : void
      {
         if(!_Instance.visible)
         {
            return;
         }
         _Instance.visible = false;
         _Instance.dispatchEvent(new WaitBoxEvent("WaitBoxHide"));
         _UseTimer = false;
         _HideTime = 0;
      }
      
      private static function setText(param1:String) : void
      {
         if(param1 == null)
         {
            var param1:String = "";
         }
         _Instance.txtLoadTitle.text = param1;
         _Instance.txtLoadTitleShadow.text = param1;
         _Instance.mcTextBG.visible = param1 != "";
      }
      
      public function Update() : void
      {
         if(_UseTimer)
         {
            _HideTime = §§dup()._HideTime - Time.DeltaTime;
            if(_HideTime <= 0)
            {
               Hide();
            }
         }
      }
      
      public function Dispose() : void
      {
         _UseTimer = false;
         _Instance.visible = false;
         _Instance = null;
      }
   }
}
