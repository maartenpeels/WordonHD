package nl.hbgames.data.exif
{
   import flash.utils.ByteArray;
   
   public dynamic class IFD extends Object
   {
       
      private var entries:Array;
      
      private var numEnt:uint;
      
      private var _tagSet:XML;
      
      public function IFD(param1:ByteArray, param2:XML, param3:uint)
      {
         super();
         _tagSet = param2;
         numEnt = param1.readUnsignedShort();
         readIFDEntries(param1,param3);
      }
      
      public function get tagSet() : XML
      {
         return _tagSet;
      }
      
      public function get level() : String
      {
         return tagSet.@level.toString();
      }
      
      public function getEntryByTagID(param1:uint) : IFDEntry
      {
         var _loc4_:* = 0;
         var _loc3_:* = entries;
         for each(var _loc2_ in entries)
         {
            if(_loc2_.tagID == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getEntryByTagName(param1:String) : IFDEntry
      {
         var _loc4_:* = 0;
         var _loc3_:* = entries;
         for each(var _loc2_ in entries)
         {
            if(_loc2_.tagName == param1)
            {
               return _loc2_;
            }
         }
         return _loc2_;
      }
      
      private function readIFDEntries(param1:ByteArray, param2:uint) : void
      {
         var _loc4_:* = 0;
         var _loc3_:* = null;
         entries = [];
         _loc4_ = 0;
         while(_loc4_ < numEnt)
         {
            _loc3_ = new IFDEntry(param1,tagSet,param2);
            if(_loc3_.data)
            {
               this[_loc3_.tagName] = _loc3_.data;
            }
            entries.push(_loc3_);
            _loc4_++;
         }
      }
   }
}
