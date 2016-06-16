package nl.hbgames.logic.game.effects
{
   import flash.display.MovieClip;
   import flash.utils.clearTimeout;
   import nl.hbgames.managers.AssetManager;
   import flash.utils.setTimeout;
   
   public class BlockPopParticle extends BaseParticle
   {
       
      private var _Graphic:MovieClip;
      
      private var _TimeoutID:uint;
      
      private var _HasCalled:Boolean;
      
      public function BlockPopParticle(param1:int, param2:Boolean, param3:Function, param4:Number)
      {
         value = param1;
         addsToScore = param2;
         callback = param3;
         cbDelay = param4;
         _Graphic = new libBlockPop();
         if(addsToScore)
         {
            _Graphic.mcScore.label.text = "+" + value;
         }
         else
         {
            _Graphic.mcScore.label.text = value == 0?"-0":value.toString();
            _Graphic.mcScore.label.textColor = 6620678;
         }
         var _loc5_:* = AssetManager.ContentScaleFactor;
         _Graphic.scaleY = _loc5_;
         _Graphic.scaleX = _loc5_;
         this.addChild(_Graphic);
         super();
         _TimeoutID = setTimeout(function():void
         {
            _HasCalled = true;
         },cbDelay * 1000);
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_Graphic != null && _Graphic.currentFrame >= _Graphic.totalFrames && _HasCalled)
         {
            _IsDead = true;
         }
      }
      
      override public function Dispose() : void
      {
         clearTimeout(_TimeoutID);
         this.removeChild(_Graphic);
         _Graphic = null;
         super.Dispose();
      }
   }
}
