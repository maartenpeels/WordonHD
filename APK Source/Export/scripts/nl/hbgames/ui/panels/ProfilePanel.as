package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.ListButton;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.ui.list.ProfileHeaderListItem;
   import nl.hbgames.ui.list.ProfileHistoryListItem;
   import nl.hbgames.ui.list.ProfileStatListItem;
   import nl.hbgames.ui.list.ProfileVersusStatListItem;
   import nl.hbgames.ui.popups.MessageBox;
   import flash.events.MouseEvent;
   
   public class ProfilePanel extends BasePanel
   {
       
      private var _UserID:String;
      
      private var _IsFacebookID:Boolean;
      
      private var _DisplayName:String;
      
      private var _BtnAddFriend:ListButton;
      
      private var _BtnBlock:ListButton;
      
      public function ProfilePanel(param1:String, param2:Boolean = false)
      {
         _UserID = param1;
         _IsFacebookID = param2;
         super(new libProfileScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         WaitBox.Show();
         PHPWrapper.GetProfile(OnProfileReceived,_UserID,_IsFacebookID);
         var _loc1_:Boolean = ClientData.Instance.Social.IsBlocked(_UserID);
         _BtnAddFriend = new ListButton(_Content.btnAddFriend,OnAddFriendClick,Localization.Get("friends_add_friend_button"));
         _BtnBlock = new ListButton(_Content.btnBlock,OnBlockClick,!_loc1_?Localization.Get("profile_button_block"):Localization.Get("profile_button_unblock"));
         if(_UserID != ClientData.Instance.Player.ID && !_IsFacebookID)
         {
            if(ClientData.Instance.Social.GetFavorite(_UserID) != null)
            {
               _BtnAddFriend.Disable();
            }
         }
         else
         {
            _BtnAddFriend.Disable(0);
            _BtnBlock.Disable(0);
         }
      }
      
      private function OnProfileReceived(param1:Object) : void
      {
         var _loc2_:* = null;
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            _loc2_ = param1.profile;
            _DisplayName = _loc2_.displayname;
            _List.Add(new LabelListItem(Localization.Get("profile_label_title")));
            _List.Add(new ProfileHeaderListItem(_UserID,_loc2_.border,_IsFacebookID,_loc2_.displayname,_loc2_.medals,_loc2_.fbId));
            _List.Add(new ProfileHistoryListItem(_loc2_.gameHistory));
            _List.Add(new ProfileStatListItem(_loc2_,_UserID == ClientData.Instance.Player.ID));
            if(_UserID != ClientData.Instance.Player.ID)
            {
               _List.Add(new ProfileVersusStatListItem(_DisplayName,ClientData.Instance.Player.Name,_loc2_));
            }
            CenterList();
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("profile_stats_request_failed"),true);
            this.Close();
         }
      }
      
      private function OnAddFriendClick(param1:MouseEvent) : void
      {
         WaitBox.Show();
         PHPWrapper.AddFriend(OnFriendAdded,_UserID);
      }
      
      private function OnBlockClick(param1:MouseEvent) : void
      {
         if(!ClientData.Instance.Social.IsBlocked(_UserID))
         {
            new MessageBox(Localization.Get("block_player_title"),Localization.Get("block_player_body"),false,true,Block,true);
         }
         else
         {
            Unblock();
         }
      }
      
      private function Block() : void
      {
         WaitBox.Show();
         PHPWrapper.Block(OnBlockResult,_UserID);
      }
      
      private function OnBlockResult(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Social.AddBlock(_UserID);
            _BtnBlock.SetLabel(Localization.Get("profile_button_unblock"));
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("block_player_failed"),true);
         }
      }
      
      private function Unblock() : void
      {
         WaitBox.Show();
         PHPWrapper.Unblock(OnUnblockResult,_UserID);
      }
      
      private function OnUnblockResult(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Social.RemoveBlock(_UserID);
            _BtnBlock.SetLabel(Localization.Get("profile_button_block"));
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("unblock_player_failed"),true);
         }
      }
      
      private function OnFriendAdded(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Social.AddFavorite(_UserID,_DisplayName);
            _BtnAddFriend.Disable();
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_add_friend"),false);
         }
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
      }
      
      override public function Dispose() : void
      {
         _BtnBlock.Dispose();
         _BtnBlock = null;
         _BtnAddFriend.Dispose();
         _BtnAddFriend = null;
         _DisplayName = null;
         _UserID = null;
         super.Dispose();
      }
   }
}
