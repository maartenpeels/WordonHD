package nl.hbgames.managers
{
   import flash.display.MovieClip;
   import nl.hbgames.utils.Debugger;
   import flash.utils.getQualifiedClassName;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class LayoutManager extends Object
   {
       
      public function LayoutManager()
      {
         super();
      }
      
      public static function AdjustToScreen(param1:MovieClip, param2:Boolean = false, param3:Boolean = true) : MovieClip
      {
         var _loc7_:* = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(param1 == null)
         {
            Debugger.Instance.Write("[LayoutManager::AdjustToScreen] Invalid layout clip received",true);
            return null;
         }
         Debugger.Instance.Write("[LayoutManager::AdjustToScreen] Modifying provided clip [" + getQualifiedClassName(param1) + "]");
         if(param3)
         {
            param1.gotoAndStop(AssetManager.RatioID + 1);
         }
         if(param2)
         {
            var param1:MovieClip = param1.getChildAt(0) as MovieClip;
         }
         var _loc6_:int = param1.numChildren;
         _loc7_ = 0;
         while(_loc7_ < _loc6_)
         {
            _loc4_ = param1.getChildAt(_loc7_);
            _loc5_ = new Point(_loc4_.x,_loc4_.y);
            _loc4_.scaleX = _loc4_.scaleX * AssetManager.ContentScaleFactor;
            _loc4_.scaleY = _loc4_.scaleY * AssetManager.ContentScaleFactor;
            _loc4_.x = _loc5_.x * AssetManager.ContentScaleFactor;
            _loc4_.y = _loc5_.y * AssetManager.ContentScaleFactor;
            _loc7_++;
         }
         return param1;
      }
   }
}
