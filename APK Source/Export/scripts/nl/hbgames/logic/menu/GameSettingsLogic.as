package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.ui.scrollwheel.ScrollingWheel;
   import nl.hbgames.logic.game.singleplayer.ai.BaseAIOpponent;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.events.ScrollEvent;
   import nl.hbgames.ui.scrollwheel.TileWheelItem;
   import nl.hbgames.ui.popups.BuyTilesBox;
   import nl.hbgames.ui.popups.TileUpdateBox;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.ui.scrollwheel.FlagWheelItem;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.utils.InviteUtil;
   import nl.hbgames.ui.popups.PurchaseTileBox;
   import nl.hbgames.managers.Serializer;
   
   public class GameSettingsLogic extends Logic
   {
       
      private var _BtnStart:BigButton;
      
      private var _WheelDictionary:ScrollingWheel;
      
      private var _WheelTiles:ScrollingWheel;
      
      private var _NeedsUpdate:Boolean;
      
      private var _HasError:Boolean;
      
      private var _PlayerIDs:Array;
      
      private var _FacebookIDs:Array;
      
      private var _PlayerNames:Array;
      
      private var _PracticeOpponent:BaseAIOpponent;
      
      public function GameSettingsLogic()
      {
         super(new libGameSettings_Layouts());
      }
      
      override protected function Initialize() : void
      {
         var _loc1_:* = null;
         super.Initialize();
         _NeedsUpdate = TilesetData.IsUpdateAvailable;
         _Content.lblTitle1.text = Localization.Get("game_settings_title");
         _Content.lblMore.text = "";
         switch(ClientData.Instance.LastNewGameOption)
         {
            case 0:
               _Content.lblTitle2.text = Localization.Get("game_settings_subtitle_random");
               _Content.lblSendInfo.text = Localization.Get("game_settings_send_info_random");
               break;
            case 1:
               if(ClientData.Instance.LastNewGameOpponentNames.length == 1)
               {
                  _Content.lblTitle2.text = Localization.Get("game_settings_subtitle_player",ClientData.Instance.LastNewGameOpponentNames[0]);
               }
               else
               {
                  _loc1_ = ClientData.Instance.LastNewGameOpponentNames;
                  if(_loc1_.length == 2)
                  {
                     _Content.lblTitle2.text = Localization.Get("game_settings_subtitle_playerlist_count_2",_loc1_[0],_loc1_[1]);
                  }
                  else if(_loc1_.length > 2)
                  {
                     _Content.lblTitle2.text = Localization.Get("game_settings_subtitle_playerlist_count_2",_loc1_[0],_loc1_[1]);
                     _Content.lblMore.text = Localization.Get("game_settings_subtitle_playerlist_more",_loc1_.length - 2);
                  }
               }
               _Content.lblSendInfo.text = Localization.Get("game_settings_send_info_player");
               break;
            case 2:
               _Content.lblTitle2.text = Localization.Get("game_settings_subtitle_practice",ClientData.Instance.LastNewGameOpponentNames[0]);
               _Content.lblSendInfo.text = Localization.Get("game_settings_send_info_practice");
               break;
         }
         _BtnStart = new BigButton(_Content.btnSend,OnSendClick,Localization.Get(ClientData.Instance.LastNewGameOption == 2?"game_settings_start_game":"game_settings_send_invite"));
         _Content.lblTileInfo.text = Localization.Get("game_settings_select_tileset");
         _Content.lblLangInfo.text = Localization.Get("game_settings_select_language");
         if(_NeedsUpdate)
         {
            _BtnStart.Disable();
         }
         else
         {
            CreateWheels();
         }
      }
      
      private function OnTileSelectTapped(param1:ScrollEvent) : void
      {
         event = param1;
         if(!TileWheelItem(_WheelTiles.SelectedItem).IsAvailable)
         {
            new BuyTilesBox(TileWheelItem(_WheelTiles.SelectedItem).ID,function():void
            {
               _WheelTiles.Refresh();
            });
         }
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         super.OnFocus(param1);
         if(ClientData.Instance.LastNewGameOption != 0 && param1 == null)
         {
            _HasError = true;
         }
         if(!_HasError)
         {
            if(param1 != null)
            {
               _PlayerNames = param1.names;
               _PlayerIDs = param1.woIds;
               _FacebookIDs = param1.fbIds;
               _PracticeOpponent = param1.opponent;
            }
            if(_NeedsUpdate)
            {
               new TileUpdateBox(CreateWheels);
            }
         }
         else
         {
            new MessageBox(Localization.Get("game_settings_no_data_error_title"),Localization.Get("game_settings_no_data_error_message"),true,true,OnBackClick);
         }
      }
      
      private function CreateWheels() : void
      {
         var _loc2_:* = 0;
         _BtnStart.Enable();
         _WheelDictionary = new ScrollingWheel(_Content.mcFlags,Localization.GetLanguageID(ClientData.Instance.DictionaryLanguage),3,80 * AssetManager.ContentScaleFactor,"ScrollHorizontal",20);
         _loc2_ = 0;
         while(_loc2_ < Localization.LANGUAGES.length)
         {
            _WheelDictionary.Add(new FlagWheelItem(Localization.LANGUAGES[_loc2_].key,Localization.LANGUAGES[_loc2_].language));
            _loc2_++;
         }
         _WheelDictionary.Initialize(_Content.lblSelectedLanguage);
         _WheelTiles = new ScrollingWheel(_Content.mcTiles,TilesetData.GetTileListIndex(ClientData.Instance.CurrentTilesetID),5,20 * AssetManager.ContentScaleFactor,"ScrollHorizontal",20);
         var _loc1_:Array = TilesetData.GetSelectableTiles();
         _loc2_ = 0;
         while(_loc2_ < _loc1_.length)
         {
            _WheelTiles.Add(new TileWheelItem(_loc1_[_loc2_]));
            _loc2_++;
         }
         _WheelTiles.Initialize(_Content.lblSelectedTile);
         _WheelTiles.addEventListener("SelectedTapped",OnTileSelectTapped);
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         if(!_HasError && _WheelDictionary != null && _WheelTiles != null)
         {
            ClientData.Instance.DictionaryLanguage = FlagWheelItem(_WheelDictionary.SelectedItem).LangKey;
            ClientData.Instance.CurrentTilesetID = TileWheelItem(_WheelTiles.SelectedItem).ID;
         }
         LogicManager.Instance.SetState("NewGame",null,"AnimRight");
      }
      
      private function OnSendClick(param1:MouseEvent = null) : void
      {
         e = param1;
         ClientData.Instance.DictionaryLanguage = FlagWheelItem(_WheelDictionary.SelectedItem).LangKey;
         ClientData.Instance.CurrentTilesetID = TileWheelItem(_WheelTiles.SelectedItem).ID;
         if(TileWheelItem(_WheelTiles.SelectedItem).IsAvailable)
         {
            WaitBox.Show();
            switch(ClientData.Instance.LastNewGameOption)
            {
               case 0:
                  InviteUtil.SendRandom(OnInviteSuccess,ClientData.Instance.DictionaryLanguage,ClientData.Instance.CurrentTilesetID);
                  break;
               case 1:
                  InviteUtil.SendSuggestionList(OnInviteSuccess,_PlayerIDs,_FacebookIDs,ClientData.Instance.DictionaryLanguage,ClientData.Instance.CurrentTilesetID);
                  break;
               case 2:
                  LogicManager.Instance.SetState("GameVsCPU",{
                     "languageID":ClientData.Instance.DictionaryLanguage,
                     "opponent":_PracticeOpponent,
                     "timeLeftInSec":259200
                  });
                  break;
            }
         }
         else
         {
            new BuyTilesBox(TileWheelItem(_WheelTiles.SelectedItem).ID,function():void
            {
               OnBuySuccess(OnSendClick);
            });
         }
      }
      
      private function OnInviteSuccess() : void
      {
         if(ClientData.Instance.LastNewGameOption == 0)
         {
            new MessageBox(Localization.Get("awesome"),Localization.Get("random_invite_sent"));
         }
         else if(ClientData.Instance.LastNewGameOption == 1)
         {
            new MessageBox(Localization.Get("awesome"),Localization.Get("normal_invite_sent"));
         }
         _BtnStart.Disable();
         LogicManager.Instance.SetState("GameOverview",null,"AnimRight");
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_WheelDictionary)
         {
            _WheelDictionary.Update();
         }
         if(_WheelTiles)
         {
            _WheelTiles.Update();
         }
      }
      
      private function OnBuySuccess(param1:Function = null) : void
      {
      }
      
      override public function Dispose() : void
      {
         Serializer.Instance.Serialize();
         _PlayerIDs = null;
         _PlayerNames = null;
         _FacebookIDs = null;
         _PracticeOpponent = null;
         _BtnStart.Dispose();
         _BtnStart = null;
         if(_WheelDictionary != null)
         {
            _WheelDictionary.Dispose();
            _WheelDictionary = null;
         }
         if(_WheelTiles != null)
         {
            _WheelTiles.removeEventListener("SelectedTapped",OnTileSelectTapped);
            _WheelTiles.Dispose();
            _WheelTiles = null;
         }
         super.Dispose();
      }
   }
}
