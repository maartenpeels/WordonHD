package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.list.SearchListItem;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.social.SocialProfile;
   import nl.hbgames.ui.list.FacebookPlayerListItem;
   import nl.hbgames.ui.list.PlayerListItem;
   import nl.hbgames.ui.list.NoteListItem;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.managers.ShareManager;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   
   public class SearchPlayerLogic extends Logic
   {
       
      private var _SearchItem:SearchListItem;
      
      private var _HasSearched:Boolean = false;
      
      public function SearchPlayerLogic()
      {
         super(new libSearchPlayerScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _List.Add(new LabelListItem(Localization.Get("find_players"),1));
         _SearchItem = §§dup(new SearchListItem(OnSearchResults));
         _List.Add(new SearchListItem(OnSearchResults));
         CenterList();
      }
      
      private function OnSearchResults(param1:Array) : void
      {
         results = param1;
         if(_HasSearched)
         {
            _List.RemoveFromIndex(2);
         }
         _List.Add(new LabelListItem(Localization.Get("search_results"),2));
         if(results.length > 0)
         {
            var i:uint = 0;
            while(i < results.length)
            {
               if(results[i] is SocialProfile)
               {
                  _List.Add(new FacebookPlayerListItem(results[i]));
               }
               else
               {
                  _List.Add(new PlayerListItem(results[i],false));
               }
               i = i + 1;
            }
         }
         else
         {
            _List.Add(new NoteListItem(Localization.Get("search_no_results")));
            if(_SearchItem.SearchKey.indexOf("@") != -1)
            {
               new MessageBox(Localization.Get("search_invite_email_title"),Localization.Get("search_invite_email_body",_SearchItem.SearchKey),false,true,function():void
               {
                  if(!ShareManager.SharePromoMessageEmail(_SearchItem.SearchKey))
                  {
                     new MessageBox(Localization.Get("generic_share_fail_title"),Localization.Get("email_share_fail"),true);
                  }
               },true);
            }
         }
         _HasSearched = true;
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         LogicManager.Instance.SetState("NewGame",null,"AnimRight");
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         _SearchItem = null;
         super.Dispose();
      }
   }
}
