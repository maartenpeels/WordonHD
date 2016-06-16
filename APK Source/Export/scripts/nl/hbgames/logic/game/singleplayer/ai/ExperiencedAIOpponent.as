package nl.hbgames.logic.game.singleplayer.ai
{
   import nl.hbgames.solver.WordScore;
   import nl.hbgames.utils.Random;
   import nl.hbgames.data.Localization;
   
   public class ExperiencedAIOpponent extends BaseAIOpponent
   {
       
      public function ExperiencedAIOpponent()
      {
         super("bot_experienced",Localization.Get("bot_name_experienced"));
         theMinSimulatedDelayTime = 3000;
         theMinSimulatedDelayTime = 5000;
      }
      
      override protected function pickWord(param1:Vector.<WordScore>) : void
      {
         processResult(param1[Random.nextIntRange(0,param1.length - 1)]);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
