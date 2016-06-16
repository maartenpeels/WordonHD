package nl.hbgames.ui.list
{
   import nl.hbgames.utils.TextfieldUtil;
   import nl.hbgames.managers.AssetManager;
   
   public class InputListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _DefaultText:String;
      
      private var _KeyboardType:String;
      
      private var _IsPassword:Boolean;
      
      public function InputListItem(param1:String, param2:String = null, param3:String = "default", param4:Boolean = false, param5:String = null, param6:int = -1)
      {
         _Title = param1;
         _DefaultText = param2;
         _KeyboardType = param3;
         _IsPassword = param4;
         super(AssetManager.GetDefinition("libListInputContent",true,true));
         if(param5 != null)
         {
            _Content.txtInput.restrict = param5;
         }
         if(param6 != -1)
         {
            _Content.txtInput.maxChars = param6;
         }
      }
      
      public function get Value() : String
      {
         return _Content.txtInput.text;
      }
      
      public function get DefaultText() : String
      {
         return _DefaultText;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblCaption.text = _Title;
         _Content.txtInput.text = _DefaultText?_DefaultText:"";
         TextfieldUtil.Register(_Content.txtInput,_KeyboardType,true,_IsPassword);
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
         _KeyboardType = null;
         _Title = null;
         _DefaultText = null;
         TextfieldUtil.Unregister(_Content.txtInput);
         super.Dispose();
      }
   }
}
