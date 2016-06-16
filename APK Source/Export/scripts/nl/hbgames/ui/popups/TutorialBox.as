package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.ListButton;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.logic.game.TutorialGameLogic;
   import flash.display.MovieClip;
   
   public class TutorialBox extends BasePopup
   {
       
      private var _Message:String = null;
      
      private var _LabelNext:String = null;
      
      private var _LabelBack:String = null;
      
      private var _CallbackNext:Function = null;
      
      private var _CallbackBack:Function = null;
      
      private var _ButtonNext:ListButton;
      
      private var _ButtonBack:ListButton;
      
      private var _Type:int;
      
      private var _Pos:Point;
      
      private var _Ticker:int = 0;
      
      public function TutorialBox(param1:int, param2:int, param3:String, param4:String = null, param5:Function = null, param6:String = null, param7:Function = null, param8:Boolean = false)
      {
         _Message = param3;
         _LabelNext = param4;
         _LabelBack = param6;
         _CallbackNext = param5;
         _CallbackBack = param7;
         _Pos = new Point(param1,param2);
         var _loc9_:MovieClip = new libTutorialBox();
         if(param5 == null && param7 == null)
         {
            _Type = 1;
         }
         else if(param5 != null && param7 == null)
         {
            _Type = 2;
         }
         else
         {
            _Type = 3;
         }
         _loc9_.gotoAndStop(_Type);
         super(_loc9_,true,false,param8,param8,"sfxPopupStar");
      }
      
      override public function Initialize() : void
      {
         _Content.label.htmlText = _Message;
         switch(_Type - 1)
         {
            case 0:
               this.mouseChildren = false;
               this.mouseEnabled = false;
               break;
            case 1:
               _ButtonNext = new ListButton(_Content.btnNext,OnNextClick,_LabelNext);
               this.mouseChildren = true;
               this.mouseEnabled = true;
               break;
            case 2:
               _ButtonNext = new ListButton(_Content.btnNext,OnNextClick,_LabelNext);
               _ButtonBack = new ListButton(_Content.btnBack,OnBackClick,_LabelBack);
               this.mouseChildren = true;
               this.mouseEnabled = true;
               break;
         }
         _Content.x = _Pos.x;
         _Content.y = _Pos.y;
         super.Initialize();
      }
      
      private function OnNextClick(param1:MouseEvent) : void
      {
         if(_CallbackNext != null)
         {
            _CallbackNext();
         }
         Remove();
      }
      
      private function OnBackClick(param1:MouseEvent) : void
      {
         if(_CallbackBack != null)
         {
            _CallbackBack();
         }
         Remove();
      }
      
      override public function OnBackHandler() : void
      {
         super.OnBackHandler();
         if(_Type == 2)
         {
            OnNextClick(null);
         }
         else if(_Type == 3)
         {
            OnBackClick(null);
         }
         else if(LogicManager.Instance.CurLogic is TutorialGameLogic)
         {
            LogicManager.Instance.CurLogic.OnBackClick();
         }
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_Type == 1)
         {
            _Ticker = _Ticker + 1;
            _Content.y = _Pos.y + Math.sin(_Ticker / 40) * 10;
         }
      }
      
      override public function Dispose() : void
      {
         if(_ButtonNext)
         {
            _ButtonNext.Dispose();
            _ButtonNext = null;
         }
         if(_ButtonBack)
         {
            _ButtonBack.Dispose();
            _ButtonBack = null;
         }
         _LabelBack = null;
         _LabelNext = null;
         _CallbackBack = null;
         _CallbackNext = null;
         _Pos = null;
         super.Dispose();
      }
   }
}
