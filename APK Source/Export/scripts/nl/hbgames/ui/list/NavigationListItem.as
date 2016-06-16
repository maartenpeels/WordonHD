package nl.hbgames.ui.list
{
   import flash.events.MouseEvent;
   import nl.hbgames.WordOn;
   import nl.hbgames.managers.AssetManager;
   
   public class NavigationListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _Description:String;
      
      private var _Callback:Function;
      
      public function NavigationListItem(param1:String, param2:String, param3:Function)
      {
         _Title = param1;
         _Description = param2;
         _Callback = param3;
         super(AssetManager.GetDefinition("libListNavigationContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         ChangeTitle(_Title);
         ChangeDescription(_Description);
         _Content.addEventListener("click",OnNextStateClick);
      }
      
      public function ChangeTitle(param1:String) : void
      {
         _Title = param1;
         _Content.lblTitle.text = _Title;
      }
      
      public function ChangeDescription(param1:String) : void
      {
         _Description = param1;
         _Content.lblDescription.text = _Description;
      }
      
      private function OnNextStateClick(param1:MouseEvent) : void
      {
         if(!ScrollingList.IsDragging)
         {
            WordOn.Instance.Audio.Play("sfxButtonGeneral");
            _Callback();
         }
      }
      
      override public function Dispose() : void
      {
         _Content.removeEventListener("click",OnNextStateClick);
         super.Dispose();
      }
   }
}
