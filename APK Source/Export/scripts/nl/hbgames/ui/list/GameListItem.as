package nl.hbgames.ui.list
{
   import nl.hbgames.data.GameInfoData;
   import nl.hbgames.ui.buttons.AvatarButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.utils.StringUtil;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.PopupManager;
   import flash.events.Event;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.data.PlayerData;
   import nl.hbgames.managers.AssetManager;
   
   public class GameListItem extends BaseListItem
   {
      
      private static const YOUR_COLOR:int = 13255424;
      
      private static const THEIR_COLOR:int = 1059941;
      
      private static const YOUR_COLOR_STRING:String = "#CA4300";
      
      private static const THEIR_COLOR_STRING:String = "#102C65";
      
      private static const COLOR_TIME_NORMAL:int = 10066329;
      
      private static const COLOR_TIME_WARNING:int = 15882497;
      
      private static const COLOR_TIME_ALMOST_OVER:int = 12391714;
       
      private var _Data:GameInfoData;
      
      private var _Avatar:AvatarButton;
      
      private var _IsRemovable:Boolean;
      
      private var _Callback:Function;
      
      private var _RemoveCallback:Function;
      
      private var _ResignCallback:Function;
      
      private var _PlayerResigned:Boolean;
      
      public function GameListItem(param1:GameInfoData, param2:Function, param3:Function = null, param4:Function = null)
      {
         _Data = param1;
         _Callback = param2;
         _RemoveCallback = param3;
         _ResignCallback = param4;
         super(AssetManager.GetDefinition("libListOverviewContent",true,true));
      }
      
      public function get GameData() : GameInfoData
      {
         return _Data;
      }
      
      public function get Avatar() : AvatarButton
      {
         return _Avatar;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         if(_Data.IsFinished)
         {
            if(_Data.IsResigned)
            {
               _Content.lblDescription.text = Localization.Get("list_game_resigned_description",_Data.IsMyTurn?ClientData.Instance.Player.Name:_Data.OpponentName);
            }
            else if(_Data.YourTotalScore > _Data.OtherTotalScore)
            {
               _Content.lblDescription.text = Localization.Get("list_you_won_description");
            }
            else if(_Data.YourTotalScore == _Data.OtherTotalScore)
            {
               _Content.lblDescription.text = Localization.Get("list_you_tied_description");
            }
            else
            {
               _Content.lblDescription.text = Localization.Get("list_you_lost_description");
            }
            _Content.lblTime.text = "";
            _Content.lblName.text = Localization.Get("list_game_played_with",_Data.OpponentName);
            _Content.mcFlags.visible = false;
            ShowTrashCan(true);
            _Content.removeChild(_Content.mcProgress);
         }
         else
         {
            if(_Data.Cycle == 1)
            {
               _Content.lblName.text = Localization.Get("list_game_playing_with",_Data.OpponentName);
               _Content.lblDescription.text = Localization.Get("list_game_start_description");
            }
            else if(_Data.LastWord)
            {
               if(!_Data.IsMyTurn)
               {
                  _Content.lblDescription.text = Localization.Get("list_word_you_played_description",_Data.LastWord,_Data.LastWordScore);
               }
               else
               {
                  _Content.lblDescription.text = Localization.Get("list_word_played_description",_Data.LastWord,_Data.LastWordScore);
               }
            }
            else if(_Data.Passes == 0)
            {
               if(!_Data.IsMyTurn)
               {
                  _Content.lblDescription.text = Localization.Get("list_swap_you_played_description",_Data.LastWordScore);
               }
               else
               {
                  _Content.lblDescription.text = Localization.Get("list_swap_played_description",_Data.LastWordScore);
               }
            }
            else if(!_Data.IsMyTurn)
            {
               _Content.lblDescription.text = Localization.Get("list_pass_you_played_description",_Data.LastWordScore);
            }
            else
            {
               _Content.lblDescription.text = Localization.Get("list_pass_played_description",_Data.LastWordScore);
            }
            _Content.lblTime.text = StringUtil.DescribeTime(_Data.TimeLeftInMinutes,true);
            if(_Data.TimeLeftInSeconds > 86400)
            {
               _Content.lblTime.textColor = 10066329;
            }
            else if(_Data.TimeLeftInSeconds > 43200)
            {
               _Content.lblTime.textColor = 15882497;
            }
            else
            {
               _Content.lblTime.textColor = 12391714;
            }
            _Content.mcFlags.gotoAndStop(_Data.DictionaryLanguage);
            ShowTrashCan(false);
            ShowProgress(_Data.Progress);
            if(_Data.IsMyTurn)
            {
               this.addEventListener("SwipeLeft",OnSwipeResign);
               this.addEventListener("SwipeRight",OnSwipeResign);
            }
            else
            {
               this.addEventListener("SwipeLeft",OnSwipePoke);
               this.addEventListener("SwipeRight",OnSwipePoke);
            }
         }
         _Content.lblName.text = _Data.OpponentName;
         _Avatar = new AvatarButton(true,_Data.OpponentID,false,_Data.OpponentBorder);
         _Content.mcImage.addChild(_Avatar);
         if(_Data.UnseenChats > 0)
         {
            SetBadge(_Data.UnseenChats.toString());
         }
         else
         {
            RemoveBadge();
         }
         _Content.mcHitGame.addEventListener("click",OnClick);
      }
      
      private function ShowTrashCan(param1:Boolean) : void
      {
         if(_RemoveCallback == null)
         {
            var param1:* = false;
         }
         _IsRemovable = param1;
         _Content.mcTrash.visible = param1;
         if(param1)
         {
            _Content.mcHitRemove.addEventListener("click",OnRemoveClick);
         }
         else
         {
            _Content.mcHitRemove.removeEventListener("click",OnRemoveClick);
            _Content.mcHitRemove.mouseEnabled = false;
         }
      }
      
      private function ShowProgress(param1:int) : void
      {
         if(param1 < 0)
         {
            var param1:* = 0;
         }
         else if(param1 > 100)
         {
            param1 = 100;
         }
         _Content.mcProgress.scaleX = param1 / 100;
      }
      
      private function OnClick(param1:MouseEvent) : void
      {
         if(!_PlayerResigned && !PopupManager.Instance.isActive)
         {
            _Callback(this);
         }
      }
      
      private function OnRemoveClick(param1:MouseEvent) : void
      {
         if(_RemoveCallback != null)
         {
            _RemoveCallback(this);
         }
      }
      
      private function OnSwipeResign(param1:Event) : void
      {
         event = param1;
         event.stopImmediatePropagation();
         if(!_PlayerResigned)
         {
            new MessageBox(Localization.Get("resign_confirm_title"),Localization.Get("resign_confirm_body",_Data.OpponentName),false,true,function():void
            {
               PHPWrapper.Resign(OnGameResigned,_Data.GameID);
            },true);
         }
      }
      
      private function OnSwipePoke(param1:Event) : void
      {
         event = param1;
         event.stopImmediatePropagation();
      }
      
      private function OnGameResigned(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1.result == ":)")
         {
            _PlayerResigned = true;
            _Content.lblDescription.text = Localization.Get("list_game_resigned_description",ClientData.Instance.Player.Name);
            _Content.alpha = 1;
            SWRVETracker.Instance.TrackCustomEvent("game.play." + _Data.DictionaryLanguage + ".resigned",{
               "wordscore":_Data.LastWordScore,
               "totalCoins":ClientData.Instance.Inventory.TotalCoins,
               "totalStars":ClientData.Instance.Inventory.TotalStars,
               "timeLeft":_Data.TimeLeftInSeconds
            });
            _loc2_ = new GameSessionData(0,_Data.GameID,_Data.DictionaryLanguage,0,ClientData.Instance.Player,new PlayerData(_Data.OpponentID,_Data.OpponentName));
            _loc2_.Set(param1.game);
            _loc3_ = new GameInfoData();
            if(_loc3_.CreateFromSession(_loc2_))
            {
               ClientData.Instance.GameListData.Merge(param1.overviewId,_loc3_,false);
               _Data = _loc3_;
            }
            if(_ResignCallback != null)
            {
               _ResignCallback(this);
            }
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("resign_failed"));
         }
      }
      
      override public function OnRendered(param1:Boolean) : void
      {
         super.OnRendered(param1);
         if(param1)
         {
            _Avatar.LoadByUserID(_Data.OpponentID);
         }
         else if(!param1 && _Avatar)
         {
            _Avatar.ClearFromWaitQueue();
         }
      }
      
      public function SetBadge(param1:String) : void
      {
         _Content.addChild(_Content.mcBadge);
         _Content.mcBadge.lblCaption.text = param1;
      }
      
      public function RemoveBadge() : void
      {
         if(_Content.contains(_Content.mcBadge))
         {
            _Content.removeChild(_Content.mcBadge);
         }
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         _Callback = null;
         _RemoveCallback = null;
         _ResignCallback = null;
         _Content.mcHitGame.removeEventListener("click",OnClick);
         ShowTrashCan(false);
         this.removeEventListener("SwipeLeft",OnSwipeResign);
         this.removeEventListener("SwipeRight",OnSwipeResign);
         this.removeEventListener("SwipeLeft",OnSwipePoke);
         this.removeEventListener("SwipeRight",OnSwipePoke);
         if(_Avatar)
         {
            _Avatar.Dispose();
            _Content.mcImage.removeChild(_Avatar);
            _Avatar = null;
         }
         super.Dispose();
      }
   }
}
