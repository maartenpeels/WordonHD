package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.AvatarButton;
   import flash.events.MouseEvent;
   import nl.hbgames.WordOn;
   import nl.hbgames.managers.AssetManager;
   
   public class PhotoListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _Avatar:AvatarButton;
      
      private var _UserID:String;
      
      private var _BorderID:int;
      
      private var _Callback:Function;
      
      public function PhotoListItem(param1:String, param2:String, param3:int, param4:Function)
      {
         _Title = param1;
         _UserID = param2;
         _BorderID = param3;
         _Callback = param4;
         super(AssetManager.GetDefinition("libListImageContent",true,true));
      }
      
      public function get Avatar() : AvatarButton
      {
         return _Avatar;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblCaption.text = _Title;
         _Avatar = new AvatarButton(false,_UserID,true,_BorderID);
         _Content.mcImage.addChild(_Avatar);
         _Content.addEventListener("click",OnImageClick);
      }
      
      private function OnImageClick(param1:MouseEvent) : void
      {
         WordOn.Instance.Audio.Play("sfxButtonGeneral");
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
         _Content.removeEventListener("click",OnImageClick);
         _Avatar.Dispose();
         _Content.mcImage.removeChild(_Avatar);
         _Title = null;
         _Callback = null;
         _UserID = null;
         super.Dispose();
      }
   }
}
