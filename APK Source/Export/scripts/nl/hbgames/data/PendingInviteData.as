package nl.hbgames.data
{
   public class PendingInviteData extends Object
   {
       
      private var _UserID:String;
      
      private var _FacebookID:String;
      
      public function PendingInviteData(param1:String, param2:String = "")
      {
         super();
         _UserID = param1;
         _FacebookID = param2;
      }
      
      public function get UserID() : String
      {
         return _UserID;
      }
      
      public function get FacebookID() : String
      {
         return _FacebookID;
      }
      
      public function Dispose() : void
      {
         _UserID = null;
         _FacebookID = null;
      }
   }
}
