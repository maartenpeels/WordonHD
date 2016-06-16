package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.Localization;
   
   public class VersusListItem extends BaseListItem
   {
       
      private var _YourAvatar:AvatarButton;
      
      private var _OtherAvatar:AvatarButton;
      
      public function VersusListItem(param1:String, param2:String, param3:String, param4:String, param5:int, param6:int, param7:int)
      {
         super(AssetManager.GetDefinition("libListVersusContent",true,true));
         _YourAvatar = new AvatarButton(false,param1,true,ClientData.Instance.Player.BorderID);
         _Content.mcYourAvatar.addChild(_YourAvatar);
         _OtherAvatar = new AvatarButton(false,param2,true,param7);
         _Content.mcOtherAvatar.addChild(_OtherAvatar);
         _Content.lblVersus.text = Localization.Get("versus_short");
         _Content.lblYourName.text = param3;
         _Content.lblYourScore.text = param5 + " " + Localization.Get("points_postfix");
         _Content.lblOtherName.text = param4;
         _Content.lblOtherScore.text = param6 + " " + Localization.Get("points_postfix");
      }
      
      override public function Dispose() : void
      {
         _YourAvatar.Dispose();
         _Content.mcYourAvatar.removeChild(_YourAvatar);
         _OtherAvatar.Dispose();
         _Content.mcOtherAvatar.removeChild(_OtherAvatar);
         super.Dispose();
      }
   }
}
