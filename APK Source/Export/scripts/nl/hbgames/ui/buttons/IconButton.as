package nl.hbgames.ui.buttons
{
   import flash.display.MovieClip;
   
   public class IconButton extends BaseButton
   {
       
      private var _IconType:int = 1;
      
      public function IconButton(param1:MovieClip, param2:int, param3:Function = null)
      {
         _IconType = param2;
         super(param1,"sfxButtonGeneral",param3,"",0.4);
      }
      
      override public function Initialize(param1:Function, param2:String) : void
      {
         super.Initialize(param1,param2);
         _Content.mcIcons.gotoAndStop(_IconType);
      }
   }
}
