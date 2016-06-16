package nl.hbgames.logic.game.effects
{
   import com.greensock.TweenLite;
   import com.greensock.easing.Back;
   import nl.hbgames.managers.AssetManager;
   
   public class BoosterCoinParticle extends CoinParticle
   {
       
      private const ANIM_TIME:Number = 1.8;
      
      public function BoosterCoinParticle(param1:int, param2:int, param3:Function)
      {
         super(param1,param2,param3,"libCoinBonusReward");
      }
      
      override protected function Initialize() : void
      {
         _Tween = TweenLite.to(this,1.8,{
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
      
      override public function Progress() : void
      {
         var _loc2_:* = NaN;
         _loc2_ = 0.2;
         var _loc3_:* = 0.9;
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
         var _loc5_:* = _loc1_ * 1.5;
         this.scaleY = _loc5_;
         this.scaleX = _loc5_;
         this.visible = true;
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
