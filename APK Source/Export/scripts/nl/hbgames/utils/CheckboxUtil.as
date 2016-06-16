package nl.hbgames.utils
{
   import flash.display.MovieClip;
   import nl.hbgames.ui.list.ScrollingList;
   
   public class CheckboxUtil extends Object
   {
       
      public function CheckboxUtil()
      {
         super();
      }
      
      public static function Register(param1:MovieClip, param2:Function, param3:Function = null, param4:Function = null) : void
      {
         param1.gotoAndStop(1);
         param1.buttonMode = true;
         param1.mouseChildren = false;
         if(param2 != null)
         {
            param1.addEventListener("mouseDown",param2);
         }
         if(param3 != null)
         {
            param1.addEventListener("mouseOver",param3);
         }
         if(param4 != null)
         {
            param1.addEventListener("mouseOut",param4);
         }
      }
      
      public static function Unregister(param1:MovieClip, param2:Function = null, param3:Function = null, param4:Function = null) : void
      {
         param1.gotoAndStop(1);
         param1.buttonMode = false;
         param1.mouseChildren = false;
         if(param2 != null)
         {
            param1.removeEventListener("mouseDown",param2);
         }
         if(param3 != null)
         {
            param1.removeEventListener("mouseOver",param3);
         }
         if(param4 != null)
         {
            param1.removeEventListener("mouseOut",param4);
         }
      }
      
      public static function RegisterSimple(param1:MovieClip, param2:Boolean = true, param3:Function = null) : void
      {
         target = param1;
         checked = param2;
         callback = param3;
         target.checked = checked;
         target.buttonMode = true;
         target.mouseChildren = false;
         target.gotoAndStop(target.checked?2:1.0);
         target.callback = callback;
         target.mouseClick = function():void
         {
            if(!ScrollingList.IsDragging)
            {
               target.checked = !target.checked;
               target.gotoAndStop(target.checked?2:1.0);
               if(target.callback != null)
               {
                  target.callback();
               }
            }
         };
         target.addEventListener("click",target.mouseClick);
      }
      
      public static function UnregisterSimple(param1:MovieClip) : void
      {
         param1.gotoAndStop(1);
         param1.buttonMode = false;
         param1.mouseChildren = false;
         param1.callback = null;
         param1.removeEventListener("click",param1.mouseClick);
      }
   }
}
