package nl.hbgames.managers
{
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.popups.AchievementBox;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.managers.social.SocialManager;
   import nl.hbgames.utils.Response;
   
   public class AchievementManager extends Object
   {
       
      public function AchievementManager()
      {
         super();
      }
      
      public static function Show(param1:Object) : void
      {
         records = param1;
         if(records == null)
         {
            var records:Object = {};
         }
         if(records.highGameScore != null)
         {
            var shareTitle:String = Localization.Get("share_best_game_title");
            var shareBody:String = Localization.Get("share_best_game_body",records.highGameScore);
            new AchievementBox(Localization.Get("achievement_game_score"),records.highGameScore + Localization.Get("points_postfix"),"http://www.wordonhd.com/images/icon_fb_best_game.png",shareBody,2);
            if(ClientData.Instance.IsFacebookUser)
            {
               SocialManager.instance.setHighscore(records.highGameScore,function(param1:Response):void
               {
               });
            }
         }
         if(records.highScore != null)
         {
            shareTitle = Localization.Get("share_best_word_title");
            shareBody = Localization.Get("share_best_word_body","\'" + (records.highScore.word.join("")).toUpperCase() + "\'",records.highScore.score);
            new AchievementBox(Localization.Get("achievement_word_score"),records.highScore.word.join("") + " (" + records.highScore.score + Localization.Get("points_postfix") + ")","http://www.wordonhd.com/images/icon_fb_best_word.png",shareBody,1);
         }
      }
   }
}
