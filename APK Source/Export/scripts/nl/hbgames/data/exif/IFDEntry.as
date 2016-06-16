package nl.hbgames.data.exif
{
   import flash.utils.ByteArray;
   
   public class IFDEntry extends Object
   {
      
      private static const TAG_TYPES:Object = {
         1:{
            "name":"BYTE",
            "size":1,
            "reader":readByteHandler
         },
         2:{
            "name":"ASCII",
            "size":1,
            "reader":readStringHandler
         },
         3:{
            "name":"SHORT",
            "size":2,
            "reader":readShortHandler
         },
         4:{
            "name":"LONG",
            "size":4,
            "reader":readLongHandler
         },
         5:{
            "name":"RATIONAL",
            "size":8,
            "reader":readRationalHandler
         },
         7:{
            "name":"UNDEFINED",
            "size":1,
            "reader":readByteHandler
         },
         9:{
            "name":"SLONG",
            "size":4,
            "reader":readSLongHandler
         },
         10:{
            "name":"SRATIONAL",
            "size":8,
            "reader":readSRationalHandler
         }
      };
       
      private var _tagID:uint;
      
      private var _tag:XMLList;
      
      private var _tagName:String;
      
      private var _typeID:uint;
      
      private var _type:Object;
      
      private var _data:Object;
      
      private var _numData:uint;
      
      public function IFDEntry(param1:ByteArray, param2:XML, param3:uint)
      {
         var _loc4_:* = 0;
         super();
         _tagID = param1.readUnsignedShort();
         var _loc5_:* = param2.tag;
         var _loc6_:* = 0;
         var _loc8_:* = new XMLList("");
         _tag = param2.tag.(parseInt(@id,16) == tagID);
         _tagName = "0x" + _tagID.toString(16);
         if(!tag.@field_name.toString())
         {
            _tagName = "UnknownTag_" + _tagName;
         }
         _typeID = param1.readUnsignedShort();
         _type = TAG_TYPES[_typeID];
         _numData = param1.readUnsignedInt();
         _loc4_ = param1.position + 4;
         if(!type)
         {
            trace("unrecognizable tag id=" + tagID + " type=" + typeID);
            _data = null;
         }
         else
         {
            if(_numData * type.size > 4)
            {
               param1.position = param1.readUnsignedInt() + param3;
            }
            readContent(param1);
         }
         param1.position = _loc4_;
      }
      
      private static function readStringHandler(param1:ByteArray, param2:uint) : String
      {
         return param1.readUTFBytes(param2);
      }
      
      private static function readByteHandler(param1:ByteArray) : uint
      {
         return param1.readUnsignedByte();
      }
      
      private static function readShortHandler(param1:ByteArray) : uint
      {
         return param1.readUnsignedShort();
      }
      
      private static function readLongHandler(param1:ByteArray) : uint
      {
         return param1.readUnsignedInt();
      }
      
      private static function readSLongHandler(param1:ByteArray) : int
      {
         return param1.readInt();
      }
      
      private static function readRationalHandler(param1:ByteArray) : Number
      {
         var _loc3_:uint = param1.readUnsignedInt();
         var _loc2_:uint = param1.readUnsignedInt();
         return (_loc3_) / (_loc2_);
      }
      
      private static function readSRationalHandler(param1:ByteArray) : Number
      {
         var _loc3_:int = param1.readInt();
         var _loc2_:int = param1.readInt();
         return (_loc3_) / (_loc2_);
      }
      
      public function get tagID() : uint
      {
         return _tagID;
      }
      
      public function get tag() : XMLList
      {
         return _tag;
      }
      
      public function get tagName() : String
      {
         return tag.@field_name.toString() || _tagName;
      }
      
      public function get typeID() : uint
      {
         return _typeID;
      }
      
      public function get type() : Object
      {
         return _type;
      }
      
      public function get data() : Object
      {
         return _data;
      }
      
      private function readContent(param1:ByteArray) : void
      {
         var _loc2_:* = 0;
         if(_typeID == 2)
         {
            _data = readStringHandler(param1,_numData);
         }
         else if(_numData == 1)
         {
            _data = type.reader(param1);
         }
         else
         {
            _data = [];
            _loc2_ = 0;
            while(_loc2_ < _numData)
            {
               _data.push(type.reader(param1));
               _loc2_++;
            }
         }
      }
   }
}
