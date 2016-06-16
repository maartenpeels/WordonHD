package nl.hbgames.logic.game.effects
{
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class BaseParticle extends Sprite
   {
       
      protected var _IsDead:Boolean = false;
      
      public function BaseParticle()
      {
         super();
         this.cacheAsBitmap = true;
         this.cacheAsBitmapMatrix = new Matrix();
      }
      
      public function get IsDead() : Boolean
      {
         return _IsDead;
      }
      
      public function Update() : void
      {
      }
      
      public function Dispose() : void
      {
      }
   }
}
