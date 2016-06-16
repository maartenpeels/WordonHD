package com.tapjoy.extensions
{
   public class TapjoyDisplayAdSize extends Object
   {
      
      public static const TJC_DISPLAY_AD_SIZE_320X50:TapjoyDisplayAdSize = new TapjoyDisplayAdSize("320x50",320,50);
      
      public static const TJC_DISPLAY_AD_SIZE_640X100:TapjoyDisplayAdSize = new TapjoyDisplayAdSize("640x100",640,100);
      
      public static const TJC_DISPLAY_AD_SIZE_768X90:TapjoyDisplayAdSize = new TapjoyDisplayAdSize("768x90",768,90);
      
      public static const TJC_AD_BANNERSIZE_320X50:TapjoyDisplayAdSize = new TapjoyDisplayAdSize("320x50",320,50);
      
      public static const TJC_AD_BANNERSIZE_640X100:TapjoyDisplayAdSize = new TapjoyDisplayAdSize("640x100",640,100);
      
      public static const TJC_AD_BANNERSIZE_768X90:TapjoyDisplayAdSize = new TapjoyDisplayAdSize("768x90",768,90);
       
      private var _value:String;
      
      private var _width:int;
      
      private var _height:int;
      
      public function TapjoyDisplayAdSize(param1:String, param2:int, param3:int)
      {
         super();
         this._value = param1;
         this._width = param2;
         this._height = param3;
      }
      
      public static function getTapjoyDisplayAdSize(param1:String) : TapjoyDisplayAdSize
      {
         switch(param1)
         {
            case TJC_DISPLAY_AD_SIZE_320X50.value:
               return TJC_DISPLAY_AD_SIZE_320X50;
            case TJC_DISPLAY_AD_SIZE_640X100.value:
               return TJC_DISPLAY_AD_SIZE_640X100;
            case TJC_DISPLAY_AD_SIZE_768X90.value:
               return TJC_DISPLAY_AD_SIZE_768X90;
            case TJC_AD_BANNERSIZE_320X50.value:
               return TJC_AD_BANNERSIZE_320X50;
            case TJC_AD_BANNERSIZE_640X100.value:
               return TJC_AD_BANNERSIZE_640X100;
            case TJC_AD_BANNERSIZE_768X90.value:
               return TJC_AD_BANNERSIZE_768X90;
            default:
               return null;
         }
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get value() : String
      {
         return this._value;
      }
   }
}
