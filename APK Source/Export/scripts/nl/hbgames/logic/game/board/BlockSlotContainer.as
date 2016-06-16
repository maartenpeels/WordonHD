package nl.hbgames.logic.game.board
{
   import flash.display.Sprite;
   import nl.hbgames.utils.Random;
   import flash.display.MovieClip;
   
   public class BlockSlotContainer extends Object
   {
       
      protected var _Container:Sprite;
      
      protected var _Slots:Vector.<BlockSlot>;
      
      protected var _SpecialSlots:Vector.<BlockSlot>;
      
      public function BlockSlotContainer(param1:Sprite, param2:String, param3:uint, param4:Boolean = false)
      {
         var _loc6_:* = 0;
         var _loc5_:* = null;
         super();
         _Container = param1;
         _Slots = new Vector.<BlockSlot>();
         _SpecialSlots = new Vector.<BlockSlot>();
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc5_ = param1[param2 + _loc6_];
            _Slots.push(new BlockSlot(this,_loc5_,_loc6_,param4));
            _loc6_++;
         }
      }
      
      protected function AddBlock(param1:BaseBlock, param2:Boolean = false) : void
      {
         var _loc5_:* = 0;
         var _loc4_:* = null;
         var _loc3_:Vector.<BlockSlot> = param2?_SpecialSlots:_Slots;
         _loc5_ = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc4_ = _loc3_[_loc5_];
            if(_loc4_.IsFree)
            {
               _loc4_.Insert(param1,false);
               param1.LinkSlot(_loc4_);
               _Container.addChild(param1);
               break;
            }
            _loc5_++;
         }
      }
      
      public function PlaceLetters(param1:int, param2:Array, param3:Class, param4:int = -1) : void
      {
         var _loc8_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = false;
         RemoveBlocks(false,false);
         var _loc7_:int = param2.length > _Slots.length?_Slots.length:param2.length;
         _loc8_ = 0;
         while(_loc8_ < _loc7_)
         {
            _loc5_ = param2[_loc8_];
            _loc6_ = param4 > -1 && _loc5_.charAt(0) == "!" || _loc5_.charAt(0) == "^";
            AddBlock(new param3(_loc6_?param4:param1,_loc6_,_loc5_));
            _loc8_++;
         }
      }
      
      public function IsInSpecialSlots(param1:BaseBlock) : Boolean
      {
         return _SpecialSlots.indexOf(param1.Slot) > -1;
      }
      
      public function GetAllBlocks() : Vector.<BaseBlock>
      {
         var _loc2_:* = 0;
         var _loc1_:Vector.<BaseBlock> = new Vector.<BaseBlock>();
         _loc2_ = 0;
         while(_loc2_ < _Slots.length)
         {
            if(!_Slots[_loc2_].IsFree)
            {
               _loc1_.push(_Slots[_loc2_].Block);
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _SpecialSlots.length)
         {
            if(!_SpecialSlots[_loc2_].IsFree)
            {
               _loc1_.push(_SpecialSlots[_loc2_].Block);
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function GetBlocks(param1:Boolean = false, param2:Boolean = false, param3:int = -1) : Vector.<BaseBlock>
      {
         var _loc6_:* = 0;
         var _loc4_:Vector.<BlockSlot> = param2?_SpecialSlots:_Slots;
         var _loc5_:Vector.<BaseBlock> = new Vector.<BaseBlock>();
         _loc6_ = 0;
         while(_loc6_ < _loc4_.length)
         {
            if(!_loc4_[_loc6_].IsFree || param1)
            {
               if(param3 == -1 || _loc4_[_loc6_].Type == param3)
               {
                  _loc5_.push(_loc4_[_loc6_].Block);
               }
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function GetBonusBlocks() : Vector.<BaseBlock>
      {
         var _loc2_:* = 0;
         var _loc1_:Vector.<BaseBlock> = new Vector.<BaseBlock>();
         _loc2_ = 0;
         while(_loc2_ < _Slots.length)
         {
            if(!_Slots[_loc2_].IsFree)
            {
               if(_Slots[_loc2_].Block.IsBonus)
               {
                  _loc1_.push(_Slots[_loc2_].Block);
               }
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function GetBlock(param1:uint, param2:Boolean = false) : BaseBlock
      {
         var _loc3_:Vector.<BlockSlot> = param2?_SpecialSlots:_Slots;
         var param1:uint = param1 > _loc3_.length - 1?_loc3_.length - 1:param1;
         return _loc3_[param1].Block;
      }
      
      public function GetRandomBlocks(param1:int = 1, param2:Boolean = false) : Vector.<BaseBlock>
      {
         var _loc3_:Vector.<BaseBlock> = GetBlocks(false,param2);
         if(param1 > _loc3_.length)
         {
            var param1:int = _loc3_.length;
         }
         while(_loc3_.length > param1)
         {
            _loc3_.splice(Random.nextIntRange(0,_loc3_.length - 1),1);
         }
         return _loc3_;
      }
      
      public function InsertAtFreeSlot(param1:BaseBlock, param2:Boolean = false) : Boolean
      {
         var _loc5_:* = 0;
         var _loc4_:* = null;
         var _loc3_:Vector.<BlockSlot> = param2?_SpecialSlots:_Slots;
         _loc5_ = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc4_ = _loc3_[_loc5_];
            if(_loc4_.IsFree)
            {
               _loc4_.Insert(param1);
               return true;
            }
            _loc5_++;
         }
         return false;
      }
      
      public function Lock(param1:Boolean) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < _Slots.length)
         {
            _loc2_ = _Slots[_loc3_];
            if(!_loc2_.IsFree)
            {
               _loc2_.Block.Lock(param1);
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _SpecialSlots.length)
         {
            _loc2_ = _SpecialSlots[_loc3_];
            if(!_loc2_.IsFree)
            {
               _loc2_.Block.Lock(param1);
            }
            _loc3_++;
         }
      }
      
      public function RemoveBlocks(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc4_:* = 0;
         var _loc3_:Vector.<BlockSlot> = param1?_SpecialSlots:_Slots;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(_loc3_[_loc4_] != null)
            {
               _loc3_[_loc4_].Free(true,param2);
            }
            _loc4_++;
         }
      }
      
      public function GetSlot(param1:int, param2:Boolean = false) : BlockSlot
      {
         var _loc3_:Vector.<BlockSlot> = param2?_SpecialSlots:_Slots;
         return _loc3_[param1];
      }
      
      public function GetFirstFreeSlot(param1:Boolean = false) : BlockSlot
      {
         var _loc3_:* = 0;
         var _loc2_:Vector.<BlockSlot> = param1?_SpecialSlots:_Slots;
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(_loc2_[_loc3_].IsFree)
            {
               return _loc2_[_loc3_];
            }
            _loc3_++;
         }
         return null;
      }
      
      public function ShowBlocks(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc4_:* = 0;
         var _loc3_:Vector.<BlockSlot> = param1?_SpecialSlots:_Slots;
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(_loc3_[_loc4_] != null && !_loc3_[_loc4_].IsFree)
            {
               _loc3_[_loc4_].Block.visible = param2;
            }
            _loc4_++;
         }
      }
      
      public function Update() : void
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Slots.length)
         {
            _Slots[_loc1_].Update();
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _SpecialSlots.length)
         {
            _SpecialSlots[_loc1_].Update();
            _loc1_++;
         }
      }
      
      public function Dispose() : void
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Slots.length)
         {
            _Slots[_loc1_].Dispose();
            _Slots[_loc1_] = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < _SpecialSlots.length)
         {
            _SpecialSlots[_loc1_].Dispose();
            _SpecialSlots[_loc1_] = null;
            _loc1_++;
         }
         _Slots = null;
         _SpecialSlots = null;
         _Container = null;
      }
   }
}
