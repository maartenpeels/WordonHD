package nl.hbgames.ui.list
{
   import flash.events.MouseEvent;
   import nl.hbgames.WordOn;
   import nl.hbgames.managers.AssetManager;
   
   public class ThumbNavigationListItem extends BaseListItem
   {
      
      public static const THUMB_PLAY_RANDOM:int = 1;
      
      public static const THUMB_PLAY_SEARCH:int = 2;
      
      public static const THUMB_PLAY_WOFRIEND:int = 3;
      
      public static const THUMB_PLAY_FBFRIEND:int = 4;
      
      public static const THUMB_PLAY_PRACTICE:int = 5;
      
      public static const THUMB_INVITE_CODE:int = 6;
      
      public static const THUMB_INVITE_FB:int = 7;
      
      public static const THUMB_INVITE_TWITTER:int = 8;
      
      public static const THUMB_INVITE_MSG:int = 9;
      
      public static const THUMB_REDEEM:int = 10;
       
      private var _Title:String;
      
      private var _Description:String;
      
      private var _Callback:Function;
      
      private var _ThumbID:int;
      
      public function ThumbNavigationListItem(param1:String, param2:String, param3:int, param4:Function)
      {
         _Title = param1;
         _Description = param2;
         _ThumbID = param3;
         _Callback = param4;
         super(AssetManager.GetDefinition("libListNavigationThumbContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         ChangeTitle(_Title);
         ChangeDescription(_Description);
         _Content.mcThumb.gotoAndStop(_ThumbID);
         _Content.addEventListener("click",OnNextStateClick);
      }
      
      public function ChangeTitle(param1:String) : void
      {
         _Title = param1;
         _Content.lblCaption.text = _Title;
      }
      
      public function ChangeDescription(param1:String) : void
      {
         _Description = param1;
         _Content.lblSub.text = _Description;
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
