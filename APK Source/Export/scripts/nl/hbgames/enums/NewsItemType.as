package nl.hbgames.enums
{
   public class NewsItemType extends Object
   {
      
      public static const STAR:int = 0;
      
      public static const TIP:int = 1;
      
      public static const SALE:int = 2;
      
      public static const SHOP:int = 3;
      
      public static const FACEBOOK:int = 4;
      
      public static const LEADERBOARD:int = 5;
      
      public static const ALERT:int = 6;
      
      public static const HEART:int = 7;
      
      public static const COINS:int = 8;
      
      public static const PROMO:int = 9;
      
      private static const ALL_TYPES:Array = [0,1,2,3,4,5,6,7,8,9];
       
      public function NewsItemType()
      {
         super();
      }
      
      public static function IsTypeSupported(param1:int) : Boolean
      {
         return ALL_TYPES.indexOf(param1) != -1;
      }
   }
}
