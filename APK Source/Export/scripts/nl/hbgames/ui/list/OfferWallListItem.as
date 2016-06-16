package nl.hbgames.ui.list
{
   import flash.events.MouseEvent;
   import nl.hbgames.WordOn;
   import nl.hbgames.managers.AssetManager;
   
   public class OfferWallListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _Callback:Function;
      
      public function OfferWallListItem(param1:String, param2:Function)
      {
         _Title = param1;
         _Callback = param2;
         super(AssetManager.GetDefinition("libListPromoContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         ChangeTitle(_Title);
         _Content.addEventListener("click",OnNextStateClick);
      }
      
      public function ChangeTitle(param1:String) : void
      {
         _Title = param1;
         _Content.lblCaption.text = _Title;
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
