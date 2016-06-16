package nl.hbgames.ui.scrollwheel
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.display.Bitmap;
   
   public class BaseWheelItem extends Sprite
   {
       
      protected var _Content:DisplayObject = null;
      
      public var TargetY:Number = 0;
      
      public var TargetX:Number = 0;
      
      protected var _Output:String = "";
      
      public function BaseWheelItem(param1:DisplayObject)
      {
         super();
         _Content = param1;
         if(_Content != null)
         {
            if(_Content is Bitmap)
            {
               (_Content as Bitmap).smoothing = true;
            }
            this.addChild(_Content);
         }
      }
      
      public function get Output() : String
      {
         return _Output;
      }
      
      public function Refresh() : void
      {
      }
      
      public function Dispose() : void
      {
         if(_Content != null)
         {
            this.removeChild(_Content);
         }
         _Content = null;
      }
   }
}
