package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.ui.buttons.PopupButtonLarge;
   import flash.events.MouseEvent;
   
   public class OptionsBox extends BasePopup
   {
       
      private const MAX_BUTTONS:int = 3;
      
      private var _Title:String;
      
      private var _Buttons:Array;
      
      private var _ButtonInfo:Array;
      
      private var _Callback:Function;
      
      public function OptionsBox(param1:String, param2:Function, param3:Array = null)
      {
         _Title = param1;
         _Callback = param2;
         _Buttons = [];
         _ButtonInfo = param3?param3:[];
         super(new libOptionsBox());
      }
      
      override public function Initialize() : void
      {
         var _loc2_:* = 0;
         var _loc1_:* = null;
         super.Initialize();
         _Content.lblTitle.text = _Title;
         _Buttons.push(new PopupCloseButton(_Content.btnClose,OnButtonClick));
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            _loc1_ = null;
            if(_loc2_ < _ButtonInfo.length)
            {
               _loc1_ = new PopupButtonLarge(_Content["btn" + _loc2_],OnButtonClick,_ButtonInfo[_loc2_].label);
               if(!_ButtonInfo[_loc2_].enabled)
               {
                  _loc1_.Disable();
               }
            }
            else
            {
               _Content["btn" + _loc2_].visible = false;
            }
            if(_loc1_ != null)
            {
               _Buttons.push(_loc1_);
            }
            _loc2_++;
         }
      }
      
      private function OnButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:String = param1.target.name;
         var _loc3_:* = _loc2_;
         if("btn0" !== _loc3_)
         {
            if("btn1" !== _loc3_)
            {
               if("btn2" !== _loc3_)
               {
                  if("btnClose" === _loc3_)
                  {
                     this.Remove();
                  }
               }
               addr39:
               return;
            }
            addr12:
            _Callback(_loc2_.charAt(3));
            this.Remove();
            §§goto(addr39);
         }
         §§goto(addr12);
      }
      
      override public function OnBackHandler() : void
      {
         Remove();
      }
      
      override public function Dispose() : void
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Buttons.length)
         {
            _Buttons[_loc1_].Dispose();
            _Buttons[_loc1_] = null;
            _loc1_++;
         }
         _ButtonInfo = null;
         _Buttons = null;
         _Callback = null;
         super.Dispose();
      }
   }
}
