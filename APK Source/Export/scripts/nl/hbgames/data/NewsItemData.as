package nl.hbgames.data
{
   import nl.hbgames.enums.NewsItemType;
   
   public class NewsItemData extends Object
   {
       
      private var _IconType:int;
      
      private var _FilterType:int;
      
      private var _Header:String;
      
      private var _Message:String;
      
      private var _Params:String;
      
      private var _IsForced:Boolean;
      
      public function NewsItemData(param1:Object = null, param2:Boolean = false)
      {
         super();
         if(param1 != null)
         {
            if(param2)
            {
               param1.forced = 1;
            }
            Set(param1);
         }
      }
      
      public function get IconType() : int
      {
         return _IconType;
      }
      
      public function get FilterType() : int
      {
         return _FilterType;
      }
      
      public function get Header() : String
      {
         return _Header;
      }
      
      public function get Message() : String
      {
         return _Message;
      }
      
      public function get Params() : String
      {
         return _Params;
      }
      
      public function get IsForced() : Boolean
      {
         return _IsForced;
      }
      
      public function Set(param1:Object) : void
      {
         _IconType = param1.icon;
         _FilterType = param1.type;
         _Message = param1.message;
         _Params = param1.params;
         _IsForced = param1.forced;
         if(!NewsItemType.IsTypeSupported(_IconType))
         {
            _IconType = 0;
         }
      }
      
      public function Dispose() : void
      {
         _Header = null;
         _Message = null;
         _Params = null;
      }
   }
}
