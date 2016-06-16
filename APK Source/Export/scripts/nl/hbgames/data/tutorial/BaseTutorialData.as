package nl.hbgames.data.tutorial
{
   import nl.hbgames.config.Settings;
   import nl.hbgames.managers.AssetManager;
   
   public class BaseTutorialData extends Object
   {
       
      protected const GAME_ID:String = "tutorial_game";
      
      public function BaseTutorialData()
      {
         super();
      }
      
      public function get GameID() : String
      {
         return "tutorial_game";
      }
      
      public function Get(param1:int) : Object
      {
         var _loc2_:Object = {};
         _loc2_.session = {};
         _loc2_.actions = {};
         _loc2_.session.cycle = param1 + 1;
         _loc2_.session.id = "tutorial_game";
         _loc2_.session.state = 1;
         return _loc2_;
      }
      
      protected function CreateMessage(param1:int, param2:String, param3:Number, param4:int = 0, param5:int = 0, param6:Boolean = false) : Object
      {
         var _loc7_:Object = {};
         _loc7_.body = param2;
         _loc7_.type = param1;
         _loc7_.x = Settings.SCREEN_CENTER_X + param4 * AssetManager.ContentScaleFactor;
         _loc7_.y = Settings.SCREEN_CENTER_Y + param5 * AssetManager.ContentScaleFactor;
         _loc7_.delay = param3;
         _loc7_.cover = param6;
         return _loc7_;
      }
      
      public function Dispose() : void
      {
      }
   }
}
