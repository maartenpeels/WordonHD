package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.scrollwheel.ScrollingWheel;
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.ui.scrollwheel.TileWheelItem;
   import nl.hbgames.events.ScrollEvent;
   import flash.events.MouseEvent;
   
   public class GameStartBox extends BasePopup
   {
       
      private var _DictionaryLanguage:String;
      
      private var _OpponentName:String;
      
      private var _WheelTiles:ScrollingWheel;
      
      private var _Callback:Function;
      
      private var _ButtonOK:PopupButton;
      
      private var _ButtonCancel:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      public function GameStartBox(param1:String, param2:String, param3:Function)
      {
         _OpponentName = param1;
         _DictionaryLanguage = param2;
         _Callback = param3;
         super(new libGameStartBox());
      }
      
      override public function Initialize() : void
      {
         var _loc2_:* = 0;
         super.Initialize();
         _Content.lblTitle.htmlText = Localization.Get("game_invite_title");
         _Content.lblMessage.htmlText = Localization.Get("game_invite_choose_tiles_description",_OpponentName);
         _Content.lblSelectTile.text = Localization.Get("popup_invite_select_tileset");
         _Content.lblLanguage.text = Localization.GetLanguageDescription(_DictionaryLanguage);
         _Content.mcFlags.gotoAndStop(_DictionaryLanguage);
         _ButtonOK = new PopupButton(_Content.btnOK,OnAcceptClick,Localization.Get("general_button_continue"),"sfxButtonConfirm");
         _ButtonCancel = new PopupButton(_Content.btnCancel,OnDeclineClick,Localization.Get("general_button_cancel"),"sfxButtonClose");
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnDeclineClick);
         _WheelTiles = new ScrollingWheel(_Content.mcTiles,TilesetData.GetTileListIndex(ClientData.Instance.CurrentTilesetID),5,20 * AssetManager.ContentScaleFactor,"ScrollHorizontal",20);
         var _loc1_:Array = TilesetData.GetSelectableTiles();
         _loc2_ = 0;
         while(_loc2_ < _loc1_.length)
         {
            _WheelTiles.Add(new TileWheelItem(_loc1_[_loc2_]));
            _loc2_++;
         }
         _WheelTiles.Initialize(_Content.lblSelectedTile);
         _WheelTiles.addEventListener("Selected",OnTileSelected);
         OnTileSelected(null);
      }
      
      private function OnTileSelected(param1:ScrollEvent = null) : void
      {
         if(TileWheelItem(_WheelTiles.SelectedItem).IsAvailable)
         {
            _ButtonOK.SetLabel(Localization.Get("general_button_continue"));
         }
         else
         {
            _ButtonOK.SetLabel(Localization.Get("invite_unlock"));
         }
      }
      
      private function OnAcceptClick(param1:MouseEvent = null) : void
      {
         if(TileWheelItem(_WheelTiles.SelectedItem).IsAvailable)
         {
            _Callback(TileWheelItem(_WheelTiles.SelectedItem).ID);
            Remove();
         }
         else
         {
            new BuyTilesBox(TileWheelItem(_WheelTiles.SelectedItem).ID,OnAcceptClick);
         }
      }
      
      private function OnDeclineClick(param1:MouseEvent = null) : void
      {
         Remove();
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
