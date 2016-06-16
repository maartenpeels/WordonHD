package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class libTutorialBox extends MovieClip
   {
       
      public var btnNext:MovieClip;
      
      public var label:TextField;
      
      public var btnBack:MovieClip;
      
      public function libTutorialBox()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
