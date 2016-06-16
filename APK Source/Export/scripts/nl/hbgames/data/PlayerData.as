package nl.hbgames.data
{
   public class PlayerData extends Object
   {
       
      private var _ID:String;
      
      private var _BorderID:int;
      
      private var _Name:String;
      
      private var _Email:String;
      
      public function PlayerData(param1:String = null, param2:String = null, param3:String = null, param4:int = 0)
      {
         super();
         _ID = param1;
         _BorderID = param4;
         _Name = param2;
         _Email = param3;
      }
      
      public function get ID() : String
      {
         return _ID;
      }
      
      public function set ID(param1:String) : void
      {
         _ID = param1;
      }
      
      public function get BorderID() : int
      {
         return _BorderID;
      }
      
      public function set BorderID(param1:int) : void
      {
         _BorderID = param1;
      }
      
      public function get Name() : String
      {
         return _Name;
      }
      
      public function set Name(param1:String) : void
      {
         _Name = param1;
      }
      
      public function get Email() : String
      {
         return _Email;
      }
      
      public function set Email(param1:String) : void
      {
         _Email = param1;
      }
      
      public function Clone() : PlayerData
      {
         return new PlayerData(_ID,_Name,_Email,_BorderID);
      }
      
      public function Dispose() : void
      {
         _ID = null;
         _Name = null;
         _Email = null;
         _BorderID = 0;
      }
   }
}
