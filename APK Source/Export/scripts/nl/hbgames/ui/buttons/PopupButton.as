package nl.hbgames.ui.buttons
{
   import flash.display.MovieClip;
   
   public class PopupButton extends BaseButton
   {
       
      public function PopupButton(param1:MovieClip, param2:Function = null, param3:String = "", param4:String = null)
      {
         super(param1,param4 != null?param4:"sfxButtonGeneral",param2,param3);
      }
   }
}
