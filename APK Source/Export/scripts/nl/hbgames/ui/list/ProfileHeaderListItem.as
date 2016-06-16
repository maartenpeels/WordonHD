package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.managers.social.SocialProfile;
   
   public class ProfileHeaderListItem extends BaseListItem
   {
       
      private var _UserID:String;
      
      private var _AvatarBorderID:int;
      
      private var _IsFacebookID:Boolean;
      
      private var _DisplayName:String;
      
      private var _FBName:String;
      
      private var _FBID:String;
      
      private var _Avatar:AvatarButton;
      
      private var _Medals:Array;
      
      public function ProfileHeaderListItem(param1:String, param2:int, param3:Boolean, param4:String, param5:String, param6:String = null)
      {
         var _loc7_:* = null;
         _UserID = param1;
         _AvatarBorderID = param2;
         _IsFacebookID = param3;
         _DisplayName = param4;
         _FBName = "";
         _FBID = param6;
         if(param6 != null)
         {
            _loc7_ = ClientData.Instance.Social.GetFacebookFriendByID(param6);
            if(_loc7_ != null)
            {
               _FBName = _loc7_.fullName;
            }
         }
         _Medals = param5 != null?param5.split(","):[0,0,0];
         super(AssetManager.GetDefinition("libListProfileHeader",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         var _loc1_:Boolean = _FBID != "" && _FBID != null;
         _Content.lblName.text = _DisplayName;
         _Content.lblFBName.text = _FBName;
         _Content.mcFBIcon.x = _Content.lblName.x + _Content.lblName.textWidth + 10 * AssetManager.ContentScaleFactor;
         _Content.mcFBIcon.visible = _loc1_;
         _Content.lblVerified.text = "";
         if(_AvatarBorderID == 999)
         {
            _Content.lblVerified.text = Localization.Get("profile_is_verified_account");
         }
         else if(_AvatarBorderID == 998)
         {
            _Content.lblVerified.text = Localization.Get("profile_is_devteam_account");
         }
         else
         {
            _Content.mcCheck.visible = false;
         }
         _Content.mcCheck.x = _Content.lblVerified.x + _Content.lblVerified.textWidth + 10 * AssetManager.ContentScaleFactor;
         _Avatar = new AvatarButton(false,_UserID,false,_AvatarBorderID);
         if(!_IsFacebookID)
         {
            _Avatar.LoadByUserID(_UserID,_AvatarBorderID,"medium",180,180);
         }
         else
         {
            _Avatar.LoadByFacebookID(_UserID,true,_AvatarBorderID,"medium",false,180,180);
         }
         _Content.mcImage.addChild(_Avatar);
         _Content.lblGoldWon.text = _Medals[0] + "x";
         _Content.lblSilverWon.text = _Medals[1] + "x";
         _Content.lblBronzeWon.text = _Medals[2] + "x";
      }
      
      override public function Dispose() : void
      {
         _Avatar.Dispose();
         _Content.mcImage.removeChild(_Avatar);
         _UserID = null;
         _DisplayName = null;
         _FBName = null;
         super.Dispose();
      }
   }
}
