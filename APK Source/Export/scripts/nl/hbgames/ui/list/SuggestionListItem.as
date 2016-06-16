package nl.hbgames.ui.list
{
   import nl.hbgames.ui.buttons.AvatarButton;
   
   public class SuggestionListItem extends CheckListItem
   {
       
      private var _ID:String;
      
      private var _Name:String;
      
      private var _IsFacebook:Boolean;
      
      private var _Avatar:AvatarButton;
      
      private var _IsSmallItem:Boolean;
      
      public function SuggestionListItem(param1:Function, param2:String, param3:String, param4:Boolean, param5:Boolean = false)
      {
         _ID = param2;
         _Name = param3;
         _IsFacebook = param4;
         _IsSmallItem = param5;
         super(param1,_Name,_IsSmallItem?"libListSuggestionPopupContentSmall":"libListSuggestionPopupContent");
      }
      
      public function get IsFacebook() : Boolean
      {
         return _IsFacebook;
      }
      
      public function get ID() : String
      {
         return _ID;
      }
      
      public function get Name() : String
      {
         return _Name;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Avatar = new AvatarButton(false,null,false,0,"small");
         _Content.mcImage.addChild(_Avatar);
         if(_IsSmallItem)
         {
            var _loc1_:* = 0.5;
            _Content.mcImage.scaleY = _loc1_;
            _Content.mcImage.scaleX = _loc1_;
         }
         if(_IsFacebook)
         {
            _Avatar.LoadByFacebookID(_ID);
         }
         else
         {
            _Avatar.LoadByUserID(_ID);
         }
      }
      
      override public function Dispose() : void
      {
         if(_Avatar != null)
         {
            _Avatar.Dispose();
            _Content.mcImage.removeChild(_Avatar);
            _Avatar = null;
         }
         _ID = null;
         _Name = null;
         super.Dispose();
      }
   }
}
