package nl.hbgames.ui.buttons
{
   import flash.display.MovieClip;
   
   public class ActionButton extends BaseButton
   {
       
      public function ActionButton(param1:MovieClip, param2:Function = null, param3:String = "")
      {
         super(param1,"sfxButtonGeneral",param2,param3,0.4);
      }
   }
}
