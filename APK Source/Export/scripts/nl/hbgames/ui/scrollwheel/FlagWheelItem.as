package nl.hbgames.ui.scrollwheel
{
   import nl.hbgames.managers.AssetManager;
   import flash.display.MovieClip;
   
   public class FlagWheelItem extends BaseWheelItem
   {
       
      private var _Key:String;
      
      private var _Name:String;
      
      public function FlagWheelItem(param1:String, param2:String)
      {
         super(AssetManager.GetDefinition("libFlagWheelItem",true,true));
         _Key = param1;
         _Name = param2;
         _Output = _Name;
         (_Content as MovieClip).gotoAndStop(_Key);
      }
      
      public function get LangKey() : String
      {
         return _Key;
      }
      
      public function get LangName() : String
      {
         return _Name;
      }
      
      override public function Dispose() : void
      {
         _Key = null;
         _Name = null;
         super.Dispose();
      }
   }
}
