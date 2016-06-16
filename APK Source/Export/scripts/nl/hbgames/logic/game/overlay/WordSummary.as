package nl.hbgames.logic.game.overlay
{
   import flash.display.MovieClip;
   import nl.hbgames.utils.WordParser;
   import flash.events.MouseEvent;
   
   public class WordSummary extends Object
   {
       
      private var _Content:MovieClip;
      
      private var _Word:Array;
      
      private var _LangID:String;
      
      private var _IsTappable:Boolean = true;
      
      public function WordSummary(param1:MovieClip)
      {
         super();
         _Content = param1;
         _Content.addEventListener("click",OnClick);
         _Content.mcTapTip.gotoAndStop(1);
      }
      
      public function Show(param1:Array, param2:int, param3:Array, param4:String, param5:Boolean = true) : void
      {
         var _loc8_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         _IsTappable = param5;
         _Word = param1.concat();
         _LangID = param4;
         _loc8_ = 0;
         while(_loc8_ < param3.length)
         {
            _loc6_ = _Content["mcSlot" + _loc8_];
            if(_loc8_ < param1.length)
            {
               _loc7_ = WordParser.RemoveTagsFromString(param1[_loc8_]);
               _loc6_.lblLetter.text = _loc7_;
            }
            else
            {
               _loc6_.lblLetter.text = "";
            }
            _loc6_.gotoAndStop(param3[_loc8_] + 1);
            _loc8_++;
         }
         _Content.lblScore.text = param2;
         _Content.visible = true;
      }
      
      public function Hide() : void
      {
         _Word = null;
         _LangID = null;
         _Content.visible = false;
      }
      
      private function OnClick(param1:MouseEvent) : void
      {
      }
      
      public function Dispose() : void
      {
         _Content.removeEventListener("click",OnClick);
         _Content.buttonMode = false;
         _Content = null;
      }
   }
}
