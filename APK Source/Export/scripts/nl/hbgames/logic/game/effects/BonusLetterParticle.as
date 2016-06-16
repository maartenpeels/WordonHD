package nl.hbgames.logic.game.effects
{
   import nl.hbgames.logic.game.board.BlockSlot;
   import flash.display.Bitmap;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import nl.hbgames.managers.AssetManager;
   import com.greensock.easing.Strong;
   
   public class BonusLetterParticle extends BaseParticle
   {
       
      private const ANIM_TIME:Number = 1.0;
      
      private var _Letter:String;
      
      private var _Value:int;
      
      private var _TargetSlot:BlockSlot;
      
      private var _Graphic:Bitmap;
      
      private var _Tween:TweenLite;
      
      private var _Callback:Function;
      
      public function BonusLetterParticle(param1:String, param2:int, param3:BlockSlot, param4:Function = null)
      {
         _Letter = param1;
         _Value = param2;
         _TargetSlot = param3;
         _Callback = param4;
         _Graphic = AssetManager.GetAsBitmap("libEffectBlock",true,true,param1 + param2,true,OnModify);
         _Graphic.x = -(_Graphic.width >> 1);
         _Graphic.y = -(_Graphic.height >> 1);
         this.addChild(_Graphic);
         super();
         _Tween = TweenLite.to(this,1,{
            "x":param3.x,
            "y":param3.y,
            "ease":Strong.easeInOut,
            "onComplete":OnMoveReady,
            "delay":0.2
         });
      }
      
      private function OnModify(param1:MovieClip) : void
      {
         param1.lblLetter.text = _Letter;
         param1.lblValue.text = _Value;
      }
      
      private function OnMoveReady() : void
      {
         _TargetSlot.Block.visible = true;
         if(_Callback != null)
         {
            _Callback();
         }
         _Tween = TweenLite.to(this,1 / 2,{
            "alpha":0,
            "onComplete":OnFinished
         });
      }
      
      private function OnFinished() : void
      {
         _IsDead = true;
      }
      
      override public function Dispose() : void
      {
         TweenLite.killTweensOf(this);
         _Tween = null;
         this.removeChild(_Graphic);
         _Graphic = null;
         _TargetSlot = null;
         _Callback = null;
         super.Dispose();
      }
   }
}
