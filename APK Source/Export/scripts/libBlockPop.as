package
{
   import flash.display.MovieClip;
   
   public dynamic class libBlockPop extends MovieClip
   {
       
      public var mcScore:MovieClip;
      
      public function libBlockPop()
      {
         super();
         addFrameScript(48,this.frame49);
      }
      
      function frame49() : *
      {
         stop();
      }
   }
}
