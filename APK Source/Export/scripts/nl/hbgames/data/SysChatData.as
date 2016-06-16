package nl.hbgames.data
{
   public class SysChatData extends UserChatData
   {
       
      private var _WordScore:int;
      
      private var _WordStrength:int;
      
      public function SysChatData(param1:Array)
      {
         super(param1);
         _WordScore = param1[3];
         _WordStrength = param1[4];
      }
      
      public function get WordScore() : int
      {
         return _WordScore;
      }
      
      public function get WordStrength() : int
      {
         return _WordStrength;
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
         _WordScore = 0;
         _WordStrength = 0;
      }
   }
}
