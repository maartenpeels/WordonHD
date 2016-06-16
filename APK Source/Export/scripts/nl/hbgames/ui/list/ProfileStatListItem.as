package nl.hbgames.ui.list
{
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.AssetManager;
   
   public class ProfileStatListItem extends BaseListItem
   {
       
      private var _Data:Object;
      
      private var _IsWatchingOwnProfile:Boolean;
      
      public function ProfileStatListItem(param1:Object, param2:Boolean = false)
      {
         _Data = param1;
         _IsWatchingOwnProfile = param2;
         super(AssetManager.GetDefinition("libListProfileStatsContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         var _loc7_:* = null;
         var _loc4_:* = NaN;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc10_:* = 0;
         super.Initialize();
         var _loc2_:int = (_Data.won) + (_Data.draw);
         var _loc3_:int = _Data.lost;
         var _loc8_:int = _Data.rating?_Data.rating:0;
         var _loc9_:String = _Data.bestWord.join("");
         _loc9_ = WordParser.RemoveTagsFromString(_loc9_);
         _Content.lblD0.text = Localization.Get("stats_highest_game_score");
         _Content.lblD1.text = Localization.Get("stats_best_played_word");
         _Content.lblD2.text = Localization.Get("stats_total_games_played");
         _Content.lblD3.text = Localization.Get("stats_total_games_won");
         _Content.lblD4.text = Localization.Get("stats_elo_rating");
         _Content.lblD5.text = Localization.Get("stats_idle_time");
         _Content.lblV0.text = _Data.bestGameScore == 0?Localization.Get("stats_not_yet_available"):_Data.bestGameScore;
         _Content.lblV1.text = _loc9_.length < 2?Localization.Get("stats_not_yet_available"):_loc9_ + " (" + _Data.bestScore + Localization.Get("points_postfix") + ")";
         _Content.lblV1.autoSize = "right";
         _Content.lblV2.text = (_loc2_ + _loc3_).toString();
         var _loc1_:int = _loc2_ + _loc3_ == 0?0:Math.round(_loc2_ / (_loc2_ + _loc3_) * 100);
         _Content.lblV3.text = _loc2_ + " (" + _loc1_ + "%)";
         _Content.lblV4.text = _loc8_;
         if(_IsWatchingOwnProfile)
         {
            _loc7_ = Localization.Get("stats_idle_time_online");
         }
         else if(_Data.idleTime && _Data.idleTime > 0)
         {
            _loc4_ = Math.floor(_Data.idleTime / 60) + 1;
            if(_loc4_ < 60)
            {
               _loc7_ = Localization.Get(_loc4_ == 1?"stats_idle_time_minute":"stats_idle_time_minutes",_loc4_);
            }
            else
            {
               _loc5_ = Math.floor(_loc4_ / 60);
               if(_loc5_ < 24)
               {
                  _loc7_ = Localization.Get(_loc5_ == 1?"stats_idle_time_hour":"stats_idle_time_hours",_loc5_);
               }
               else
               {
                  _loc6_ = Math.floor(_loc5_ / 24);
                  if(_loc6_ < 7)
                  {
                     _loc7_ = Localization.Get(_loc6_ == 1?"stats_idle_time_day":"stats_idle_time_days",_loc6_);
                  }
                  else
                  {
                     _loc10_ = Math.floor(_loc6_ / 7);
                     if(_loc10_ < 5)
                     {
                        _loc7_ = Localization.Get(_loc10_ == 1?"stats_idle_time_week":"stats_idle_time_weeks",_loc10_);
                     }
                     else
                     {
                        _loc7_ = Localization.Get("stats_idle_time_long");
                     }
                  }
               }
            }
         }
         else
         {
            _loc7_ = Localization.Get("stats_idle_time_not_available");
         }
         _Content.lblV5.text = _loc7_;
         if(_loc9_.length < 2 || !_Data.bestWordLang)
         {
            _Content.removeChild(_Content.mcFlags);
         }
         else
         {
            _Content.mcFlags.gotoAndStop(_Data.bestWordLang);
            _Content.mcFlags.x = _Content.lblV1.x - _Content.mcFlags.width - 10 * AssetManager.ContentScaleFactor;
         }
         _Content.mouseChildren = false;
         _Content.mouseEnabled = false;
      }
      
      override public function Dispose() : void
      {
         _Data = null;
         super.Dispose();
      }
   }
}
