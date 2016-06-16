package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.scrollwheel.ScrollingWheel;
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.game.TilesetData;
   import flash.display.Bitmap;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.scrollwheel.TileWheelItem;
   import nl.hbgames.events.ScrollEvent;
   import flash.events.MouseEvent;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.PopupManager;
   
   public class GameInviteBox extends BasePopup
   {
       
      private var _UserID:String;
      
      private var _PlayerName:String;
      
      private var _OpponentTileID:int;
      
      private var _DictionaryLanguage:String;
      
      private var _InviteID:String;
      
      private var _Border:int;
      
      private var _WheelTiles:ScrollingWheel;
      
      private var _Avatar:AvatarButton;
      
      private var _ButtonOK:PopupButton;
      
      private var _ButtonCancel:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      public function GameInviteBox(param1:String, param2:String, param3:String, param4:String, param5:int, param6:int)
      {
         if(ClientData.Instance.Social.IsBlocked(param3))
         {
            PHPWrapper.ProcessInvite(null,false,param1,1);
         }
         else if(!PopupManager.Instance.Search("InviteID",param1))
         {
            _InviteID = param1;
            _PlayerName = param2;
            _UserID = param3;
            _DictionaryLanguage = param4;
            _OpponentTileID = TilesetData.MakeValid(param5);
            _Border = param6;
            super(new libGameInviteBox());
         }
      }
      
      public function get InviteID() : String
      {
         return _InviteID;
      }
      
      override public function Initialize() : void
      {
         var _loc3_:* = 0;
         super.Initialize();
         _Content.lblTitle.htmlText = "<b>" + Localization.Get("popup_invite_received_title") + "</b>";
         _Content.lblName.text = _PlayerName;
         _Content.lblSelectTile.text = Localization.Get("popup_invite_select_tileset");
         _Content.lblLanguage.text = Localization.GetLanguageDescription(_DictionaryLanguage);
         _Content.mcFlags.gotoAndStop(_DictionaryLanguage);
         var _loc2_:Object = TilesetData.GetInfo(_OpponentTileID);
         _Content.lblOpponentTile.text = _loc2_.loca[Localization.ActiveLanguage] != null?_loc2_.loca[Localization.ActiveLanguage]:_loc2_.loca["en"];
         _Content.mcOpponentTile.addChild(new Bitmap(AssetManager.GetExternalTileset(_loc2_.id,false,true)));
         _Avatar = new AvatarButton(false,_UserID,true,_Border);
         _Content.mcPicture.addChild(_Avatar);
         _Content.mcFrame.visible = _Border == 0;
         _ButtonOK = new PopupButton(_Content.btnOK,OnAcceptClick,Localization.Get("invite_accept"),"sfxButtonConfirm");
         _ButtonCancel = new PopupButton(_Content.btnCancel,OnDeclineClick,Localization.Get("invite_decline"),"sfxButtonClose");
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnDeclineClick);
         _WheelTiles = new ScrollingWheel(_Content.mcTiles,TilesetData.GetTileListIndex(ClientData.Instance.CurrentTilesetID),5,20 * AssetManager.ContentScaleFactor,"ScrollHorizontal",20);
         var _loc1_:Array = TilesetData.GetSelectableTiles();
         _loc3_ = 0;
         while(_loc3_ < _loc1_.length)
         {
            _WheelTiles.Add(new TileWheelItem(_loc1_[_loc3_]));
            _loc3_++;
         }
         _WheelTiles.Initialize(_Content.lblSelectedTile);
         _WheelTiles.addEventListener("Selected",OnTileSelected);
         OnTileSelected(null);
      }
      
      private function OnTileSelected(param1:ScrollEvent = null) : void
      {
         if(TileWheelItem(_WheelTiles.SelectedItem).IsAvailable)
         {
            _ButtonOK.SetLabel(Localization.Get("invite_accept"));
         }
         else
         {
            _ButtonOK.SetLabel(Localization.Get("invite_unlock"));
         }
      }
      
      private function OnAcceptClick(param1:MouseEvent = null) : void
      {
         this.visible = true;
         if(TileWheelItem(_WheelTiles.SelectedItem).IsAvailable)
         {
            PHPWrapper.ProcessInvite(OnInviteAccepted,true,_InviteID,TileWheelItem(_WheelTiles.SelectedItem).ID);
            SWRVETracker.Instance.TrackCustomEvent("game.friend.invitation_accepted",{
               "dictionary":_DictionaryLanguage,
               "loginType":ClientData.Instance.LoginType,
               "activeGames":ClientData.Instance.GameListData.ActiveAmount,
               "fbGameFriends":ClientData.Instance.Social.FacebookPlayers.length,
               "gameFriends":ClientData.Instance.Social.FavoritesList.length
            });
            Remove();
         }
         else
         {
            this.visible = false;
            new BuyTilesBox(TileWheelItem(_WheelTiles.SelectedItem).ID,OnAcceptClick,true,OnBuyCancel);
         }
      }
      
      private function OnBuyCancel() : void
      {
         this.visible = true;
      }
      
      private function OnDeclineClick(param1:MouseEvent = null) : void
      {
         PHPWrapper.ProcessInvite(OnInviteDeclined,false,_InviteID,TileWheelItem(_WheelTiles.SelectedItem).ID);
         SWRVETracker.Instance.TrackCustomEvent("game.friend.invitation_declined",{
            "dictionary":_DictionaryLanguage,
            "loginType":ClientData.Instance.LoginType,
            "activeGames":ClientData.Instance.GameListData.ActiveAmount,
            "fbGameFriends":ClientData.Instance.Social.FacebookPlayers.length,
            "gameFriends":ClientData.Instance.Social.FavoritesList.length
         });
         Remove();
      }
      
      private function OnInviteAccepted(param1:Object) : void
      {
         response = param1;
         if(response.result != ":)")
         {
            if(response.error == 15)
            {
               new MessageBox(Localization.Get("sorry"),Localization.Get("max_game_limit_reached"),true,true,function():void
               {
                  LogicManager.Instance.SetState("ShopOverview");
                  PanelManager.Instance.CloseAll();
               },true);
            }
            else if(response.error == 16)
            {
               new MessageBox(Localization.Get("sorry"),Localization.Get("max_game_limit_reached_other_player",_PlayerName),true);
            }
         }
      }
      
      private function OnInviteDeclined(param1:Object) : void
      {
         if(param1.result == ":(")
         {
         }
      }
      
      override public function OnBackHandler() : void
      {
         OnDeclineClick();
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_WheelTiles != null)
         {
            _WheelTiles.Update();
         }
      }
      
      override public function Dispose() : void
      {
         this.visible = true;
         if(_Avatar != null)
         {
            _Avatar.Dispose();
            _Content.mcPicture.removeChild(_Avatar);
            _Avatar = null;
         }
         if(_ButtonOK != null)
         {
            _ButtonOK.Dispose();
            _ButtonOK = null;
         }
         if(_ButtonCancel != null)
         {
            _ButtonCancel.Dispose();
            _ButtonCancel = null;
         }
         if(_ButtonClose != null)
         {
            _ButtonClose.Dispose();
            _ButtonClose = null;
         }
         if(_WheelTiles != null)
         {
            _WheelTiles.removeEventListener("Selected",OnTileSelected);
            _WheelTiles.Dispose();
            _WheelTiles = null;
         }
         super.Dispose();
      }
   }
}
