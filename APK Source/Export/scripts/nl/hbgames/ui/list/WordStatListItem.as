package nl.hbgames.ui.list
{
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.AssetManager;
   
   public class WordStatListItem extends BaseListItem
   {
       
      private var _YourWord:String;
      
      private var _YourScore:int;
      
      private var _YourStrength:int;
      
      private var _OtherWord:String;
      
      private var _OtherScore:int;
      
      private var _OtherStrength:int;
      
      public function WordStatListItem(param1:String, param2:String, param3:int, param4:int, param5:int = 1, param6:int = 1)
      {
         _YourWord = param1;
         _YourScore = param3;
         _YourStrength = param5;
         _OtherWord = param2;
         _OtherScore = param4;
         _OtherStrength = param6;
         super(AssetManager.GetDefinition("libWordStatContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         if(_YourWord.length >= 2)
         {
            _Content.lblYourWord.text = _YourWord;
            _Content.lblYourScore.text = _YourScore + Localization.Get("points_postfix");
            _Content.mcYourStars.gotoAndStop(_YourStrength);
         }
         else
         {
            if(_YourWord == "1" || _YourWord == "2")
            {
               _YourWord = _YourWord == "1"?Localization.Get("game_stats_word_swapped"):Localization.Get("game_stats_turn_passed");
               _Content.lblYourWord.textColor = 0;
            }
            _Content.lblYourWord.text = _YourWord;
            _Content.lblYourScore.text = "";
            _Content.removeChild(_Content.mcYourStars);
         }
         if(_OtherWord.length >= 2)
         {
            _Content.lblOtherWord.text = _OtherWord;
            _Content.lblOtherScore.text = _OtherScore + Localization.Get("points_postfix");
            _Content.mcOtherStars.gotoAndStop(_OtherStrength);
         }
         else
         {
            if(_OtherWord == "1" || _OtherWord == "2")
            {
               _OtherWord = _OtherWord == "1"?Localization.Get("game_stats_word_swapped"):Localization.Get("game_stats_turn_passed");
               _Content.lblOtherWord.textColor = 0;
            }
            _Content.lblOtherWord.text = _OtherWord;
            _Content.lblOtherScore.text = "";
            _Content.removeChild(_Content.mcOtherStars);
         }
         _Content.mouseChildren = false;
         _Content.mouseEnabled = false;
      }
      
      override public function OnScrollStatus(param1:Boolean) : void
      {
         super.OnScrollStatus(param1);
      }
      
      override public function OnRendered(param1:Boolean) : void
      {
         super.OnRendered(param1);
      }
      
      override public function Update() : void
      {
         super.Update();
      }
      
      override public function Dispose() : void
      {
         _YourWord = null;
         _OtherWord = null;
         super.Dispose();
      }
   }
}
