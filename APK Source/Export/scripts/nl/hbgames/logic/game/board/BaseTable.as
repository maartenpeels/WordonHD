package nl.hbgames.logic.game.board
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   
   public class BaseTable extends BlockSlotContainer
   {
       
      public function BaseTable(param1:Sprite, param2:String, param3:Boolean = false)
      {
         var _loc5_:* = 0;
         var _loc4_:* = null;
         super(param1,param2,7,param3);
         _loc5_ = 0;
         while(_loc5_ < 2)
         {
            _loc4_ = param1[param2 + "Bonus" + _loc5_];
            _SpecialSlots.push(new BlockSlot(this,_loc4_,_loc5_,param3));
            _loc5_++;
         }
      }
      
      public function Insert(param1:BaseBlock) : Boolean
      {
         var _loc9_:* = 0;
         var _loc8_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc2_:* = NaN;
         var _loc7_:* = 1.7976931348623157E308;
         var _loc5_:Vector.<BlockSlot> = new Vector.<BlockSlot>();
         _loc9_ = 0;
         while(_loc9_ < _Slots.length)
         {
            if(_Slots[_loc9_].IsFree || _Slots[_loc9_].Block == param1)
            {
               _loc5_.push(_Slots[_loc9_]);
            }
            _loc9_++;
         }
         if(param1.IsBonus)
         {
            _loc9_ = 0;
            while(_loc9_ < _SpecialSlots.length)
            {
               if(_SpecialSlots[_loc9_].IsFree || _SpecialSlots[_loc9_].Block == param1)
               {
                  _loc5_.push(_SpecialSlots[_loc9_]);
               }
               _loc9_++;
            }
         }
         _loc9_ = 0;
         while(_loc9_ < _loc5_.length)
         {
            _loc8_ = _loc5_[_loc9_];
            _loc3_ = _loc8_.x - param1.x;
            _loc4_ = _loc8_.y - param1.y;
            _loc2_ = _loc3_ * _loc3_ + _loc4_ * _loc4_;
            if(_loc2_ < _loc7_)
            {
               _loc7_ = _loc2_;
               _loc6_ = _loc8_;
            }
            _loc9_++;
         }
         if(_loc6_ != null && _loc6_.Block != param1)
         {
            _loc6_.Insert(param1);
            return true;
         }
         return false;
      }
      
      public function SetGrid(param1:Array) : void
      {
         var _loc2_:* = 0;
         if(param1.length <= _Slots.length)
         {
            _loc2_ = 0;
            while(_loc2_ < _Slots.length)
            {
               _Slots[_loc2_].SetType(param1[_loc2_]);
               _loc2_++;
            }
         }
      }
      
      public function PlaceSpecialLetters(param1:int, param2:Array, param3:Class, param4:Boolean = false) : void
      {
         var _loc7_:* = 0;
         var _loc5_:* = undefined;
         RemoveBlocks(true,false);
         var _loc6_:int = param2.length > _SpecialSlots.length?_SpecialSlots.length:param2.length;
         _loc7_ = 0;
         while(_loc7_ < _loc6_)
         {
            _loc5_ = new param3(param1,true,param2[_loc7_]);
            _loc5_.ShowSparkle(param4);
            AddBlock(_loc5_,true);
            _loc7_++;
         }
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
