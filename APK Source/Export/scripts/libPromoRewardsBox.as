package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class libPromoRewardsBox extends MovieClip
   {
       
      public var lblTitle:TextField;
      
      public var btnClose:MovieClip;
      
      public var btnOK:MovieClip;
      
      public var mcLoader:libSmallLoader_3x2;
      
      public var mcIcons:MovieClip;
      
      public var lblMessage:TextField;
      
      public var mcImage:MovieClip;
      
      public function libPromoRewardsBox()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame3() : *
      {
         stop();
      }
   }
}
