package nl.hbgames.logic.game.board
{
   import nl.hbgames.logic.game.BaseGame;
   import nl.hbgames.WordOn;
   import nl.hbgames.utils.Random;
   import flash.display.MovieClip;
   
   public class Rack extends BlockSlotContainer
   {
       
      public function Rack(param1:MovieClip)
      {
         super(param1,"mcRackSpace",7);
      }
      
      public function Insert(param1:BaseBlock) : Boolean
      {
         var _loc10_:* = null;
         var _loc7_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc2_:* = NaN;
         var _loc9_:* = 0;
         var _loc5_:* = 0;
         var _loc12_:* = 0;
         var _loc11_:uint = _Slots.length;
         var _loc8_:* = 1.7976931348623157E308;
         var _loc6_:Vector.<BlockSlot> = new Vector.<BlockSlot>();
         _loc12_ = 0;
         while(_loc12_ < _Slots.length)
         {
            if(param1.y + (param1.height >> 1) >= _Slots[_loc12_].y)
            {
               _loc6_.push(_Slots[_loc12_]);
            }
            _loc12_++;
         }
         _loc12_ = 0;
         while(_loc12_ < _loc6_.length)
         {
            if(param1.IsBonus)
            {
               if(!BaseGame.Instance.OwnTable.InsertAtFreeSlot(param1,true))
               {
                  param1.Drop(param1.Slot);
               }
               return true;
            }
            _loc10_ = _loc6_[_loc12_];
            _loc3_ = _loc10_.x - param1.x;
            _loc4_ = _loc10_.y - param1.y;
            _loc2_ = _loc3_ * _loc3_ + _loc4_ * _loc4_;
            if(_loc2_ < _loc8_)
            {
               _loc8_ = _loc2_;
               _loc7_ = _loc10_;
            }
            _loc12_++;
         }
         if(_loc7_ != null)
         {
            if(_loc7_.Block == param1)
            {
               param1.Drop(_loc7_);
               return true;
            }
            if(_loc7_.IsFree)
            {
               _loc7_.Insert(param1);
               return true;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc11_)
            {
               if(_Slots[_loc9_].IsFree || _Slots[_loc9_].Block.IsDragging)
               {
                  _loc5_ = _loc9_;
                  if(_loc7_.Index < _loc5_)
                  {
                     break;
                  }
               }
               _loc9_++;
            }
            if(_loc5_ < _loc7_.Index)
            {
               _loc9_ = _loc5_;
               while(_loc9_ < _loc7_.Index)
               {
                  if(!_Slots[_loc9_ + 1].IsFree)
                  {
                     _Slots[_loc9_ + 1].Block.LinkSlot(_Slots[_loc9_],true);
                  }
                  _Slots[_loc9_].ForceLink(_Slots[_loc9_ + 1].Block);
                  _loc9_++;
               }
            }
            else if(_loc5_ > _loc7_.Index)
            {
               _loc9_ = _loc5_;
               while(_loc9_ > _loc7_.Index)
               {
                  if(!_Slots[_loc9_ - 1].IsFree)
                  {
                     _Slots[_loc9_ - 1].Block.LinkSlot(_Slots[_loc9_],true);
                  }
                  _Slots[_loc9_].ForceLink(_Slots[_loc9_ - 1].Block);
                  _loc9_--;
               }
            }
            if(param1.Slot.Block == param1)
            {
               param1.Free();
            }
            param1.LinkSlot(_Slots[_loc7_.Index],true);
            _Slots[_loc7_.Index].ForceLink(param1);
            return true;
         }
         return false;
      }
      
      public function Shuffle() : Boolean
      {
         var _loc7_:* = 0;
         var _loc5_:* = null;
         var _loc1_:* = 0;
         var _loc6_:* = 0;
         var _loc3_:* = null;
         var _loc4_:Vector.<BaseBlock> = GetBlocks();
         var _loc2_:uint = _loc4_.length;
         var _loc8_:Array = [];
         _loc7_ = 0;
         while(_loc7_ < _loc2_)
         {
            _loc8_.push(_loc7_);
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < _Slots.length)
         {
            _loc5_ = _Slots[_loc7_];
            if(_loc7_ < _loc2_)
            {
               _loc1_ = Math.round(Math.random() * (_loc8_.length - 1));
               _loc6_ = _loc8_.splice(_loc1_,1)[0];
               _loc3_ = _loc4_[_loc6_];
               _loc3_.LinkSlot(_loc5_,true);
               _loc5_.ForceLink(_loc3_);
            }
            else
            {
               _loc5_.Free();
            }
            _loc7_++;
         }
         WordOn.Instance.Audio.Play(Random.pick(["sfxShuffle1","sfxShuffle2","sfxShuffle3","sfxShuffle4"]));
         return true;
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
