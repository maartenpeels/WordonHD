package nl.hbgames.logic.game.effects
{
   import flash.display.Bitmap;
   import com.greensock.TweenLite;
   import com.greensock.easing.Back;
   import nl.hbgames.managers.AssetManager;
   
   public class CoinParticle extends BaseParticle
   {
       
      private const ANIM_TIME:Number = 1.5;
      
      protected var _ToX:int;
      
      protected var _ToY:int;
      
      protected var _Star:Bitmap;
      
      protected var _Shadow:Bitmap;
      
      protected var _RemoveCallback:Function;
      
      protected var _Tween:TweenLite;
      
      public function CoinParticle(param1:int, param2:int, param3:Function, param4:String = null)
      {
         _ToX = param1;
         _ToY = param2;
         _RemoveCallback = param3;
         _Shadow = AssetManager.GetAsBitmap("coin_reward_shadow",false);
         _Shadow.x = -(_Shadow.width >> 1) + 25;
         _Shadow.y = -(_Shadow.height >> 1) + 25;
         this.addChild(_Shadow);
         _Star = AssetManager.GetAsBitmap(!param4?"libCoinReward":param4,true,true);
         _Star.scaleX = _Star.scaleX / AssetManager.ContentScaleFactor;
         _Star.scaleY = _Star.scaleY / AssetManager.ContentScaleFactor;
         _Star.x = -(_Star.width >> 1);
         _Star.y = -(_Star.height >> 1);
         this.addChild(_Star);
         this.visible = false;
         Initialize();
         super();
      }
      
      protected function Initialize() : void
      {
         _Tween = TweenLite.to(this,1.5,{
            "x":_ToX,
            "y":_ToY,
            "ease":Back.easeInOut,
            "easeParams":[1],
            "onUpdate":Progress,
            "onComplete":Finished
         });
      }
      
      private function Finished() : void
      {
         if(_RemoveCallback != null)
         {
            _RemoveCallback();
         }
         _IsDead = true;
      }
      
      public function Progress() : void
      {
         var _loc2_:* = NaN;
         _loc2_ = 0.2;
         var _loc3_:* = 0.75;
         var _loc4_:Number = _Tween.totalTime;
         var _loc1_:* = 0.0;
         if(_loc4_ < _loc3_)
         {
            _loc1_ = _loc4_ / _loc3_;
         }
         else
         {
            _loc1_ = 1 - (_loc4_ - _loc3_) / _loc3_;
         }
         this.x = this.x - 125 * _loc1_ * AssetManager.ContentScaleFactor;
         if(_loc1_ < 0.2)
         {
            _loc1_ = 0.2;
         }
         _loc1_ = _loc1_ * AssetManager.ContentScaleFactor;
         var _loc5_:* = _loc1_;
         this.scaleY = _loc5_;
         this.scaleX = _loc5_;
         this.visible = true;
      }
      
      override public function Dispose() : void
      {
         TweenLite.killTweensOf(this);
         _Tween = null;
         this.removeChild(_Star);
         _Star = null;
         this.removeChild(_Shadow);
         _Shadow = null;
         _RemoveCallback = null;
         super.Dispose();
      }
   }
}
