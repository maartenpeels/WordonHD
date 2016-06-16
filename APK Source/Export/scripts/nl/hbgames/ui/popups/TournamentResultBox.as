package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.BigFooterButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.WordOn;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.FBWrapper;
   
   public class TournamentResultBox extends BaseTimedBox
   {
       
      private var _TournamentData:Object;
      
      private var _ShareButton:BigFooterButton;
      
      private var _ShareMsg:String;
      
      private var _RewardType:int;
      
      public function TournamentResultBox(param1:Object, param2:Function = null)
      {
         _TournamentData = param1;
         super(new libTournamentResultBox(),10,param2);
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = Localization.Get("tournament_results_title");
         _Content.lblResult.text = "";
         _Content.mcMedals.gotoAndStop(1);
         _Content.mcMedals.visible = false;
         _Content.mcStars.gotoAndStop(1);
         _Content.mcStars.visible = false;
      }
      
      override public function OnShow() : void
      {
         super.OnShow();
         var _loc1_:String = "sfxJingleTournamentNoMedal";
         _Content.removeChild(_Content.mcLoader);
         var _loc2_:Object = _TournamentData;
         _RewardType = _loc2_.reward;
         if(_RewardType != 0)
         {
            _Content.mcMedals.gotoAndStop(_loc2_.reward);
            _Content.mcMedals.visible = true;
            _Content.mcStars.gotoAndPlay(2);
            _Content.mcStars.visible = true;
         }
         _ShareButton = new BigFooterButton(_Content.btnShare,OnShareClick,Localization.Get("share_button_label"));
         switch(_RewardType)
         {
            case 0:
               if(_loc2_.rank != 0)
               {
                  _Content.lblResult.text = Localization.Get("tournament_results_award_none",_loc2_.rank);
               }
               else
               {
                  _Content.lblResult.text = Localization.Get("tournament_results_no_list");
               }
               _ShareMsg = "";
               break;
            case 1:
               _Content.lblResult.text = Localization.Get("tournament_results_award_gold",Localization.Get("medal_gold"),_loc2_.rank).toUpperCase();
               _ShareMsg = Localization.Get("share_tournament_result_body",Localization.Get("medal_gold"));
               _loc1_ = "sfxJingleTournamentGold";
               break;
            case 2:
               _Content.lblResult.text = Localization.Get("tournament_results_award_silver",Localization.Get("medal_silver"),_loc2_.rank).toUpperCase();
               _ShareMsg = Localization.Get("share_tournament_result_body",Localization.Get("medal_silver"));
               _loc1_ = "sfxJingleTournamentSilver";
               break;
            case 3:
               _Content.lblResult.text = Localization.Get("tournament_results_award_bronze",Localization.Get("medal_bronze"),_loc2_.rank).toUpperCase();
               _ShareMsg = Localization.Get("share_tournament_result_body",Localization.Get("medal_bronze"));
               break;
         }
         if(!ClientData.Instance.IsFacebookUser || _RewardType == 0)
         {
            _ShareButton.Disable(0);
            _Content.mcFBIcon.visible = false;
         }
         SetActive(true);
         WordOn.Instance.Audio.Play(_loc1_);
      }
      
      private function OnShareClick(param1:MouseEvent) : void
      {
         switch(_RewardType - 1)
         {
            case 0:
               FBWrapper.Post(_ShareMsg,"http://www.wordonhd.com/images/icon_fb_gold.png");
               break;
            case 1:
               FBWrapper.Post(_ShareMsg,"http://www.wordonhd.com/images/icon_fb_silver.png");
               break;
            case 2:
               FBWrapper.Post(_ShareMsg,"http://www.wordonhd.com/images/icon_fb_bronze.png");
               break;
            default:
               FBWrapper.Post(_ShareMsg);
         }
         ForceTimeUp();
      }
      
      override public function Dispose() : void
      {
         _TournamentData = null;
         super.Dispose();
      }
   }
}
