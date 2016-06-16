package nl.hbgames.ui.list
{
   import nl.hbgames.managers.AssetManager;
   
   public class StatListItem extends BaseListItem
   {
       
      private var _Description:String;
      
      private var _Value:String;
      
      public function StatListItem(param1:String, param2:String)
      {
         _Description = param1;
         _Value = param2;
         super(AssetManager.GetDefinition("libListStatContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblDescription.text = _Description;
         _Content.lblValue.text = _Value;
         _Content.mouseChildren = false;
         _Content.mouseEnabled = false;
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
         _Description = null;
         _Value = null;
         super.Dispose();
      }
   }
}
