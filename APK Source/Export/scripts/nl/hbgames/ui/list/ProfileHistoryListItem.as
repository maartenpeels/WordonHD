package nl.hbgames.ui.list
{
   import nl.hbgames.ui.graphs.HistoryBarGraph;
   import nl.hbgames.managers.AssetManager;
   
   public class ProfileHistoryListItem extends BaseListItem
   {
       
      private var _Graph:HistoryBarGraph;
      
      private var _GraphData:Object;
      
      public function ProfileHistoryListItem(param1:Object = null)
      {
         _GraphData = param1;
         super(AssetManager.GetDefinition("libListProfileHistory",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Graph = new HistoryBarGraph(_Content.mcGraph,_GraphData);
      }
      
      override public function Dispose() : void
      {
         _Graph.Dispose();
         _Graph = null;
         _GraphData = null;
         super.Dispose();
      }
   }
}
