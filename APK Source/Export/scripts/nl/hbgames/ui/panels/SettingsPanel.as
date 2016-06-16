package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.list.MyProfileListItem;
   import nl.hbgames.ui.list.NavigationListItem;
   import nl.hbgames.ui.list.ToggleListItem;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.list.ThumbNavigationListItem;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.AppData;
   import nl.hbgames.ui.list.NoteListItem;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.managers.ShareManager;
   import nl.hbgames.ui.list.ScrollingList;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.Serializer;
   import nl.hbgames.ui.popups.MessageBox;
   import flash.events.MouseEvent;
   
   public class SettingsPanel extends BasePanel
   {
       
      private var _MyProfile:MyProfileListItem;
      
      private var _NavAccountSettings:NavigationListItem;
      
      private var _ToggleEnableAudio:ToggleListItem;
      
      private var _ToggleEnableNotifications:ToggleListItem;
      
      private var _ToggleGameTips:ToggleListItem;
      
      private var _GameTipsSettingChanged:Boolean;
      
      public function SettingsPanel()
      {
         super(new libSettingsScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _List.Add(new LabelListItem(Localization.Get("profile_label_title"),1));
         _MyProfile = §§dup(new MyProfileListItem());
         _List.Add(new MyProfileListItem());
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_redeem_title"),Localization.Get("new_game_invite_redeem_sub"),10,OnRedeemCode));
         _List.Add(new LabelListItem(Localization.Get("tell_friend_label"),2));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_promo_sub"),Localization.Get("new_game_invite_promo_title"),6,OnInviteCode));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_facebook_title"),Localization.Get("new_game_invite_facebook_sub"),7,OnInviteFB));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_twitter_title"),Localization.Get("new_game_invite_twitter_sub"),8,OnInviteTwitter));
         _List.Add(new ThumbNavigationListItem(Localization.Get("new_game_invite_more_title"),Localization.Get("new_game_invite_more_sub"),9,OnInviteMore));
         _List.Add(new LabelListItem(Localization.Get("settings_label"),3));
         _NavAccountSettings = §§dup(new NavigationListItem(Localization.Get("settings_account_title"),Localization.Get("settings_account_description",ClientData.Instance.Player.Name),OnAccountSettingsClick));
         _List.Add(new NavigationListItem(Localization.Get("settings_account_title"),Localization.Get("settings_account_description",ClientData.Instance.Player.Name),OnAccountSettingsClick));
         _ToggleEnableAudio = §§dup(new ToggleListItem(Localization.Get("settings_audio_title"),Localization.Get("settings_audio_description"),AppData.Instance.Audio,OnAudioToggled));
         _List.Add(new ToggleListItem(Localization.Get("settings_audio_title"),Localization.Get("settings_audio_description"),AppData.Instance.Audio,OnAudioToggled));
         _ToggleEnableNotifications = §§dup(new ToggleListItem(Localization.Get("settings_notifications_title"),Localization.Get("settings_notifications_description"),ClientData.Instance.IsAllowingNotifications,OnNotificationsToggled));
         _List.Add(new ToggleListItem(Localization.Get("settings_notifications_title"),Localization.Get("settings_notifications_description"),ClientData.Instance.IsAllowingNotifications,OnNotificationsToggled));
         _List.Add(new NavigationListItem(Localization.Get("settings_language_title"),Localization.Get("settings_language_description"),OnLanguageSettingsClick));
         _List.Add(new NavigationListItem(Localization.Get("settings_logout_title"),Localization.Get("settings_logout_desc"),OnLogOutClick));
         _List.Add(new LabelListItem(Localization.Get("help_label"),3));
         _ToggleGameTips = §§dup(new ToggleListItem(Localization.Get("settings_gametips_title"),Localization.Get("settings_gametips_desc"),AppData.Instance.ShowGameTips,OnGameTipsClick));
         _List.Add(new ToggleListItem(Localization.Get("settings_gametips_title"),Localization.Get("settings_gametips_desc"),AppData.Instance.ShowGameTips,OnGameTipsClick));
         _List.Add(new NavigationListItem(Localization.Get("settings_tutorial_title"),Localization.Get("settings_tutorial_desc"),OnTutorialClick));
         _List.Add(new NavigationListItem(Localization.Get("settings_wofb_title"),Localization.Get("settings_wofb_desc"),OnWOFBClick));
         _List.Add(new NavigationListItem(Localization.Get("settings_help_title"),Localization.Get("settings_help_desc"),OnHelpClick));
         _List.Add(new NavigationListItem(Localization.Get("settings_legal_title"),Localization.Get("settings_legal_desc"),OnLegalClick));
         _List.Add(new NoteListItem("WordOn HD v1.88 (build 1)"));
         CenterList();
      }
      
      private function OnRedeemCode() : void
      {
         PanelManager.Instance.CloseAll();
         LogicManager.Instance.SetState("Promoredeem");
      }
      
      private function OnInviteCode() : void
      {
         PanelManager.Instance.CloseAll();
         LogicManager.Instance.SetState("Promoshare");
      }
      
      private function OnInviteFB() : void
      {
         var _loc1_:String = Localization.Get("promoshare_sharemsg_body","http://www.wordonhd.com/play",ClientData.Instance.InviteCode,ClientData.Instance.Player.Name);
         FBWrapper.Post(_loc1_);
      }
      
      private function OnInviteTwitter() : void
      {
         ShareManager.SharePromoMessageTwitter();
      }
      
      private function OnInviteMore() : void
      {
         ShareManager.SharePromoMessageNative();
      }
      
      private function OnTutorialClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            Close();
            LogicManager.Instance.SetState("GameTutorial");
         }
      }
      
      private function OnWOFBClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            ShareManager.ShowWordOnFBPage();
         }
      }
      
      private function OnHelpClick() : void
      {
      }
      
      private function OnGameTipsClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            AppData.Instance.ShowGameTips = !AppData.Instance.ShowGameTips;
            _GameTipsSettingChanged = true;
         }
      }
      
      private function OnNotificationsToggled() : void
      {
         var _loc2_:* = false;
         var _loc1_:* = false;
         if(!ScrollingList.IsDragging)
         {
            WaitBox.Show("",10);
            _loc2_ = _ToggleEnableNotifications.Checked;
            if(_loc2_)
            {
               _loc1_ = ClientData.Instance.IsAllowingNotifications;
               ClientData.Instance.IsAllowingNotifications = true;
               PHPWrapper.AddDeviceToken(OnNotificationStatusUpdated,ClientData.Instance.DeviceToken);
               ClientData.Instance.IsAllowingNotifications = _loc1_;
            }
            else
            {
               PHPWrapper.ResetDeviceToken(OnNotificationStatusUpdated);
            }
         }
      }
      
      private function OnNotificationStatusUpdated(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.IsAllowingNotifications = _ToggleEnableNotifications.Checked;
            Serializer.Instance.Serialize();
         }
         else
         {
            _ToggleEnableNotifications.Toggle(false);
            new MessageBox(Localization.Get("popup_setting_toggle_fail_title"),Localization.Get("popup_setting_toggle_fail_body"),true);
         }
      }
      
      private function OnAudioToggled() : void
      {
         if(!ScrollingList.IsDragging)
         {
            AppData.Instance.Audio = _ToggleEnableAudio.Checked;
         }
      }
      
      private function OnAccountSettingsClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            new EditAccountPanel(OnAccountEdited);
         }
      }
      
      private function OnAccountEdited() : void
      {
         _MyProfile.LoadAvatar();
         _NavAccountSettings.ChangeDescription(Localization.Get("settings_account_description",ClientData.Instance.Player.Name));
      }
      
      private function OnLanguageSettingsClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            new LanguagePanel();
         }
      }
      
      private function OnLegalClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            new LegalPanel();
         }
      }
      
      private function OnLogOutClick() : void
      {
         if(!ScrollingList.IsDragging)
         {
            new MessageBox(Localization.Get("logout_title"),Localization.Get("logout_are_you_sure"),false,true,OnPerformLogout,true);
         }
      }
      
      private function OnPerformLogout() : void
      {
         ClientData.Instance.Logout();
         this.Close();
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         AppData.Instance.Audio = _ToggleEnableAudio.Checked;
         Serializer.Instance.Serialize();
         if(_GameTipsSettingChanged)
         {
            LogicManager.Instance.SetState("GameOverview",null,"AnimLeft",true);
         }
         super.OnBackClick(param1);
      }
      
      override public function Dispose() : void
      {
         _MyProfile = null;
         _NavAccountSettings = null;
         _ToggleEnableAudio = null;
         _ToggleEnableNotifications = null;
         _ToggleGameTips = null;
         super.Dispose();
      }
   }
}
