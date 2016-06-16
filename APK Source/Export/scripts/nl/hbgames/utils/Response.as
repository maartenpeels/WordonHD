package nl.hbgames.utils
{
   import nl.hbgames.enums.ResponseType;
   
   public class Response extends ResponseType
   {
       
      private var theResult:String;
      
      private var theErrorCode:int;
      
      private var theData = null;
      
      private var theErrorData:Object;
      
      public function Response(param1:String, param2:int = -1, param3:Object = null)
      {
         super();
         if(param1 == ":(" && param2 == -1)
         {
            Debugger.Instance.Write("[Response] No error code specified, defaulting to UNKNOWN_ERROR. Please specify a code to accurately handle the result.",true);
         }
         theResult = param1;
         theErrorCode = param2;
         theErrorData = param3;
      }
      
      public function get isSuccess() : Boolean
      {
         return theResult == ":)";
      }
      
      public function get result() : String
      {
         return theResult;
      }
      
      public function get errorCode() : int
      {
         return theErrorCode;
      }
      
      public function get data() : *
      {
         return theData;
      }
      
      public function set data(param1:*) : void
      {
         theData = param1;
      }
      
      public function get errorData() : Object
      {
         return theErrorData;
      }
      
      public function toString() : String
      {
         if(theResult == ":)")
         {
            return "result = " + theResult;
         }
         return "result = " + theResult + " (error #" + theErrorCode + ")";
      }
   }
}
