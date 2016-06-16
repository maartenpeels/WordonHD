package nl.hbgames.ui.scrollwheel
{
   import nl.hbgames.managers.AssetManager;
   import flash.display.MovieClip;
   import flash.display.Bitmap;
   
   public class LabelWheelItem extends BaseWheelItem
   {
       
      private var _Caption:String;
      
      private var _Data:String;
      
      public function LabelWheelItem(param1:String, param2:String = null)
      {
         _Caption = param1;
         var _loc3_:MovieClip = AssetManager.GetDefinition("libTextWheelItem",true,true);
         _loc3_.lblCaption.text = _Caption;
         _loc3_.mcFlag.gotoAndStop(param2);
         super(new Bitmap(AssetManager.Flatten(_loc3_)));
         _Data = param2;
      }
      
      public function get Data() : String
      {
         return _Data;
      }
      
      override public function Dispose() : void
      {
         _Data = null;
         super.Dispose();
      }
   }
}
