package
{
   import flash.display.MovieClip;
   
   public dynamic class libOpponentThinkBubble extends MovieClip
   {
       
      public var mcBubble:MovieClip;
      
      public function libOpponentThinkBubble()
      {
         super();
         addFrameScript(12,this.frame13);
      }
      
      function frame13() : *
      {
         stop();
      }
   }
}
