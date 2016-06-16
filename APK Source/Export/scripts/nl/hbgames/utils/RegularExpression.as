package nl.hbgames.utils
{
   public class RegularExpression extends Object
   {
      
      public static const EMAIL:RegExp = new RegExp(new RegExp("@"));
      
      public static const TELEPHONE:RegExp = new RegExp(new RegExp("^[0-9]{5}[ ]?[0-9]{3}[ ]?[0-9]{3}$"));
       
      public function RegularExpression()
      {
         super();
      }
   }
}
