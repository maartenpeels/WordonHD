package com.tapjoy.extensions
{
   public class TapjoyTransition extends Object
   {
      
      public static const BottomToTop:TapjoyTransition = new TapjoyTransition(0);
      
      public static const TopToBottom:TapjoyTransition = new TapjoyTransition(1);
      
      public static const LeftToRight:TapjoyTransition = new TapjoyTransition(2);
      
      public static const RightToLeft:TapjoyTransition = new TapjoyTransition(3);
      
      public static const FadeEffect:TapjoyTransition = new TapjoyTransition(4);
      
      public static const NormalToBottom:TapjoyTransition = new TapjoyTransition(5);
      
      public static const NormalToTop:TapjoyTransition = new TapjoyTransition(6);
      
      public static const NormalToLeft:TapjoyTransition = new TapjoyTransition(7);
      
      public static const NormalToRight:TapjoyTransition = new TapjoyTransition(8);
      
      public static const FadeEffectReverse:TapjoyTransition = new TapjoyTransition(9);
      
      public static const Expand:TapjoyTransition = new TapjoyTransition(10);
      
      public static const Shrink:TapjoyTransition = new TapjoyTransition(11);
      
      public static const Flip:TapjoyTransition = new TapjoyTransition(12);
      
      public static const FlipReverse:TapjoyTransition = new TapjoyTransition(13);
      
      public static const PageCurl:TapjoyTransition = new TapjoyTransition(14);
      
      public static const PageCurlReverse:TapjoyTransition = new TapjoyTransition(15);
      
      public static const NoEffect:TapjoyTransition = new TapjoyTransition(-1);
       
      private var _value:int;
      
      public function TapjoyTransition(param1:int)
      {
         super();
         this._value = param1;
      }
      
      function get value() : int
      {
         return this._value;
      }
   }
}
