package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.BigFooterButton;
   import nl.hbgames.ui.list.InputListItem;
   import nl.hbgames.ui.list.PhotoListItem;
   import nl.hbgames.utils.MobileCamUtil;
   import flash.display.BitmapData;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.list.NavigationListItem;
   import nl.hbgames.config.Settings;
   import nl.hbgames.ui.popups.OptionsBox;
   import nl.hbgames.ui.popups.MessageBox;
   import flash.events.Event;
   import nl.hbgames.enums.AvatarSize;
   import flash.geom.Rectangle;
   import nl.hbgames.utils.ImageUtil;
   import flash.events.ErrorEvent;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.Base64;
   import flash.display.JPEGEncoderOptions;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.utils.RegularExpression;
   import nl.hbgames.data.MD5;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.AppData;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.LogicManager;
   
   public class EditAccountPanel extends BasePanel
   {
       
      private var _BtnSave:BigFooterButton;
      
      private var _Name:InputListItem;
      
      private var _Password:InputListItem;
      
      private var _Email:InputListItem;
      
      private var _Email2:InputListItem;
      
      private var _Image:PhotoListItem;
      
      private var _CameraUtil:MobileCamUtil;
      
      private var _Callback:Function;
      
      private var _IsImageModified:Boolean;
      
      private var _IsUsingFB:Boolean;
      
      private var _LargeImage:BitmapData;
      
      private var _DefaultPwdTxt:String;
      
      private var _IsPaying:Boolean;
      
      public function EditAccountPanel(param1:Function = null)
      {
         _Callback = param1;
         super(new libEditAccountScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _DefaultPwdTxt = Localization.Get("edit_profile_type_password");
         _BtnSave = new BigFooterButton(_Content.btnSave,OnSaveClick,Localization.Get("profile_save_changes"));
         _List.Add(new LabelListItem(Localization.Get("edit_profile_label")));
         if(!ClientData.Instance.IsFacebookUser)
         {
            _List.Add(new NavigationListItem(Localization.Get("guest_welcome_connect_fb"),Localization.Get("edit_profile_migrate_facebook"),OnUseFacebook));
         }
         _Name = §§dup(new InputListItem(Localization.Get("edit_profile_name"),ClientData.Instance.Player.Name,"default",false,null,12));
         _List.Add(new InputListItem(Localization.Get("edit_profile_name"),ClientData.Instance.Player.Name,"default",false,null,12));
         if(!ClientData.Instance.IsFacebookUser)
         {
            _Password = §§dup(new InputListItem(Localization.Get("edit_profile_password"),_DefaultPwdTxt,"default",true));
            _List.Add(new InputListItem(Localization.Get("edit_profile_password"),_DefaultPwdTxt,"default",true));
            _Email = §§dup(new InputListItem(Localization.Get("edit_profile_email"),ClientData.Instance.Player.Email,"email",false,null));
            _List.Add(new InputListItem(Localization.Get("edit_profile_email"),ClientData.Instance.Player.Email,"email",false,null));
            _Email2 = §§dup(new InputListItem(Localization.Get("edit_profile_email_again"),ClientData.Instance.Player.Email,"email",false,null));
            _List.Add(new InputListItem(Localization.Get("edit_profile_email_again"),ClientData.Instance.Player.Email,"email",false,null));
         }
         _Image = §§dup(new PhotoListItem(Localization.Get("edit_profile_picture"),ClientData.Instance.Player.ID,ClientData.Instance.Player.BorderID,function():void
         {
            if(Settings.IS_IOS)
            {
               new OptionsBox(Localization.Get("image_options_title"),OnImageOptionHandler,[{
                  "label":Localization.Get("popup_image_use_album"),
                  "enabled":true
               },{
                  "label":Localization.Get("popup_image_take_photo"),
                  "enabled":true
               },{
                  "label":Localization.Get("popup_image_use_facebook"),
                  "enabled":ClientData.Instance.IsFacebookUser
               }]);
            }
            else
            {
               new OptionsBox(Localization.Get("image_options_title"),OnImageOptionHandler,[{
                  "label":Localization.Get("popup_image_use_album"),
                  "enabled":true
               },{
                  "label":Localization.Get("popup_image_use_facebook"),
                  "enabled":ClientData.Instance.IsFacebookUser
               }]);
            }
         }));
         _List.Add(new PhotoListItem(Localization.Get("edit_profile_picture"),ClientData.Instance.Player.ID,ClientData.Instance.Player.BorderID,function():void
         {
            if(Settings.IS_IOS)
            {
               new OptionsBox(Localization.Get("image_options_title"),OnImageOptionHandler,[{
                  "label":Localization.Get("popup_image_use_album"),
                  "enabled":true
               },{
                  "label":Localization.Get("popup_image_take_photo"),
                  "enabled":true
               },{
                  "label":Localization.Get("popup_image_use_facebook"),
                  "enabled":ClientData.Instance.IsFacebookUser
               }]);
            }
            else
            {
               new OptionsBox(Localization.Get("image_options_title"),OnImageOptionHandler,[{
                  "label":Localization.Get("popup_image_use_album"),
                  "enabled":true
               },{
                  "label":Localization.Get("popup_image_use_facebook"),
                  "enabled":ClientData.Instance.IsFacebookUser
               }]);
            }
         }));
         _CameraUtil = new MobileCamUtil();
         _CameraUtil.addEventListener("complete",OnCameraImageLoaded);
         _CameraUtil.addEventListener("error",OnCameraError);
         _IsImageModified = false;
         _IsUsingFB = false;
         _IsPaying = false;
         CenterList();
      }
      
      private function OnImageOptionHandler(param1:int) : void
      {
         var _loc2_:* = true;
         if(Settings.IS_IOS)
         {
            switch(param1)
            {
               case 0:
                  _loc2_ = _CameraUtil.ShowGallery();
                  break;
               case 1:
                  _loc2_ = _CameraUtil.ShowCamera();
                  break;
               case 2:
                  _Image.Avatar.LoadByFacebookID(ClientData.Instance.FacebookID,true,0,"small",true);
                  _IsImageModified = true;
                  _IsUsingFB = true;
                  break;
            }
         }
         else
         {
            switch(param1)
            {
               case 0:
                  _loc2_ = _CameraUtil.ShowGallery();
                  break;
               case 1:
                  _Image.Avatar.LoadByFacebookID(ClientData.Instance.FacebookID,true,0,"small",true);
                  _IsImageModified = true;
                  _IsUsingFB = true;
                  break;
            }
         }
         if(!_loc2_)
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("camera_option_not_supported"),true);
         }
      }
      
      private function OnCameraImageLoaded(param1:Event) : void
      {
         this.stage.displayState = "fullScreenInteractive";
         var _loc3_:Rectangle = AvatarSize.GetRect("large");
         var _loc2_:Rectangle = AvatarSize.GetRect("small");
         _LargeImage = ImageUtil.CreateThumbnail(_CameraUtil.LoadedImage,_loc3_.width,_loc3_.height,_CameraUtil.Orientation);
         _Image.Avatar.SetImage(ImageUtil.CreateThumbnail(_CameraUtil.LoadedImage,_loc2_.width,_loc2_.height,_CameraUtil.Orientation),false);
         _IsImageModified = true;
         _IsUsingFB = false;
      }
      
      private function OnCameraError(param1:ErrorEvent) : void
      {
         this.stage.displayState = "fullScreenInteractive";
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         e = param1;
         var unsaved:Boolean = false;
         if(_IsImageModified)
         {
            unsaved = true;
         }
         if(_Email != null)
         {
            if(ClientData.Instance.IsGuest && _Email.Value != "" && _Email.Value != ClientData.Instance.Player.Email)
            {
               unsaved = true;
            }
         }
         if(_Name.Value != ClientData.Instance.Player.Name)
         {
            unsaved = true;
         }
         if(_Password != null)
         {
            if(_Password.Value != "" && _Password.Value != _DefaultPwdTxt)
            {
               unsaved = true;
            }
         }
         if(unsaved)
         {
            new MessageBox(Localization.Get("attention"),Localization.Get("account_unsaved_continue"),false,true,function():void
            {
               Close();
            },true);
         }
         else
         {
            super.OnBackClick(e);
         }
      }
      
      private function OnSaveClick(param1:MouseEvent = null) : void
      {
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(_CameraUtil.IsLoading || _Image.Avatar.IsBusy)
         {
            return;
            §§push(new MessageBox(Localization.Get("please_wait"),Localization.Get("avatar_image_still_loading")));
         }
         else
         {
            if(CheckForm())
            {
               if(ClientData.Instance.IsGuest)
               {
                  if(_Email.Value == "" || _Password.Value == "" || _Password.Value == _DefaultPwdTxt || _Name.Value == ClientData.Instance.Player.Name)
                  {
                     return;
                     §§push(new MessageBox(Localization.Get("sorry"),Localization.Get("edit_profile_guest_requires_more")));
                  }
               }
               WaitBox.Show();
               _loc5_ = "";
               if(_IsImageModified)
               {
                  _loc4_ = AvatarSize.GetRect("large");
                  _loc3_ = _IsUsingFB?ImageUtil.CreateThumbnail(_Image.Avatar.SourceImage,_loc4_.width,_loc4_.height):_LargeImage;
                  _loc5_ = Base64.EncodeByteArray(_loc3_.encode(_loc3_.rect,new JPEGEncoderOptions()));
               }
               _loc2_ = "";
               if(_Email != null && _Email.Value != ClientData.Instance.Player.Email)
               {
                  _loc2_ = _Email.Value;
               }
               PHPWrapper.ChangeAccount(OnAccountSaved,_loc2_.toLowerCase(),_Name.Value != ClientData.Instance.Player.Name?_Name.Value:"",_Password == null || _Password.Value == "" || _Password.Value == _DefaultPwdTxt?"":_Password.Value,_loc5_,_IsPaying);
            }
            return;
         }
      }
      
      private function CheckForm() : Boolean
      {
         if(_Email != null)
         {
            if(_Email.Value == null || _Email.Value == "" || !RegularExpression.EMAIL.test(_Email.Value) || _Email.Value.toLowerCase() != _Email2.Value.toLowerCase())
            {
               new MessageBox(Localization.Get("whoops"),Localization.Get("account_form_invalid_email"),false);
               return false;
            }
         }
         if(_Name.Value == null || _Name.Value == "" || _Name.Value.length < 2 || _Name.Value.length > 12)
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("account_form_invalid_name",2,12),false);
            return false;
         }
         if(_Password != null)
         {
            if(_Password.Value != null && _Password.Value != "" && _Password.Value.length < 4)
            {
               new MessageBox(Localization.Get("whoops"),Localization.Get("account_form_invalid_password",4),false);
               return false;
            }
         }
         return true;
      }
      
      private function OnAccountSaved(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            if(_Password)
            {
               if(_Password.Value != "" && _Password.Value != _DefaultPwdTxt)
               {
                  ClientData.Instance.PasswordHash = MD5.encrypt(_Password.Value + "ohf87ewyr87wfhj");
               }
            }
            if(_Email)
            {
               ClientData.Instance.Player.Email = _Email.Value;
            }
            ClientData.Instance.Login(null,response,false);
            new MessageBox(Localization.Get("awesome"),Localization.Get("account_save_success"));
            _Image.Avatar.ClearFromCache(ClientData.Instance.Player.ID);
            if(_IsUsingFB)
            {
               _Image.Avatar.ClearFromCache(ClientData.Instance.FacebookID);
            }
            if(_Callback != null)
            {
               _Callback();
            }
            if(_IsPaying)
            {
               SWRVETracker.Instance.TrackVirtualPurchase(1,"consumable.namechange",AppData.Instance.CostNameChange,"stars");
            }
            _IsPaying = false;
            this.Close();
         }
         else if(response.error == 11)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("username_already_exists"),false);
         }
         else if(response.error == 6)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("email_already_exists"),false);
         }
         else if(response.error == 4)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_username"),false);
         }
         else if(response.error == 5)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("account_form_invalid_email"),false);
         }
         else if(response.error == 21)
         {
            new MessageBox(Localization.Get("attention"),Localization.Get("max_name_changes_reached",AppData.Instance.CostNameChange),false,true,function():void
            {
               _IsPaying = true;
               OnSaveClick();
            },true);
         }
         else if(response.error == 20)
         {
            new MessageBox(Localization.Get("shop_not_enough_stars_title"),Localization.Get("shop_not_enough_stars"),false,true,function():void
            {
               PanelManager.Instance.CloseAll();
               LogicManager.Instance.SetState("ShopOverview");
            },true,null,true,true);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("account_save_fail"),true);
         }
      }
      
      private function OnUseFacebook() : void
      {
         ClientData.Instance.MigrateToFacebook(OnFacebookConnected);
      }
      
      private function OnFacebookConnected() : void
      {
         Close();
      }
      
      override public function Dispose() : void
      {
         _Name = null;
         _Email = null;
         _Email2 = null;
         _Password = null;
         _DefaultPwdTxt = null;
         _BtnSave.Dispose();
         _BtnSave = null;
         if(_LargeImage != null)
         {
            _LargeImage.dispose();
            _LargeImage = null;
         }
         _CameraUtil.removeEventListener("complete",OnCameraImageLoaded);
         _CameraUtil.removeEventListener("error",OnCameraError);
         _CameraUtil.Dispose();
         _CameraUtil = null;
         super.Dispose();
      }
   }
}
