package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.ui.buttons.ListButton;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.Localization;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.AssetManager;
   
   public class RankListItem extends BaseListItem
   {
       
      private var _UserID:String;
      
      private var _Name:String;
      
      private var _Score:int;
      
      private var _Border:int;
      
      private var _Rank:int;
      
      private var _Avatar:AvatarButton;
      
      private var _BtnPlay:ListButton;
      
      public function RankListItem(param1:String, param2:String, param3:int, param4:int, param5:int)
      {
         _UserID = param1?param1:"";
         _Name = param2?param2:"-";
         _Score = param3;
         _Border = param4;
         _Rank = param5;
         super(AssetManager.GetDefinition("libListRankContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Avatar = new AvatarButton(true,_UserID,true,_Border);
         _Content.mcImage.addChild(_Avatar);
         _Content.lblName.text = ClientData.Instance.Player.ID == _UserID?Localization.Get("rank_you"):_Name;
         _Content.lblScore.text = _Score.toString() + Localization.Get("points_postfix");
         if(_Rank <= 3 && _Score > 0)
         {
            _Content.lblRank.text = "";
            _Content.mcMedal.gotoAndStop(_Rank);
            _Content.mcMedal.mouseChildren = false;
            _Content.mcMedal.mouseEnabled = false;
         }
         else
         {
            _Content.lblRank.text = _Rank.toString();
            _Content.removeChild(_Content.mcMedal);
         }
         if(_UserID && _UserID != ClientData.Instance.Player.ID)
         {
            _BtnPlay = new ListButton(_Content.btnPlay,OnPlayClick,Localization.Get("general_button_challenge"));
            if(ClientData.Instance.GameListData.GetUserInvited(_UserID))
            {
               _BtnPlay.Disable();
            }
         }
         else
         {
            _Content.btnPlay.visible = false;
         }
      }
      
      private function OnPlayClick(param1:MouseEvent) : void
      {
         if(!ScrollingList.IsDragging)
         {
            new MessageBox(Localization.Get("rank_challenge_friend_title"),Localization.Get("rank_challenge_friend_body",_Name),false,true,OnProceedPlay,true);
         }
      }
      
      private function OnProceedPlay() : void
      {
         ClientData.Instance.LastNewGameOption = 1;
         ClientData.Instance.LastNewGameOpponentNames = [_Name];
         LogicManager.Instance.SetState("NewGameSettings",{
            "woIds":[_UserID],
            "names":[_Name]
         });
         PanelManager.Instance.CloseAll();
      }
      
      private function OnInviteSuccess() : void
      {
         _BtnPlay.Disable();
      }
      
      override public function Dispose() : void
      {
         if(_BtnPlay)
         {
            _BtnPlay.Dispose();
            _BtnPlay = null;
         }
         if(_Avatar)
         {
            _Avatar.Dispose();
            _Content.mcImage.removeChild(_Avatar);
         }
         super.Dispose();
      }
   }
}
