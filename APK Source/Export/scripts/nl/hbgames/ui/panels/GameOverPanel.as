package nl.hbgames.ui.panels
{
   import nl.hbgames.data.GameStatsData;
   import nl.hbgames.ui.buttons.MediumButton;
   import nl.hbgames.ui.buttons.BigButton;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.AchievementManager;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.SWRVETracker;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.WordOn;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.utils.InviteUtil;
   import nl.hbgames.managers.ShareManager;
   
   public class GameOverPanel extends BasePanel
   {
       
      private const INFO_SHOW_TIME:Array = [20,45,70];
      
      private var _GameID:String;
      
      private var _GameStats:GameStatsData;
      
      private var _PlayerWon:Boolean;
      
      private var _BtnViewMoreStats:MediumButton;
      
      private var _BtnAddFriend:MediumButton;
      
      private var _BtnAction:BigButton;
      
      private var _BtnRematch:BigButton;
      
      private var _StarGraphic:MovieClip;
      
      private var _StarPos:Point;
      
      private var _CoinAni:MovieClip;
      
      private var _CoinsWonTicker:int = 0;
      
      private var _VisualCoinsWon:int = 0;
      
      private var _InfoID:int = 0;
      
      private var _Ticker:Number = 0;
      
      public function GameOverPanel(param1:String)
      {
         _GameID = param1;
         super(new libGameOverScreen_Layouts(),true,true,0.3,0,true,false);
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         WaitBox.Show();
         _StarGraphic = _Content.mcStar;
         _StarPos = new Point(_StarGraphic.x,_StarGraphic.y);
         _CoinAni = _Content.mcCoinsAni;
         _CoinAni.gotoAndStop(1);
         _Content.btnViewStats.visible = false;
         _Content.btnAddFriend.visible = false;
         _Content.btnAction.visible = false;
         _Content.btnRematch.visible = false;
         _StarGraphic.visible = false;
         _Content.mcStarGroup.visible = false;
         PHPWrapper.GetGameStats(OnStatsResult,_GameID);
      }
      
      private function OnStatsResult(param1:Object) : void
      {
         var _loc2_:* = null;
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            if(_GameStats == null)
            {
               _GameStats = new GameStatsData(param1.stats);
               AchievementManager.Show(param1.achievements);
               _loc2_ = "";
               if(_GameStats.IsResigned)
               {
                  _PlayerWon = _GameStats.TurnUserID == _GameStats.OpponentID;
                  _loc2_ = _PlayerWon?"win":"lose";
               }
               else
               {
                  _PlayerWon = _GameStats.YourTotalScore >= _GameStats.OtherTotalScore;
                  if(_GameStats.YourTotalScore == _GameStats.OtherTotalScore)
                  {
                     _loc2_ = "tie";
                  }
                  else
                  {
                     _loc2_ = _PlayerWon?"win":"lose";
                  }
               }
               _BtnViewMoreStats = new MediumButton(_Content.btnViewStats,OnViewStatsClick,Localization.Get("view_more_stats"));
               _BtnAddFriend = new MediumButton(_Content.btnAddFriend,OnAddFriendClick,Localization.Get("friends_add_friend_button"));
               _BtnRematch = new BigButton(_Content.btnRematch,OnRematchClick,Localization.Get("game_over_rematch"));
               _BtnAction = new BigButton(_Content.btnAction,OnActionClick,_PlayerWon?Localization.Get("game_over_brag"):Localization.Get("game_over_find_opponent"));
               if(ClientData.Instance.Social.GetFavorite(_GameStats.OpponentID) != null)
               {
                  _BtnAddFriend.Disable();
               }
               SWRVETracker.Instance.TrackCustomEvent("game.play." + _GameStats.DictionaryLanguage + ".complete",{
                  "coinsWon":_GameStats.CoinsWon,
                  "totalCoins":_GameStats.TotalCoins,
                  "totalStars":ClientData.Instance.Inventory.TotalStars,
                  "myTotalScore":_GameStats.YourTotalScore,
                  "theirTotalScore":_GameStats.OtherTotalScore,
                  "myBestWordScore":_GameStats.YourBestWordScore,
                  "theirBestWordScore":_GameStats.OtherBestWordScore,
                  "result":_loc2_
               });
               this.Open();
            }
            else
            {
               _GameStats = new GameStatsData(param1.stats);
            }
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("game_stats_request_failed"),false);
            this.Close();
         }
      }
      
      private function DisplayInfo(param1:int) : void
      {
         switch(param1)
         {
            case 0:
               if(_GameStats.IsResigned)
               {
                  if(_GameStats.TurnUserID == ClientData.Instance.Player.ID)
                  {
                     WordOn.Instance.Audio.Play("sfxJingleLost");
                     _Content.lblResultTitle.text = Localization.Get("game_over_you_resigned");
                  }
                  else
                  {
                     WordOn.Instance.Audio.Play("sfxJingleWon");
                     _Content.lblResultTitle.text = Localization.Get("game_over_you_won");
                  }
               }
               else if(_GameStats.YourTotalScore > _GameStats.OtherTotalScore)
               {
                  WordOn.Instance.Audio.Play("sfxJingleWon");
                  _Content.lblResultTitle.text = Localization.Get("game_over_you_won");
               }
               else if(_GameStats.YourTotalScore == _GameStats.OtherTotalScore)
               {
                  WordOn.Instance.Audio.Play("sfxJingleWon");
                  _Content.lblResultTitle.text = Localization.Get("game_over_you_tied");
               }
               else
               {
                  WordOn.Instance.Audio.Play("sfxJingleLost");
                  _Content.lblResultTitle.text = Localization.Get("game_over_you_lost");
               }
               _Content.lblAgainst.text = Localization.Get("game_over_against");
               _Content.lblOpponent.text = _GameStats.OpponentName;
               _StarGraphic.gotoAndStop(_PlayerWon?1:2.0);
               _StarGraphic.visible = true;
               _Content.mcStarGroup.visible = _PlayerWon;
               if(_GameStats.CoinsWon > 0)
               {
                  _VisualCoinsWon = Math.min(Math.ceil(_GameStats.CoinsWon / 7),15);
                  _CoinAni.gotoAndPlay(2);
                  _CoinAni.addEventListener("change",OnCoinAniChange);
               }
               else
               {
                  _Content.lblCoinsWonValue.text = "0";
               }
               _Content.lblCoinsWon.text = Localization.Get("game_over_coins_earned");
               break;
            case 1:
               _Content.lblTotalScore.text = Localization.Get("game_over_total_score_title");
               _Content.lblYourTotalScore.text = Localization.Get("game_over_your_total_score");
               _Content.lblYourTotalScoreValue.text = _GameStats.YourTotalScore + " " + Localization.Get("points_postfix");
               _Content.lblTheirTotalScore.text = _GameStats.OpponentName;
               _Content.lblTheirTotalScoreValue.text = _GameStats.OtherTotalScore + " " + Localization.Get("points_postfix");
               break;
            case 2:
               _Content.lblBestWord.text = Localization.Get("game_over_best_word_title");
               _Content.lblYourBestWord.text = Localization.Get("game_over_your_best_word");
               _Content.lblYourBestWordValue.text = _GameStats.YourBestWord + " (" + _GameStats.YourBestWordScore + " " + Localization.Get("points_postfix") + ")";
               _Content.lblTheirBestWord.text = _GameStats.OpponentName;
               _Content.lblTheirBestWordValue.text = _GameStats.OtherBestWord + " (" + _GameStats.OtherBestWordScore + " " + Localization.Get("points_postfix") + ")";
               break;
         }
      }
      
      private function OnCoinAniChange(param1:Event) : void
      {
         _CoinsWonTicker = _CoinsWonTicker + 1;
         if(_VisualCoinsWon < 15)
         {
            if(_CoinAni.currentFrameLabel == "coin_" + _VisualCoinsWon)
            {
               _Content.lblCoinsWonValue.text = _GameStats.CoinsWon;
               _CoinAni.stop();
               return;
            }
         }
         var _loc3_:int = _GameStats.CoinsWon / _VisualCoinsWon;
         var _loc2_:int = _CoinsWonTicker * _loc3_;
         _loc2_ = _loc2_ >= _GameStats.CoinsWon - _loc3_?_GameStats.CoinsWon:_loc2_;
         _Content.lblCoinsWonValue.text = _loc2_.toString();
      }
      
      private function OnViewStatsClick(param1:MouseEvent) : void
      {
         if(_GameStats.HasWordList)
         {
            new GameStatsPanel(_GameStats);
         }
         else
         {
            LogicManager.Instance.SetState("ShopOverview",{"activeFilter":0});
            PanelManager.Instance.CloseAll();
         }
      }
      
      private function OnAddFriendClick(param1:MouseEvent) : void
      {
         WaitBox.Show();
         PHPWrapper.AddFriend(OnFriendAdded,_GameStats.OpponentID);
      }
      
      private function OnFriendAdded(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Social.AddFavorite(_GameStats.OpponentID,_GameStats.OpponentName);
            _BtnAddFriend.Disable();
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_add_friend"),false);
         }
      }
      
      private function OnStatsBought() : void
      {
         WaitBox.Show();
         PHPWrapper.GetGameStats(OnStatsResult,_GameID);
      }
      
      private function OnRematchClick(param1:MouseEvent) : void
      {
         InviteUtil.SendToPlayer(OnRematchSuccess,false,_GameStats.OpponentID,_GameStats.DictionaryLanguage,_GameStats.YourTilesetID,true,_GameStats.OpponentName);
      }
      
      private function OnRematchSuccess() : void
      {
         _BtnRematch.Disable();
      }
      
      private function OnActionClick(param1:MouseEvent) : void
      {
         if(_PlayerWon)
         {
            ShareManager.ShareCustomMessage(Localization.Get("share_brag_title"),Localization.Get("share_brag_body",_GameStats.OpponentName,_GameStats.YourTotalScore,_GameStats.OtherTotalScore,"http://www.wordonhd.com/play".replace("http://","")));
         }
         else
         {
            InviteUtil.SendRandom(OnRandomInviteSuccess,_GameStats.DictionaryLanguage,_GameStats.YourTilesetID);
         }
      }
      
      private function OnRandomInviteSuccess() : void
      {
         _BtnAction.Disable();
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_GameStats != null)
         {
            _Ticker = _Ticker + 1;
            if(_InfoID < INFO_SHOW_TIME.length)
            {
               if(_Ticker >= INFO_SHOW_TIME[_InfoID])
               {
                  DisplayInfo(_InfoID);
                  _InfoID = _InfoID + 1;
               }
            }
            _StarGraphic.y = _StarPos.y + Math.sin(_Ticker / 20) * 10;
         }
      }
      
      override public function Dispose() : void
      {
         if(_BtnAction != null)
         {
            _BtnAction.Dispose();
            _BtnAction = null;
         }
         if(_BtnRematch != null)
         {
            _BtnRematch.Dispose();
            _BtnRematch = null;
         }
         if(_BtnViewMoreStats != null)
         {
            _BtnViewMoreStats.Dispose();
            _BtnViewMoreStats = null;
         }
         if(_BtnAddFriend != null)
         {
            _BtnAddFriend.Dispose();
            _BtnAddFriend = null;
         }
         if(_GameStats != null)
         {
            _GameStats.Dispose();
            _GameStats = null;
         }
         _StarGraphic = null;
         _CoinAni.removeEventListener("change",OnCoinAniChange);
         _CoinAni = null;
         super.Dispose();
      }
   }
}
