package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class libBadges_3x2 extends MovieClip
   {
       
      public var lblCaption:TextField;
      
      public function libBadges_3x2()
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
