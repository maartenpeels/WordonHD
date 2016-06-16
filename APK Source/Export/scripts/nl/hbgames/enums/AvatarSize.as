package nl.hbgames.enums
{
   import flash.geom.Rectangle;
   
   public class AvatarSize extends Object
   {
      
      public static const SMALL:String = "small";
      
      public static const MEDIUM:String = "medium";
      
      public static const LARGE:String = "large";
       
      public function AvatarSize()
      {
         super();
      }
      
      public static function GetRect(param1:String) : Rectangle
      {
         var _loc2_:* = param1;
         if("small" !== _loc2_)
         {
            if("medium" !== _loc2_)
            {
               if("large" !== _loc2_)
               {
                  return null;
               }
               return new Rectangle(0,0,400,400);
            }
            return new Rectangle(0,0,200,200);
         }
         return new Rectangle(0,0,100,100);
      }
   }
}
