package nl.hbgames.ui.list
{
   import nl.hbgames.utils.CheckboxUtil;
   import nl.hbgames.WordOn;
   import nl.hbgames.managers.AssetManager;
   
   public class ToggleListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _Description:String;
      
      private var _Callback:Function;
      
      private var _Checked:Boolean;
      
      public function ToggleListItem(param1:String, param2:String, param3:Boolean, param4:Function = null)
      {
         _Title = param1;
         _Description = param2;
         _Checked = param3;
         _Callback = param4;
         super(AssetManager.GetDefinition("libListToggleContent",true,true));
      }
      
      public function get Checked() : Boolean
      {
         return _Checked;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = _Title;
         _Content.lblDescription.text = _Description;
         CheckboxUtil.RegisterSimple(_Content,_Checked,OnToggled);
      }
      
      private function OnToggled(param1:Boolean = true) : void
      {
         _Checked = !_Checked;
         if(param1 && _Callback != null)
         {
            _Callback();
         }
         WordOn.Instance.Audio.Play(_Checked?"sfxButtonGeneral":"sfxButtonClose");
      }
      
      public function Toggle(param1:Boolean = true) : void
      {
         _Content.checked = !_Content.checked;
         _Content.gotoAndStop(_Content.checked?2:1.0);
         OnToggled(false);
      }
      
      override public function Dispose() : void
      {
         CheckboxUtil.UnregisterSimple(_Content);
         super.Dispose();
      }
   }
}
