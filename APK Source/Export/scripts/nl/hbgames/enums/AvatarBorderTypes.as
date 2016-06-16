package nl.hbgames.enums
{
   public class AvatarBorderTypes extends Object
   {
      
      public static const NO_BORDER:int = 0;
      
      public static const DEVELOPER_ACCOUNT:int = 998;
      
      public static const VERIFIED_ACCOUNT:int = 999;
       
      public function AvatarBorderTypes()
      {
         super();
      }
      
      public static function IsOfficialAccount(param1:int) : Boolean
      {
         return param1 == 998 || param1 == 999;
      }
   }
}
