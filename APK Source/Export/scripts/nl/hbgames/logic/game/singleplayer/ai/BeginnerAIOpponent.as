package nl.hbgames.logic.game.singleplayer.ai
{
   import nl.hbgames.solver.WordScore;
   import nl.hbgames.utils.Random;
   import nl.hbgames.data.Localization;
   
   public class BeginnerAIOpponent extends BaseAIOpponent
   {
       
      private const CHANCE_OF_LOOKING_AT_WORDS:Number = 0.95;
      
      public function BeginnerAIOpponent()
      {
         super("bot_beginner",Localization.Get("bot_name_beginner"));
      }
      
      override protected function pickWord(param1:Vector.<WordScore>) : void
      {
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         if(Random.nextFloat() <= 0.95)
         {
            _loc2_ = param1.length - 3;
            _loc4_ = param1.length - 1;
            _loc3_ = Random.nextIntRange(_loc2_,_loc4_);
            if(_loc3_ < 0)
            {
               _loc3_ = 0;
            }
            processResult(param1[_loc3_]);
         }
         else
         {
            processResult(null);
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
