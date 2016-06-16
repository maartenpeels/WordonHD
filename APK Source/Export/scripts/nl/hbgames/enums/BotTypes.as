package nl.hbgames.enums
{
   import nl.hbgames.logic.game.singleplayer.ai.BaseAIOpponent;
   import nl.hbgames.logic.game.singleplayer.ai.BeginnerAIOpponent;
   import nl.hbgames.logic.game.singleplayer.ai.ExperiencedAIOpponent;
   import nl.hbgames.logic.game.singleplayer.ai.ExpertAIOpponent;
   
   public class BotTypes extends Object
   {
      
      public static const BEGINNER_NAME_KEY:String = "bot_name_beginner";
      
      public static const BEGINNER_ID:String = "bot_beginner";
      
      public static const EXPERIENCED_NAME_KEY:String = "bot_name_experienced";
      
      public static const EXPERIENCED_ID:String = "bot_experienced";
      
      public static const EXPERT_NAME_KEY:String = "bot_name_expert";
      
      public static const EXPERT_ID:String = "bot_expert";
       
      public function BotTypes()
      {
         super();
      }
      
      public static function GetAIClassByID(param1:String) : BaseAIOpponent
      {
         var _loc2_:* = param1;
         if("bot_beginner" !== _loc2_)
         {
            if("bot_experienced" !== _loc2_)
            {
               if("bot_expert" !== _loc2_)
               {
                  return null;
               }
               return new ExpertAIOpponent();
            }
            return new ExperiencedAIOpponent();
         }
         return new BeginnerAIOpponent();
      }
   }
}
