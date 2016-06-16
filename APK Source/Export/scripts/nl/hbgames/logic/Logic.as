package nl.hbgames.logic
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import nl.hbgames.ui.list.ScrollingList;
   import nl.hbgames.ui.buttons.ArrowButton;
   import nl.hbgames.logic.menu.elements.Banks;
   import flash.events.Event;
   import nl.hbgames.config.Settings;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.managers.LayoutManager;
   import nl.hbgames.managers.AssetManager;
   
   public class Logic extends Sprite
   {
       
      protected var _Content:MovieClip;
      
      protected var _List:ScrollingList;
      
      private var _BtnBack:ArrowButton;
      
      protected var _Banks:Banks;
      
      public function Logic(param1:MovieClip = null, param2:Boolean = true, param3:Boolean = true)
      {
         var _loc4_:* = null;
         super();
         this.addEventListener("addedToStage",OnAddedToStage);
         if(param1 != null)
         {
            if(param2)
            {
               _Content = LayoutManager.AdjustToScreen(param1,true);
            }
            else
            {
               _Content = param1;
            }
            _loc4_ = _Content.mcListBounds;
            if(_loc4_ != null)
            {
               _List = new ScrollingList(_loc4_.width,_loc4_.height,0,26 * AssetManager.ContentScaleFactor,false,true);
               _loc4_.removeChildren();
               var _loc5_:* = 1;
               _loc4_.scaleY = _loc5_;
               _loc4_.scaleX = _loc5_;
               _loc4_.addChild(_List);
            }
            if(_Content.btnBack != null)
            {
               _BtnBack = new ArrowButton(_Content.btnBack,OnBackClick);
            }
            if(_Content.mcInventory != null)
            {
               _Banks = new Banks(_Content.mcInventory,param3);
            }
            this.addChild(_Content);
         }
      }
      
      private function OnAddedToStage(param1:Event) : void
      {
         this.removeEventListener("addedToStage",OnAddedToStage);
         Initialize();
      }
      
      protected function CenterList() : void
      {
         if(_List != null)
         {
            _List.x = (Settings.SCREEN_WIDTH >> 1) - (_List.width >> 1);
         }
      }
      
      protected function Initialize() : void
      {
      }
      
      public function OnFocus(param1:Object = null) : void
      {
      }
      
      public function OnBackClick(param1:MouseEvent = null) : void
      {
      }
      
      public function Update() : void
      {
         if(!PanelManager.Instance.IsActive && !PopupManager.Instance.isActive)
         {
            if(_List != null)
            {
               _List.Update();
            }
         }
      }
      
      public function Dispose() : void
      {
         if(_List != null)
         {
            _List.Dispose();
            _List.parent.removeChild(_List);
            _List = null;
         }
         if(_BtnBack != null)
         {
            _BtnBack.Dispose();
            _BtnBack = null;
         }
         if(_Banks != null)
         {
            _Banks.Dispose();
            _Banks = null;
         }
         if(_Content)
         {
            this.removeChild(_Content);
         }
         _Content = null;
      }
   }
}
