package nl.hbgames.logic.game.singleplayer.ai
{
   import nl.hbgames.solver.WordScore;
   import nl.hbgames.utils.Random;
   import nl.hbgames.data.Localization;
   
   public class ExpertAIOpponent extends BaseAIOpponent
   {
       
      private const CHANCE_OF_PICKING_BEST_WORD:Number = 0.7;
      
      public function ExpertAIOpponent()
      {
         super("bot_expert",Localization.Get("bot_name_expert"));
         theMinSimulatedDelayTime = 4000;
         theMinSimulatedDelayTime = 7000;
      }
      
      override protected function pickWord(param1:Vector.<WordScore>) : void
      {
         if(Random.nextFloat() <= 0.7)
         {
            processResult(param1[0]);
         }
         else
         {
            processResult(param1[Random.nextIntRange(0,param1.length - 1)]);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
