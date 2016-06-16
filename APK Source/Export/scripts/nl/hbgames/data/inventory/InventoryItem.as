package nl.hbgames.data.inventory
{
   import nl.hbgames.utils.StringUtil;
   import nl.hbgames.utils.Time;
   
   public class InventoryItem extends Object
   {
       
      private var _ID:String;
      
      private var _Amount:int;
      
      private var _ExpireTimeInSecs:Number;
      
      private var _ChangeCallback:Function;
      
      public function InventoryItem(param1:String, param2:int = 0, param3:Number = 0)
      {
         super();
         _ID = param1;
         _Amount = param2;
         _ExpireTimeInSecs = param3;
      }
      
      public function get ID() : String
      {
         return _ID;
      }
      
      public function get Amount() : int
      {
         return _Amount;
      }
      
      public function get IsAvailable() : Boolean
      {
         return _Amount > 0;
      }
      
      public function get Expires() : Boolean
      {
         return _ExpireTimeInSecs > 0;
      }
      
      public function get ExpireTimeInSecs() : Number
      {
         return _ExpireTimeInSecs;
      }
      
      public function get ExpireTimeFormatted() : String
      {
         return StringUtil.LocalizedTime(_ExpireTimeInSecs);
      }
      
      public function SetChangeCallback(param1:Function) : void
      {
         _ChangeCallback = param1;
      }
      
      public function SetAmount(param1:int) : void
      {
         _Amount = param1;
         ProcessChange();
      }
      
      public function SetExpireTime(param1:Number) : void
      {
         _ExpireTimeInSecs = param1;
         ProcessChange();
      }
      
      public function CheckExpiration() : void
      {
         if(_ExpireTimeInSecs > 0)
         {
            _ExpireTimeInSecs = §§dup()._ExpireTimeInSecs - Time.DeltaTime;
            if(_ExpireTimeInSecs <= 0)
            {
               SetAmount(0);
               _ExpireTimeInSecs = 0;
            }
         }
      }
      
      private function ProcessChange() : void
      {
         if(_ChangeCallback != null)
         {
            _ChangeCallback(this);
         }
      }
      
      public function Export() : Object
      {
         var _loc1_:Object = {
            "id":_ID,
            "amount":_Amount,
            "expireTime":_ExpireTimeInSecs
         };
         return _loc1_;
      }
      
      public function Dispose() : void
      {
         _ID = null;
         _Amount = 0;
         _ExpireTimeInSecs = 0;
         _ChangeCallback = null;
      }
   }
}
