package nl.hbgames.ui.list
{
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.TextfieldUtil;
   import flash.events.Event;
   import nl.hbgames.managers.AssetManager;
   
   public class SimpleSearchListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _Callback:Function;
      
      private var _SearchKey:String;
      
      public function SimpleSearchListItem(param1:String, param2:Function)
      {
         _Callback = param2;
         _Title = param1;
         super(AssetManager.GetDefinition("libListSimpleSearchContent",true,true));
      }
      
      public function get SearchKey() : String
      {
         return _SearchKey;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblSearchDescription.text = _Title;
         _Content.txtSearch.text = Localization.Get("friends_textfield_search");
         _Content.txtSearch.maxChars = 128;
         TextfieldUtil.Register(_Content.txtSearch,"default",true,false,OnSearchChanged);
      }
      
      private function OnSearchChanged(param1:Event) : void
      {
         var _loc2_:* = param1.target;
         if(_loc2_.text != Localization.Get("friends_textfield_search"))
         {
            _SearchKey = _loc2_.text;
            _Callback(_loc2_.text);
         }
      }
      
      override public function Dispose() : void
      {
         TextfieldUtil.Unregister(_Content.txtSearch);
         _Callback = null;
         _Title = null;
         super.Dispose();
      }
   }
}
