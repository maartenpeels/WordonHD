package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.list.ScrollingList;
   import nl.hbgames.ui.buttons.PopupButton;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.ui.list.CheckListItem;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.list.SuggestionListItem;
   import flash.events.MouseEvent;
   
   public class BaseSuggestionBox extends BasePopup
   {
       
      private var _Title:String;
      
      private var _Body:String;
      
      protected var _List:ScrollingList;
      
      private var _ButtonInvite:PopupButton;
      
      private var _ButtonClose:PopupCloseButton;
      
      protected var _MaxListItems:int = 0;
      
      protected var _ItemsFilled:int = 0;
      
      protected var _ItemsSelected:int = 0;
      
      protected var _TogglingAll:Boolean;
      
      private var _ContinueClose:Boolean;
      
      private var _SelectAllItem:CheckListItem;
      
      public function BaseSuggestionBox(param1:int, param2:String, param3:String)
      {
         _MaxListItems = param1;
         _Title = param2;
         _Body = param3;
         _TogglingAll = false;
         _ContinueClose = false;
         super(new libSuggestionBox());
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = _Title;
         _Content.lblMessage.text = _Body;
         _List = new ScrollingList(_Content.mcListBounds.width,_Content.mcListBounds.height);
         var _loc1_:* = 1;
         _Content.mcListBounds.scaleY = _loc1_;
         _Content.mcListBounds.scaleX = _loc1_;
         _Content.mcListBounds.removeChildren();
         _Content.mcListBounds.addChild(_List);
         _ButtonInvite = new PopupButton(_Content.btnInvite,OnInviteClick,Localization.Get("general_button_continue"));
         _ButtonClose = new PopupCloseButton(_Content.btnClose,OnCancelClick);
         _SelectAllItem = §§dup(new CheckListItem(OnToggleAll,Localization.Get("select_all")));
         _List.Add(new CheckListItem(OnToggleAll,Localization.Get("select_all")));
         _Content.visible = false;
      }
      
      protected function Fill() : void
      {
         WaitBox.Hide();
         if(_ItemsFilled != 0)
         {
            _Content.visible = true;
         }
         else
         {
            Remove();
         }
      }
      
      protected function ShowItem(param1:String, param2:String, param3:Boolean, param4:Boolean) : Boolean
      {
         if(_ItemsFilled < _MaxListItems)
         {
            if(!ClientData.Instance.GameListData.GetUserInvited(param1))
            {
               _List.Add(new SuggestionListItem(OnItemToggle,param1,param2,param3,param4));
               _ItemsFilled = _ItemsFilled + 1;
               _ItemsSelected = _ItemsFilled;
            }
            return true;
         }
         return false;
      }
      
      private function OnToggleAll(param1:CheckListItem) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         _TogglingAll = true;
         _loc3_ = 0;
         while(_loc3_ < _List.Items.length)
         {
            if(_List.Items[_loc3_] is SuggestionListItem)
            {
               _loc2_ = _List.Items[_loc3_] as SuggestionListItem;
               _loc2_.Check(param1.IsChecked);
            }
            _loc3_++;
         }
         _TogglingAll = false;
      }
      
      private function OnItemToggle(param1:SuggestionListItem) : void
      {
         if(param1.IsChecked)
         {
            if(_ItemsSelected < _ItemsFilled)
            {
               _ItemsSelected = _ItemsSelected + 1;
            }
         }
         else if(_ItemsSelected > 0)
         {
            _ItemsSelected = _ItemsSelected - 1;
         }
         if(_ItemsSelected > 0)
         {
            _ButtonInvite.Enable();
         }
         else
         {
            _ButtonInvite.Disable();
         }
         if(!_TogglingAll)
         {
            if(_ItemsSelected >= _ItemsFilled)
            {
               _SelectAllItem.Check(true,false);
            }
            else
            {
               _SelectAllItem.Check(false,false);
            }
         }
      }
      
      protected function OnInviteClick(param1:MouseEvent) : void
      {
      }
      
      private function OnCancelClick(param1:MouseEvent = null) : void
      {
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         OnCancelClick(null);
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_List != null)
         {
            _List.Update();
         }
      }
      
      override public function Dispose() : void
      {
         _List.Dispose();
         _List = null;
         _ButtonInvite.Dispose();
         _ButtonInvite = null;
         _ButtonClose.Dispose();
         _ButtonClose = null;
         _SelectAllItem = null;
         _ItemsFilled = 0;
         super.Dispose();
      }
   }
}
