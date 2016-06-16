package nl.hbgames.ui.graphs
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class HistoryBarGraph extends Object
   {
       
      private const MAX_HISTORY:uint = 7;
      
      private const MIN_SCORE_DIFF:uint = 100;
      
      private var _Content:MovieClip;
      
      private var _Data:Object;
      
      public function HistoryBarGraph(param1:MovieClip, param2:Object = null)
      {
         super();
         _Content = param1;
         Draw(param2);
      }
      
      public function Draw(param1:Object) : void
      {
         var _loc2_:* = 0;
         var _loc6_:* = 0;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc4_:* = null;
         var _loc13_:* = NaN;
         _Data = param1 != null?param1:{};
         var _loc9_:* = 2147483647;
         var _loc5_:* = -2147483648;
         var _loc7_:Array = [];
         var _loc16_:* = 0;
         var _loc15_:* = _Data;
         for(var _loc14_ in _Data)
         {
            _loc2_ = _Data[_loc14_];
            if(_loc2_ > _loc5_)
            {
               _loc5_ = _loc2_;
            }
            if(_loc2_ < _loc9_)
            {
               _loc9_ = _loc2_;
            }
            _loc7_.push({
               "timestamp":_loc14_ * 1000,
               "score":_loc2_
            });
         }
         _loc7_.sortOn("timestamp",16);
         if(_loc7_.length == 0)
         {
            _loc9_ = 0;
            _loc5_ = 100;
         }
         else if(_loc7_.length == 1)
         {
            if(_loc9_ > 100)
            {
               _loc9_ = _loc9_ - 100;
            }
         }
         _loc9_ = Math.floor(_loc9_ / 10) * 10;
         _loc5_ = Math.ceil(_loc5_ / 10) * 10;
         if(_loc5_ - _loc9_ < 100)
         {
            _loc5_ = _loc5_ + 100;
         }
         _Content.lblLow.text = _loc9_;
         _Content.lblMid.text = Math.round(_loc9_ + (_loc5_ - _loc9_) / 2);
         _Content.lblHigh.text = _loc5_;
         var _loc3_:int = _Content.lblLow.y + _Content.lblLow.height / 2;
         var _loc8_:int = _Content.lblHigh.y + _Content.lblHigh.height / 2;
         var _loc12_:int = _loc3_ - _loc8_;
         _loc6_ = 0;
         while(_loc6_ < 7)
         {
            _loc10_ = _Content["mcBar" + _loc6_];
            _loc11_ = _Content["lbl" + _loc6_];
            if(_loc6_ < _loc7_.length)
            {
               _loc4_ = new Date(_loc7_[_loc6_].timestamp);
               _loc11_.text = _loc4_.getDate() + "/" + (_loc4_.getMonth() + 1);
               _loc2_ = _loc7_[_loc6_].score;
               _loc13_ = (_loc2_ - _loc9_) / (_loc5_ - _loc9_);
               _loc10_.height = _loc10_.y - _loc3_ + _loc12_ * _loc13_;
            }
            else
            {
               _loc10_.visible = false;
               _loc11_.visible = false;
            }
            _loc6_++;
         }
      }
      
      public function Dispose() : void
      {
         _Content = null;
         _Data = null;
      }
   }
}
