package nl.hbgames.utils
{
   import flash.utils.getTimer;
   
   public class Time extends Object
   {
      
      public static var ElapsedSeconds:Number = 0.0;
      
      public static var ElapsedMSeconds:Number = 0.0;
      
      public static var LastElapsedSeconds:Number = 0.0;
      
      public static var DeltaTime:Number = 0.0;
      
      public static var FrameRate:Number = 0.0;
      
      public static var ElapsedFrames:int = 0;
      
      public static var SessionTime:Number = 0;
      
      private static var _FrameCount:int = 0;
      
      private static var _LastTime:int;
       
      public function Time()
      {
         super();
         ElapsedSeconds = 0;
         ElapsedMSeconds = 0;
         LastElapsedSeconds = 0;
         DeltaTime = 0;
         FrameRate = 0;
         ElapsedFrames = 0;
      }
      
      public function Update() : void
      {
         ElapsedMSeconds = getTimer();
         ElapsedSeconds = ElapsedMSeconds / 1000;
         DeltaTime = ElapsedSeconds - LastElapsedSeconds;
         LastElapsedSeconds = ElapsedSeconds;
         SessionTime = §§dup().SessionTime + DeltaTime;
         ElapsedFrames = ElapsedFrames + 1;
         var _loc1_:int = getTimer();
         if(_loc1_ - 1000 > _LastTime)
         {
            FrameRate = Math.round(_FrameCount / (_loc1_ - _LastTime) * 1000);
            _LastTime = _loc1_;
            _FrameCount = 0;
         }
         _FrameCount = _FrameCount + 1;
      }
      
      public function Dispose() : void
      {
      }
   }
}
