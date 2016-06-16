package nl.hbgames.logic.game.board
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.AssetManager;
   
   public class BlockSlot extends Object
   {
       
      private const DROP_RADIUS:int = 60 * AssetManager.ContentScaleFactor;
      
      private var _Owner:BlockSlotContainer;
      
      private var _Content:MovieClip;
      
      private var _Index:int;
      
      private var _Type:int;
      
      private var _Block:BaseBlock;
      
      private var _PosX:int;
      
      private var _PosY:int;
      
      private var _Width:int;
      
      private var _Height:int;
      
      private var _EnableHelp:Boolean;
      
      public function BlockSlot(param1:BlockSlotContainer, param2:MovieClip, param3:int, param4:Boolean = false)
      {
         super();
         _Owner = param1;
         _Content = param2;
         _Index = param3;
         _Type = 0;
         _PosX = _Content.x;
         _PosY = _Content.y;
         _Width = _Content.width;
         _Height = _Content.height;
         _EnableHelp = param4;
         _Content.gotoAndStop(1);
      }
      
      public function get Owner() : BlockSlotContainer
      {
         return _Owner;
      }
      
      public function get Index() : int
      {
         return _Index;
      }
      
      public function get x() : int
      {
         return _PosX;
      }
      
      public function get y() : int
      {
         return _PosY;
      }
      
      public function get height() : int
      {
         return _Height;
      }
      
      public function get width() : int
      {
         return _Width;
      }
      
      public function get Type() : int
      {
         return _Type;
      }
      
      public function get Block() : BaseBlock
      {
         return _Block;
      }
      
      public function get IsFree() : Boolean
      {
         return _Block == null;
      }
      
      public function SetType(param1:int) : void
      {
         _Type = param1;
         _Content.gotoAndStop(param1 + 1);
         RemoveListeners();
         if(_EnableHelp)
         {
            if(param1 != 0)
            {
               _Content.addEventListener("click",OnClick);
            }
         }
      }
      
      public function IsNearBlock(param1:BaseBlock) : Boolean
      {
         var _loc3_:int = this.x - param1.x;
         var _loc4_:int = this.y - param1.y;
         var _loc2_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_;
         if(_loc2_ <= DROP_RADIUS * DROP_RADIUS)
         {
            return true;
         }
         return false;
      }
      
      public function IsInColumn(param1:BaseBlock) : Boolean
      {
         var _loc4_:* = 1.1;
         var _loc2_:int = (_Width >> 1) * _loc4_;
         var _loc3_:int = (_Height >> 1) * _loc4_;
         if(param1.x >= this.x - _loc2_ && param1.x <= this.x + _loc2_)
         {
            if(param1.y < this.y + _loc3_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function Insert(param1:BaseBlock, param2:Boolean = true, param3:Boolean = false) : Boolean
      {
         if(_Block == null || param3)
         {
            _Block = param1;
            _Block.LinkSlot(this);
            _Block.Drop(this,param2);
            return true;
         }
         return false;
      }
      
      public function ForceLink(param1:BaseBlock) : void
      {
         _Block = param1;
         if(_Block != null)
         {
            _Block.Drop(this);
         }
      }
      
      public function Free(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(_Block != null)
         {
            if(param1)
            {
               if(param2)
               {
                  _Block.DisposeWithAnim();
               }
               else
               {
                  _Block.Dispose();
               }
            }
            _Block = null;
         }
      }
      
      public function Update() : void
      {
         if(_Block != null)
         {
            _Block.Update();
         }
      }
      
      private function OnClick(param1:MouseEvent) : void
      {
         switch(_Type - 1)
         {
            case 0:
               new MessageBox(Localization.Get("help_board_spot_dl_title"),Localization.Get("help_board_spot_dl"));
               break;
            case 1:
               new MessageBox(Localization.Get("help_board_spot_tl_title"),Localization.Get("help_board_spot_tl"));
               break;
            case 2:
               new MessageBox(Localization.Get("help_board_spot_bl_title"),Localization.Get("help_board_spot_bl"));
               break;
            case 3:
               new MessageBox(Localization.Get("help_board_spot_10_title"),Localization.Get("help_board_spot_10"));
               break;
         }
      }
      
      private function RemoveListeners() : void
      {
         if(_Content.hasEventListener("click"))
         {
            _Content.removeEventListener("click",OnClick);
         }
      }
      
      public function Dispose() : void
      {
         RemoveListeners();
         _Owner = null;
         _Content = null;
      }
   }
}
