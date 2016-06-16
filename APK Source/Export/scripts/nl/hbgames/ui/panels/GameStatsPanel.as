package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.list.VersusListItem;
   import nl.hbgames.data.GameStatsData;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.list.StatListItem;
   import nl.hbgames.ui.list.WordStatListItem;
   import nl.hbgames.net.SWRVETracker;
   import flash.events.MouseEvent;
   
   public class GameStatsPanel extends BasePanel
   {
       
      private var _VersusItem:VersusListItem;
      
      private var _GameStats:GameStatsData;
      
      public function GameStatsPanel(param1:GameStatsData)
      {
         _GameStats = param1;
         super(new libGameStats_Layouts());
      }
      
      override protected function Initialize() : void
      {
         var _loc14_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc13_:* = null;
         var _loc3_:* = null;
         var _loc7_:* = null;
         var _loc4_:* = 0;
         var _loc12_:* = 0;
         var _loc15_:* = null;
         var _loc11_:* = 0;
         var _loc9_:* = 0;
         var _loc2_:* = null;
         super.Initialize();
         var _loc1_:Array = _GameStats.YourPlayedWordList;
         var _loc10_:Array = _GameStats.OtherPlayedWordList;
         var _loc8_:int = Math.max(_loc1_.length,_loc10_.length);
         _List.Add(new LabelListItem(Localization.Get("label_stats_totals")));
         _VersusItem = §§dup(new VersusListItem(ClientData.Instance.Player.ID,_GameStats.OpponentID,ClientData.Instance.Player.Name,_GameStats.OpponentName,_GameStats.YourTotalScore,_GameStats.OtherTotalScore,_GameStats.OtherBorderID));
         _List.Add(new VersusListItem(ClientData.Instance.Player.ID,_GameStats.OpponentID,ClientData.Instance.Player.Name,_GameStats.OpponentName,_GameStats.YourTotalScore,_GameStats.OtherTotalScore,_GameStats.OtherBorderID));
         if(_GameStats.YourLeftOvers.length > 0)
         {
            _loc14_ = _GameStats.YourLeftOvers.join(",") + " (-" + _GameStats.YourPenalty + Localization.Get("points_postfix") + ")";
         }
         else
         {
            _loc14_ = Localization.Get("game_stats_no_letters_left");
         }
         if(_GameStats.OtherLeftOvers.length > 0)
         {
            _loc5_ = _GameStats.OtherLeftOvers.join(",") + " (-" + _GameStats.OtherPenalty + Localization.Get("points_postfix") + ")";
         }
         else
         {
            _loc5_ = Localization.Get("game_stats_no_letters_left");
         }
         _List.Add(new StatListItem(Localization.Get("game_stats_your_final_letters"),_loc14_));
         _List.Add(new StatListItem(Localization.Get("game_stats_their_final_letters",_GameStats.OpponentName),_loc5_));
         _List.Add(new LabelListItem(Localization.Get("label_stats_all_game_words"),2));
         _loc6_ = 0;
         while(_loc6_ < _loc8_)
         {
            _loc13_ = _loc6_ < _loc1_.length?_loc1_[_loc6_]:null;
            _loc3_ = _loc6_ < _loc10_.length?_loc10_[_loc6_]:null;
            _loc7_ = "";
            _loc4_ = 0;
            _loc12_ = 1;
            _loc15_ = "";
            _loc11_ = 0;
            _loc9_ = 1;
            if(_loc13_ != null)
            {
               _loc7_ = _loc13_.word;
               _loc4_ = _loc13_.score;
               _loc12_ = _loc13_.wordStrength + 1;
            }
            if(_loc3_ != null)
            {
               _loc15_ = _loc3_.word;
               _loc11_ = _loc3_.score;
               _loc9_ = _loc3_.wordStrength + 1;
            }
            _loc2_ = new WordStatListItem(_loc7_,_loc15_,_loc4_,_loc11_,_loc12_,_loc9_);
            _List.Add(_loc2_);
            _loc6_++;
         }
         SWRVETracker.Instance.TrackCustomEvent("screen.gamestats",{
            "yourWordAmount":_loc1_.length,
            "theirWordAmount":_loc10_.length
         });
         CenterList();
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         _GameStats = null;
         super.Dispose();
      }
   }
}
