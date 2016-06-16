package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.ListButton;
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import flash.events.Event;
   import nl.hbgames.WordOn;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.managers.AssetManager;
   
   public class PlayerListItem extends BaseListItem
   {
       
      private var _ID:String;
      
      private var _BorderID:int;
      
      private var _Name:String;
      
      private var _BtnAction:ListButton;
      
      private var _BtnDelete:ListButton;
      
      private var _Avatar:AvatarButton;
      
      private var _Deletable:Boolean;
      
      public function PlayerListItem(param1:Object, param2:Boolean = true)
      {
         _ID = param1.id;
         _Name = param1.displayname;
         _BorderID = param1.border;
         _Deletable = param2;
         super(AssetManager.GetDefinition("libListInviteContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblName.text = _Name;
         _BtnAction = new ListButton(_Content.btnAction,OnActionClick,Localization.Get("list_play"));
         _BtnDelete = new ListButton(_Content.btnDelete,OnDeleteClick,Localization.Get("list_delete"));
         _BtnDelete.Hide();
         _BtnAction.Show();
         if(_Deletable)
         {
            this.addEventListener("SwipeLeft",OnSwipeDelete);
            this.addEventListener("SwipeRight",OnSwipeDelete);
         }
         if(ClientData.Instance.GameListData.GetUserInvited(_ID))
         {
            _BtnAction.Disable();
         }
      }
      
      private function OnSwipeDelete(param1:Event) : void
      {
         _BtnDelete.Show();
         _BtnAction.Hide();
         WordOn.Instance.stage.addEventListener("mouseDown",OnCancelDelete);
      }
      
      private function OnCancelDelete(param1:MouseEvent) : void
      {
         if(_BtnDelete.Content.hitTestPoint(param1.stageX,param1.stageY))
         {
            return;
         }
         this.parent.parent.stage.removeEventListener("mouseDown",OnCancelDelete);
         _BtnDelete.Hide();
         _BtnAction.Show();
      }
      
      private function OnActionClick(param1:MouseEvent) : void
      {
         if(!ScrollingList.IsDragging)
         {
            ClientData.Instance.LastNewGameOpponentNames = [_Name];
            LogicManager.Instance.SetState("NewGameSettings",{
               "woIds":[_ID],
               "names":[_Name]
            });
         }
      }
      
      private function OnDeleteClick(param1:MouseEvent) : void
      {
         if(!ScrollingList.IsDragging)
         {
            WaitBox.Show();
            PHPWrapper.RemoveFriend(OnRemoveFriendResult,_ID);
         }
      }
      
      private function OnRemoveFriendResult(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Social.RemoveFavorite(_ID);
            _BtnAction.Disable();
            _BtnDelete.Disable();
            if(_Deletable)
            {
               this.removeEventListener("SwipeLeft",OnSwipeDelete);
               this.removeEventListener("SwipeRight",OnSwipeDelete);
               if(this.parent.parent.stage.hasEventListener("mouseDown"))
               {
                  this.parent.parent.stage.removeEventListener("mouseDown",OnCancelDelete);
               }
               _Deletable = false;
            }
            _ScrollingList.Remove(this);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_remove_friend"),false);
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
               _Avatar = new AvatarButton(true,null,false);
               _Content.mcImage.addChild(_Avatar);
            }
            _Avatar.LoadByUserID(_ID,_BorderID,"small");
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
         _BtnDelete.Dispose();
         _BtnDelete = null;
         if(_Avatar != null)
         {
            _Avatar.Dispose();
            _Content.mcImage.removeChild(_Avatar);
            _Avatar = null;
         }
         if(_Deletable)
         {
            this.removeEventListener("SwipeLeft",OnSwipeDelete);
            this.removeEventListener("SwipeRight",OnSwipeDelete);
            if(WordOn.Instance.stage.hasEventListener("mouseDown"))
            {
               WordOn.Instance.stage.removeEventListener("mouseDown",OnCancelDelete);
            }
         }
         _ID = null;
         _Name = null;
         super.Dispose();
      }
   }
}
