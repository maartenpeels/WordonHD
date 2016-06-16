package nl.hbgames.ui.list
{
   import flash.events.MouseEvent;
   import nl.hbgames.managers.AssetManager;
   
   public class CheckListItem extends BaseListItem
   {
       
      private var _ToggleCallback:Function;
      
      private var _Label:String;
      
      private var _IsChecked:Boolean;
      
      public function CheckListItem(param1:Function, param2:String = "", param3:String = null)
      {
         _ToggleCallback = param1;
         _Label = param2;
         super(AssetManager.GetDefinition(param3?param3:"libListSuggestionPopupContentNoImage",false,false));
      }
      
      public function get IsChecked() : Boolean
      {
         return _IsChecked;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _IsChecked = true;
         _Content.gotoAndStop(2);
         _Content.label.text = _Label;
         _Content.addEventListener("click",OnToggle);
      }
      
      private function OnToggle(param1:MouseEvent) : void
      {
         if(!ScrollingList.IsDragging)
         {
            _IsChecked = !_IsChecked;
            _Content.gotoAndStop(_IsChecked?2:1.0);
            if(_ToggleCallback != null)
            {
               _ToggleCallback(this);
            }
         }
      }
      
      public function Check(param1:Boolean, param2:Boolean = true) : void
      {
         _IsChecked = param1;
         _Content.gotoAndStop(_IsChecked?2:1.0);
         if(param2)
         {
            if(_ToggleCallback != null)
            {
               _ToggleCallback(this);
            }
         }
      }
      
      override public function Dispose() : void
      {
         _Content.removeEventListener("click",OnToggle);
         _Label = null;
         _ToggleCallback = null;
         super.Dispose();
      }
   }
}
