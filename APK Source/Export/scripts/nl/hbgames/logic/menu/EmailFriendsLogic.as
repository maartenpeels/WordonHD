package nl.hbgames.logic.menu
{
   import nl.hbgames.logic.Logic;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.ui.list.LabelListItem;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.list.SimpleSearchListItem;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.list.PlayerListItem;
   import nl.hbgames.ui.list.NoteListItem;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   
   public class EmailFriendsLogic extends Logic
   {
       
      private var _HasSearched:Boolean;
      
      public function EmailFriendsLogic()
      {
         super(new libEmailFriendsScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         WaitBox.Show();
         _List.Add(new LabelListItem(Localization.Get("find_players"),1));
         _List.Add(new SimpleSearchListItem(Localization.Get("search_simple_descr"),OnSearchChange));
         CenterList();
      }
      
      override public function OnFocus(param1:Object = null) : void
      {
         data = param1;
         super.OnFocus(data);
         ClientData.Instance.Social.LoadFavorites(function():void
         {
            BuildFriendsList(ClientData.Instance.Social.FavoritesList);
         });
      }
      
      private function OnSearchChange(param1:String) : void
      {
         key = param1;
         var favs:Array = ClientData.Instance.Social.FavoritesList;
         var results:Array = [];
         if(favs.length > 0 && key != null && key.length > 0)
         {
            var i:uint = 0;
            while(i < favs.length)
            {
               var word1:String = key.toLowerCase();
               var word2:String = favs[i].displayname.toLowerCase();
               if(word2.indexOf(word1) != -1)
               {
                  results.push(favs[i]);
               }
               i = i + 1;
            }
            results.sort(function(param1:Object, param2:Object):int
            {
               var _loc4_:int = param1.displayname.toLowerCase().indexOf(word1);
               var _loc3_:int = param2.displayname.toLowerCase().indexOf(word1);
               if(_loc4_ < _loc3_)
               {
                  return -1;
               }
               if(_loc4_ == _loc3_)
               {
                  return 0;
               }
               return 1;
            });
         }
         else
         {
            results = favs;
         }
         _HasSearched = true;
         BuildFriendsList(results);
      }
      
      private function BuildFriendsList(param1:Array) : void
      {
         if(_HasSearched)
         {
            _List.RemoveFromIndex(2);
         }
         var _loc2_:* = 0;
         _List.Add(new LabelListItem(Localization.Get("game_friends"),2));
         if(ClientData.Instance.Social.FavoritesList.length > 0)
         {
            if(param1.length > 0)
            {
               _loc2_ = 0;
               while(_loc2_ < param1.length)
               {
                  _List.Add(new PlayerListItem(param1[_loc2_]));
                  _loc2_++;
               }
            }
            else
            {
               _List.Add(new NoteListItem(Localization.Get("search_no_results")));
            }
         }
         else
         {
            _List.Add(new NoteListItem(Localization.Get("no_friends_added_yet")));
         }
         CenterList();
         WaitBox.Hide();
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
         super.Dispose();
      }
   }
}
