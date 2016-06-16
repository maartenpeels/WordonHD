package nl.hbgames.ui.list
{
   import nl.hbgames.data.PendingInviteData;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.AssetManager;
   
   public class PendingGameListItem extends BaseListItem
   {
       
      private var _PendingList:Vector.<PendingInviteData>;
      
      public function PendingGameListItem(param1:Vector.<PendingInviteData>)
      {
         _PendingList = param1;
         super(AssetManager.GetDefinition("libListOverviewPendingContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = Localization.Get("pending_invite_title");
         _Content.lblDescription.text = Localization.Get("pending_invite_description",_PendingList.length);
         _Content.mouseChildren = false;
         _Content.mouseEnabled = false;
      }
      
      override public function OnScrollStatus(param1:Boolean) : void
      {
         super.OnScrollStatus(param1);
      }
      
      override public function OnRendered(param1:Boolean) : void
      {
         super.OnRendered(param1);
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         _PendingList = null;
         super.Dispose();
      }
   }
}
