package nl.hbgames.managers
{
   import nl.hbgames.interfaces.ISerializable;
   import nl.hbgames.utils.Debugger;
   import flash.utils.ByteArray;
   import nl.hbgames.data.Storage;
   import nl.hbgames.data.AppData;
   
   public class Serializer extends Object
   {
      
      private static var _Instance:Serializer = null;
       
      private var _Targets:Vector.<ISerializable>;
      
      private var _DataLossCount:int = 0;
      
      public function Serializer()
      {
         super();
         _Targets = new Vector.<ISerializable>();
      }
      
      public static function get Instance() : Serializer
      {
         if(_Instance == null)
         {
            _Instance = new Serializer();
         }
         return _Instance;
      }
      
      public function get DataLossCount() : int
      {
         return _DataLossCount;
      }
      
      public function Register(param1:ISerializable) : void
      {
         if(_Targets.indexOf(param1) != -1)
         {
            Debugger.Instance.Write("[Serializer::Register] Target: " + param1 + " already registered for Serializing");
            return;
         }
         _Targets.push(param1);
      }
      
      public function Unregister(param1:ISerializable) : void
      {
         var _loc2_:int = _Targets.indexOf(param1);
         if(_loc2_ == -1)
         {
            Debugger.Instance.Write("[Serializer::Unregister] Target: " + param1 + " doesn\'t exist");
            return;
         }
         _Targets.splice(_loc2_,1);
      }
      
      public function Serialize() : void
      {
         var _loc2_:* = 0;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeUTFBytes("<?xml version=\'1.0\' encoding=\'utf-8\' ?>");
         _loc1_.writeUTFBytes("<storage>");
         _loc2_ = 0;
         while(_loc2_ < _Targets.length)
         {
            Debugger.Instance.Write("[Serializer::Serialize] Serializing: " + _Targets[_loc2_]);
            _Targets[_loc2_].Serialize(_loc1_);
            _loc2_++;
         }
         _loc1_.writeUTFBytes("</storage>");
         Storage.WriteFile("storage.bin",_loc1_,false,false,"ios_documents");
      }
      
      public function Unserialize() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc1_:* = false;
         if(Storage.FileExists("storage.bin","ios_documents"))
         {
            _loc2_ = Storage.ReadFile("storage.bin",false,"ios_documents");
            try
            {
               _loc3_ = new XML(_loc2_);
               Debugger.Instance.Write("[Serializer::Unserialize] Valid XML input data received.");
               _loc4_ = 0;
               while(_loc4_ < _Targets.length)
               {
                  Debugger.Instance.Write("[Serializer::Unserialize] Unserializing: " + _Targets[_loc4_]);
                  _Targets[_loc4_].Unserialize(_loc3_);
                  _loc4_++;
               }
               if(1 > AppData.Instance.StorageVersion)
               {
                  Debugger.Instance.Write("[Serializer::Unserialize] Storage file outdated, rebuilding...");
                  AppData.Instance.StorageVersion = 1;
                  Serialize();
                  Unserialize();
               }
            }
            catch(e:Error)
            {
               Debugger.Instance.Write("[Serializer::Unserialize] Input data is no valid XML. File might be corrupt!",true);
               _DataLossCount = _DataLossCount + 1;
               _loc1_ = true;
            }
         }
         else
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            Serialize();
         }
      }
   }
}
