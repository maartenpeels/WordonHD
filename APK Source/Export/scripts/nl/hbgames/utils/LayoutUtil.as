package nl.hbgames.utils
{
   import flash.system.Capabilities;
   
   public class LayoutUtil extends Object
   {
       
      public function LayoutUtil()
      {
         super();
      }
      
      public static function MilliToPixels(param1:Number) : uint
      {
         return Math.round(Capabilities.screenDPI * param1 / 25.4);
      }
      
      public static function InchesToPixels(param1:Number) : uint
      {
         return Math.round(Capabilities.screenDPI * param1);
      }
      
      public static function DIP(param1:uint) : uint
      {
         return Math.round(param1 * 160 / Capabilities.screenDPI);
      }
   }
}
