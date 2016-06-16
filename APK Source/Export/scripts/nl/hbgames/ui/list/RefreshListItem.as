package nl.hbgames.ui.list
{
   import flash.display.MovieClip;
   import nl.hbgames.data.Localization;
   import nl.hbgames.WordOn;
   import com.greensock.TweenLite;
   import nl.hbgames.managers.AssetManager;
   
   public class RefreshListItem extends BaseListItem
   {
       
      private var _Callback:Function;
      
      private var _LoadIcon:MovieClip;
      
      private var _IsReady:Boolean;
      
      private var _IsActive:Boolean;
      
      public function RefreshListItem(param1:Function)
      {
         super(AssetManager.GetDefinition("libListRefreshContent",true,true));
         _Callback = param1;
         _IsActive = false;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         ReleaseToActivate(false,true);
         _Content.lblCaption.autoSize = "center";
         _LoadIcon = _Content.mcLoader;
         _LoadIcon.visible = false;
         _LoadIcon.gotoAndStop(1);
      }
      
      public function ReleaseToActivate(param1:Boolean, param2:Boolean = false) : void
      {
         if(!_IsActive)
         {
            if(param1 != _IsReady || param2)
            {
               _IsReady = param1;
               if(param1)
               {
                  _Content.lblCaption.text = Localization.Get("overview_force_refresh_release");
               }
               else
               {
                  _Content.lblCaption.text = Localization.Get("overview_force_refresh_drag");
               }
            }
         }
      }
      
      public function Activate(param1:Number = 1.0) : void
      {
         if(_IsReady)
         {
            WordOn.Instance.Audio.Play("sfxRefreshStart");
            new TweenLite(this,param1,{"onComplete":Trigger});
            _LoadIcon.x = _Content.lblCaption.x - _LoadIcon.width;
            _LoadIcon.visible = true;
            _LoadIcon.play();
            _IsActive = true;
         }
      }
      
      private function Trigger() : void
      {
         if(_Callback != null)
         {
            _Callback();
         }
      }
      
      override public function Dispose() : void
      {
         _LoadIcon = null;
         super.Dispose();
      }
   }
}
