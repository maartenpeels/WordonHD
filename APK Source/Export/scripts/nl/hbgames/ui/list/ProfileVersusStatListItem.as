package nl.hbgames.ui.list
{
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.AssetManager;
   
   public class ProfileVersusStatListItem extends BaseListItem
   {
       
      private var _Data:Object;
      
      public function ProfileVersusStatListItem(param1:String, param2:String, param3:Object)
      {
         _Data = param3;
         _Data.opponentName = param1;
         _Data.yourName = param2;
         super(AssetManager.GetDefinition("libListProfileVersusStatsContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblOpponent.text = _Data.opponentName;
         _Content.lblDraw.text = Localization.Get("stats_draw");
         _Content.lblYou.text = _Data.yourName;
         _Content.lblWonAmount.text = _Data["1v1_lost"] != null?_Data["1v1_lost"]:"0";
         _Content.lblDrawAmount.text = _Data["1v1_draw"] != null?_Data["1v1_draw"]:"0";
         _Content.lblLostAmount.text = _Data["1v1_won"] != null?_Data["1v1_won"]:"0";
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
