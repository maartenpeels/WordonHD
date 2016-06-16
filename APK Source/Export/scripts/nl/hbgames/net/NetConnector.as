package nl.hbgames.net
{
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   
   public class NetConnector extends Object
   {
       
      private var theConnectionURL:String;
      
      private var theDataFormat:String;
      
      private var theDebugMode:Boolean;
      
      public function NetConnector(param1:String, param2:Boolean = false)
      {
         super();
         theConnectionURL = param1;
         theDataFormat = "text";
         theDebugMode = param2;
      }
      
      public function send(param1:String, param2:Function, param3:Function, param4:Object = null, param5:String = "POST", param6:String = null) : void
      {
         var _loc7_:* = null;
         if(param1.charAt(0) != "/")
         {
            var param1:String = "/" + param1;
         }
         var _loc11_:String = param6 == null?theConnectionURL + param1:param6 + param1;
         var _loc8_:URLRequest = new URLRequest(_loc11_);
         _loc8_.method = param5;
         if(param4 != null)
         {
            _loc7_ = new URLVariables();
            var _loc13_:* = 0;
            var _loc12_:* = param4;
            for(var _loc9_ in param4)
            {
               _loc7_[_loc9_] = param4[_loc9_];
            }
            _loc8_.data = _loc7_;
         }
         var _loc10_:NetRequest = new NetRequest(param2,param3,_loc8_,theDataFormat,theDebugMode);
      }
      
      public function dispose() : void
      {
         theConnectionURL = null;
         theDataFormat = null;
      }
   }
}
