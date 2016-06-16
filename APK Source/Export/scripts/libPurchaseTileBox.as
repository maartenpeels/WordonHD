package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class libPurchaseTileBox extends MovieClip
   {
       
      public var lblTitle:TextField;
      
      public var mcTileAnim:MovieClip;
      
      public var btnOK:MovieClip;
      
      public var lblMessage:TextField;
      
      public function libPurchaseTileBox()
      {
         super();
         addFrameScript(39,this.frame40);
      }
      
      function frame40() : *
      {
         stop();
      }
   }
}
