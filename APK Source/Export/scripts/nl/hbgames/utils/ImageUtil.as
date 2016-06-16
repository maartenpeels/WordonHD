package nl.hbgames.utils
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class ImageUtil extends Object
   {
       
      public function ImageUtil()
      {
         super();
      }
      
      public static function CreateThumbnail(param1:BitmapData, param2:int, param3:int, param4:uint = 0) : BitmapData
      {
         var _loc8_:* = NaN;
         var _loc5_:* = null;
         var _loc12_:* = null;
         if(param1 == null)
         {
            return new BitmapData(100,100,false,0);
         }
         var _loc9_:uint = 0;
         switch(param4 - 3)
         {
            case 0:
               _loc9_ = 180;
               break;
            case 1:
               _loc9_ = 90;
               break;
            case 2:
               _loc9_ = 270;
               break;
            default:
               _loc9_ = 0;
         }
         var _loc10_:int = _loc9_?param1.height:param1.width;
         var _loc7_:int = _loc9_?param1.width:param1.height;
         if(_loc10_ < param2 || _loc7_ < param3)
         {
            _loc8_ = Math.max(param2 / _loc10_,param3 / _loc7_);
            _loc5_ = new BitmapData(_loc10_ * _loc8_,_loc7_ * _loc8_,false,0);
            _loc12_ = new Matrix();
            _loc12_.scale(_loc8_,_loc8_);
            _loc5_.draw(param1,_loc12_,null,null,null,true);
            var param1:* = _loc5_;
            _loc10_ = param1.width;
            _loc7_ = param1.height;
         }
         var _loc6_:Boolean = _loc7_ > _loc10_?true:false;
         _loc8_ = _loc6_?param2 / _loc10_:param3 / _loc7_;
         _loc12_ = new Matrix();
         if(param4 > 0)
         {
            _loc12_.translate(-(param1.width >> 1),-(param1.height >> 1));
            _loc12_.rotate(_loc9_ * 3.141592653589793 / 180);
            _loc12_.translate(_loc10_ >> 1,_loc7_ >> 1);
         }
         _loc12_.scale(_loc8_,_loc8_);
         if(_loc6_)
         {
            _loc12_.translate(0,-(_loc7_ * _loc8_ - param3) >> 1);
         }
         else
         {
            _loc12_.translate(-(_loc10_ * _loc8_ - param2) >> 1,0);
         }
         var _loc11_:BitmapData = new BitmapData(param2,param3,false,0);
         _loc11_.draw(param1,_loc12_,null,null,null,true);
         return _loc11_;
      }
   }
}
