package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import flash.events.MouseEvent;
   import nl.hbgames.WordOn;
   import nl.hbgames.ui.panels.ProfilePanel;
   import nl.hbgames.managers.AssetManager;
   
   public class MyProfileListItem extends BaseListItem
   {
       
      private var _Avatar:AvatarButton;
      
      public function MyProfileListItem()
      {
         super(AssetManager.GetDefinition("libListMyProfileContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = Localization.Get("my_profile_item_caption");
         LoadAvatar();
         _Content.addEventListener("click",OnImageClick);
      }
      
      public function LoadAvatar() : void
      {
         if(_Avatar == null)
         {
            _Avatar = new AvatarButton(false,ClientData.Instance.Player.ID,true,ClientData.Instance.Player.BorderID);
            _Content.mcImage.addChild(_Avatar);
         }
         else
         {
            _Avatar.LoadByUserID(ClientData.Instance.Player.ID,ClientData.Instance.Player.BorderID);
         }
      }
      
      private function OnImageClick(param1:MouseEvent) : void
      {
         if(!ScrollingList.IsDragging)
         {
            WordOn.Instance.Audio.Play("sfxButtonGeneral");
            new ProfilePanel(ClientData.Instance.Player.ID);
         }
      }
      
      override public function Dispose() : void
      {
         _Content.removeEventListener("click",OnImageClick);
         if(_Avatar != null)
         {
            _Avatar.Dispose();
            _Content.mcImage.removeChild(_Avatar);
         }
         super.Dispose();
      }
   }
}
