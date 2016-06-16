package nl.hbgames.logic.game.board
{
   public class PlayerBlock extends BaseBlock
   {
       
      public function PlayerBlock(param1:int, param2:Boolean, param3:String, param4:int = -1, param5:BlockSlot = null)
      {
         super(param1,param2,param3,param4,true,param5);
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
