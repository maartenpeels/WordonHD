package nl.hbgames.utils
{
   import flash.display.MovieClip;
   import nl.hbgames.WordOn;
   import flash.events.MouseEvent;
   
   public class ButtonUtil extends Object
   {
       
      public function ButtonUtil()
      {
         super();
      }
      
      public static function Register(param1:MovieClip, param2:Function, param3:Function = null, param4:Function = null) : void
      {
         param1.gotoAndStop(1);
         param1.buttonMode = true;
         param1.mouseChildren = false;
         param1.click = param2;
         param1.hover = param3;
         param1.out = param4;
         if(param2 != null)
         {
            param1.addEventListener("click",param2);
         }
         if(param3 != null)
         {
            param1.addEventListener("mouseDown",param3);
         }
         if(param4 != null)
         {
            WordOn.Instance.stage.addEventListener("mouseUp",param4);
         }
      }
      
      public static function Unregister(param1:MovieClip) : void
      {
         param1.gotoAndStop(1);
         param1.buttonMode = false;
         param1.mouseChildren = false;
         if(param1.click != null)
         {
            param1.removeEventListener("click",param1.click);
         }
         if(param1.hover != null)
         {
            param1.removeEventListener("mouseDown",param1.hover);
         }
         if(param1.out != null)
         {
            WordOn.Instance.stage.removeEventListener("mouseUp",param1.out);
         }
         param1.click = null;
         param1.hover = null;
         param1.out = null;
      }
      
      public static function RegisterSimple(param1:MovieClip, param2:Function = null, param3:String = null) : void
      {
         target = param1;
         onMouseClick = param2;
         label = param3;
         target.gotoAndStop(1);
         target.buttonMode = true;
         target.mouseChildren = false;
         if(label != null && target.lblCaption != null)
         {
            target.lblCaption.text = label;
         }
         if(onMouseClick != null)
         {
            target.click = onMouseClick;
            target.addEventListener("click",onMouseClick);
         }
         target.mouseOver = function(param1:MouseEvent):void
         {
            param1.stopImmediatePropagation();
            target.gotoAndStop(2);
         };
         target.addEventListener("mouseDown",target.mouseOver);
         target.mouseOut = function(param1:MouseEvent):void
         {
            param1.stopImmediatePropagation();
            target.gotoAndStop(1);
         };
         WordOn.Instance.stage.addEventListener("mouseUp",target.mouseOut);
      }
      
      public static function UnregisterSimple(param1:MovieClip) : void
      {
         param1.gotoAndStop(1);
         param1.buttonMode = false;
         param1.mouseChildren = false;
         if(param1.click != null)
         {
            param1.removeEventListener("click",param1.click);
         }
         if(param1.mouseOver != null)
         {
            param1.removeEventListener("mouseDown",param1.mouseOver);
         }
         if(param1.mouseOut != null)
         {
            WordOn.Instance.stage.removeEventListener("mouseUp",param1.mouseOut);
         }
         param1.click = null;
         param1.mouseOver = null;
         param1.mouseOut = null;
      }
   }
}
