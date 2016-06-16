package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.ListButton;
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.managers.social.SocialProfile;
   import nl.hbgames.managers.AssetManager;
   
   public class FacebookPlayerListItem extends BaseListItem
   {
       
      private var _FBID:String;
      
      private var _Name:String;
      
      private var _BtnAction:ListButton;
      
      private var _Avatar:AvatarButton;
      
      private var _IsPlayer:Boolean;
      
      public function FacebookPlayerListItem(param1:SocialProfile)
      {
         _FBID = param1.id;
         _Name = param1.fullName;
         _IsPlayer = param1.hasAppInstalled;
         super(AssetManager.GetDefinition("libListFacebookInviteContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblName.text = _Name;
         if(_IsPlayer)
         {
            _Content.btnInvite.visible = false;
            _BtnAction = new ListButton(_Content.btnPlay,OnActionClick,Localization.Get("list_play"));
            if(ClientData.Instance.GameListData.GetUserInvited(_FBID))
            {
               _BtnAction.Disable();
            }
         }
         else
         {
            _Content.btnPlay.visible = false;
            _BtnAction = new ListButton(_Content.btnInvite,OnActionClick,Localization.Get("list_invite"));
         }
      }
      
      private function OnActionClick(param1:MouseEvent) : void
      {
         if(!ScrollingList.IsDragging)
         {
            if(_IsPlayer)
            {
               ClientData.Instance.LastNewGameOpponentNames = [_Name];
               LogicManager.Instance.SetState("NewGameSettings",{
                  "fbIds":[_FBID],
                  "names":[_Name]
               });
            }
            else
            {
               FBWrapper.Invite(Localization.Get("facebook_post_invite_friend",ClientData.Instance.Player.Name),[_FBID]);
            }
         }
      }
      
      override public function OnScrollStatus(param1:Boolean) : void
      {
         super.OnScrollStatus(param1);
      }
      
      override public function OnRendered(param1:Boolean) : void
      {
         super.OnRendered(param1);
         if(param1)
         {
            if(!_Avatar)
            {
               _Avatar = new AvatarButton(true,null,true);
               _Content.mcImage.addChild(_Avatar);
            }
            _Avatar.LoadByFacebookID(_FBID,_IsPlayer,0,"small");
         }
         else if(!param1 && _Avatar)
         {
            _Avatar.ClearFromWaitQueue();
         }
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         _BtnAction.Dispose();
         _BtnAction = null;
         if(_Avatar != null)
         {
            _Avatar.Dispose();
            _Content.mcImage.removeChild(_Avatar);
            _Avatar = null;
         }
         _FBID = null;
         _Name = null;
         super.Dispose();
      }
   }
}
