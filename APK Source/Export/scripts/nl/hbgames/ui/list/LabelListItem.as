package nl.hbgames.ui.list
{
   import nl.hbgames.managers.AssetManager;
   
   public class LabelListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _TextColor:int;
      
      private var _ColorFrame:uint;
      
      public function LabelListItem(param1:String, param2:uint = 1, param3:int = 16777215)
      {
         _Title = param1;
         _TextColor = param3;
         _ColorFrame = param2;
         super(AssetManager.GetDefinition("libListLabelContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.gotoAndStop(_ColorFrame);
         _Content.lblCaption.text = _Title;
         _Content.lblCaption.textColor = _TextColor;
      }
      
      override public function OnScrollStatus(param1:Boolean) : void
      {
         super.OnScrollStatus(param1);
      }
      
      override public function OnRendered(param1:Boolean) : void
      {
         super.OnRendered(param1);
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
