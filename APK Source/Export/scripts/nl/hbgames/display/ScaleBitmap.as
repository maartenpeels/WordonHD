package nl.hbgames.display
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import nl.hbgames.utils.Debugger;
   import flash.geom.Matrix;
   
   public class ScaleBitmap extends Bitmap
   {
       
      protected var _OriginalBitmap:BitmapData = null;
      
      protected var _Scale9Grid:Rectangle = null;
      
      public function ScaleBitmap(param1:BitmapData = null, param2:String = "auto", param3:Boolean = false)
      {
         super(param1,param2,param3);
         _OriginalBitmap = param1.clone();
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         _OriginalBitmap = param1.clone();
         if(_Scale9Grid != null)
         {
            if(!IsValidGrid(_Scale9Grid))
            {
               _Scale9Grid = null;
            }
            SetSize(param1.width,param1.height);
         }
         else
         {
            AssignBitmapData(_OriginalBitmap.clone());
         }
      }
      
      override public function set width(param1:Number) : void
      {
         if(param1 != width)
         {
            SetSize(param1,height);
         }
      }
      
      override public function set height(param1:Number) : void
      {
         if(param1 != height)
         {
            SetSize(width,param1);
         }
      }
      
      override public function set scale9Grid(param1:Rectangle) : void
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_Scale9Grid == null && param1 != null || _Scale9Grid != null && !_Scale9Grid.equals(param1))
         {
            if(param1 == null)
            {
               _loc2_ = width;
               _loc3_ = height;
               _Scale9Grid = null;
               AssignBitmapData(_OriginalBitmap.clone());
               SetSize(_loc2_,_loc3_);
            }
            else
            {
               if(!IsValidGrid(param1))
               {
                  Debugger.Instance.Write("[ScaleBitmap::scale9Grid] The specified rectangle does not match the bitmap!",true);
                  return;
               }
               _Scale9Grid = param1.clone();
               _Scale9Grid.width = _OriginalBitmap.width - _Scale9Grid.width;
               _Scale9Grid.height = _OriginalBitmap.height - _Scale9Grid.height;
               ResizeBitmap(width,height);
               scaleX = 1;
               scaleY = 1;
            }
         }
      }
      
      private function AssignBitmapData(param1:BitmapData, param2:Boolean = false) : void
      {
         if(param2)
         {
            super.bitmapData.dispose();
         }
         .super.bitmapData = param1;
      }
      
      private function IsValidGrid(param1:Rectangle) : Boolean
      {
         return param1.right <= _OriginalBitmap.width && param1.bottom <= _OriginalBitmap.height;
      }
      
      override public function get scale9Grid() : Rectangle
      {
         return _Scale9Grid;
      }
      
      public function SetSize(param1:Number, param2:Number) : void
      {
         if(_Scale9Grid == null)
         {
            .super.width = param1;
            .super.height = param2;
         }
         else
         {
            var param1:Number = Math.max(param1,_OriginalBitmap.width - _Scale9Grid.width);
            var param2:Number = Math.max(param2,_OriginalBitmap.height - _Scale9Grid.height);
            ResizeBitmap(param1,param2);
         }
      }
      
      public function GetOriginalBitmap() : BitmapData
      {
         return _OriginalBitmap;
      }
      
      protected function ResizeBitmap(param1:Number, param2:Number) : void
      {
         var _loc8_:* = null;
         var _loc3_:* = null;
         var _loc10_:* = 0;
         var _loc9_:* = 0;
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,0);
         var _loc12_:Array = [0,_Scale9Grid.top,_Scale9Grid.bottom,_OriginalBitmap.height];
         var _loc6_:Array = [0,_Scale9Grid.left,_Scale9Grid.right,_OriginalBitmap.width];
         var _loc4_:Array = [0,_Scale9Grid.top,param2 - (_OriginalBitmap.height - _Scale9Grid.bottom),param2];
         var _loc11_:Array = [0,_Scale9Grid.left,param1 - (_OriginalBitmap.width - _Scale9Grid.right),param1];
         var _loc7_:Matrix = new Matrix();
         _loc10_ = 0;
         while(_loc10_ < 3)
         {
            _loc9_ = 0;
            while(_loc9_ < 3)
            {
               _loc8_ = new Rectangle(_loc6_[_loc10_],_loc12_[_loc9_],_loc6_[_loc10_ + 1] - _loc6_[_loc10_],_loc12_[_loc9_ + 1] - _loc12_[_loc9_]);
               _loc3_ = new Rectangle(_loc11_[_loc10_],_loc4_[_loc9_],_loc11_[_loc10_ + 1] - _loc11_[_loc10_],_loc4_[_loc9_ + 1] - _loc4_[_loc9_]);
               _loc7_.identity();
               _loc7_.a = _loc3_.width / _loc8_.width;
               _loc7_.d = _loc3_.height / _loc8_.height;
               _loc7_.tx = _loc3_.x - _loc8_.x * _loc7_.a;
               _loc7_.ty = _loc3_.y - _loc8_.y * _loc7_.d;
               _loc5_.draw(_OriginalBitmap,_loc7_,null,null,_loc3_,this.smoothing);
               _loc9_++;
            }
            _loc10_++;
         }
         AssignBitmapData(_loc5_);
      }
   }
}
