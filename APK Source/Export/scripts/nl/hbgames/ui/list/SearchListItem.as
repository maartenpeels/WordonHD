package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.ListButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.TextfieldUtil;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.utils.StringUtil;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.managers.AssetManager;
   
   public class SearchListItem extends BaseListItem
   {
       
      private var _Callback:Function;
      
      private var _BtnSearch:ListButton;
      
      private var _SearchKey:String;
      
      public function SearchListItem(param1:Function)
      {
         _Callback = param1;
         super(AssetManager.GetDefinition("libListSearchContent",true,true));
      }
      
      public function get SearchKey() : String
      {
         return _SearchKey;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblSearchDescription.text = Localization.Get("search_description");
         _Content.txtSearch.text = Localization.Get("friends_textfield_search");
         _Content.txtSearch.maxChars = 128;
         TextfieldUtil.Register(_Content.txtSearch,"default",true,false,OnSearchChanged);
         _BtnSearch = new ListButton(_Content.btnSearch,OnSearchClick,Localization.Get("friends_search_button"));
         _BtnSearch.Disable();
      }
      
      private function OnSearchChanged(param1:Event) : void
      {
         var _loc2_:* = param1.target;
         if(_loc2_.text.length > 0 && _loc2_.text != Localization.Get("friends_textfield_search"))
         {
            _BtnSearch.Enable();
         }
         else
         {
            _BtnSearch.Disable();
         }
      }
      
      private function OnSearchClick(param1:MouseEvent) : void
      {
         e = param1;
         WaitBox.Show();
         _SearchKey = _Content.txtSearch.text;
         _SearchKey = StringUtil.Trim(_SearchKey);
         if(ClientData.Instance.IsFacebookUser)
         {
            ClientData.Instance.Social.LoadFacebookFriends(function(param1:Boolean):void
            {
               StartGameSearch();
            },true);
         }
         else
         {
            StartGameSearch();
         }
      }
      
      private function StartGameSearch() : void
      {
         PHPWrapper.SearchUser(OnSearchResult,_SearchKey);
      }
      
      private function OnSearchResult(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            _loc3_ = param1.search?param1.search:[];
            if(ClientData.Instance.IsFacebookUser)
            {
               _loc2_ = ClientData.Instance.Social.SearchFacebook(_SearchKey);
               _loc3_ = _loc2_.concat(_loc3_);
            }
            _Callback(_loc3_);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_start_search"),false);
         }
      }
      
      override public function Dispose() : void
      {
         TextfieldUtil.Unregister(_Content.txtSearch);
         _BtnSearch.Dispose();
         _BtnSearch = null;
         _Callback = null;
         super.Dispose();
      }
   }
}
