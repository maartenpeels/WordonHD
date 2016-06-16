package nl.hbgames.logic.game.board
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.data.LetterDictionary;
   import nl.hbgames.data.ClientData;
   import flash.utils.getQualifiedClassName;
   import nl.hbgames.managers.AssetManager;
   import com.greensock.TweenLite;
   import com.greensock.easing.Bounce;
   
   public class HintBlock extends Sprite
   {
       
      private var _Letter:String;
      
      private var _Value:int;
      
      private var _Graphic:Bitmap;
      
      public function HintBlock(param1:String, param2:BlockSlot, param3:Boolean = false)
      {
         super();
         _Letter = WordParser.RemoveTagsFromString(param1);
         _Value = !param3?LetterDictionary.GetValue(ClientData.Instance.CurrentGameSession.DictionaryLanguage,_Letter):-1;
         var _loc4_:String = getQualifiedClassName(this).split("::")[1];
         var _loc5_:String = _loc4_ + "_" + _Letter + _Value.toString();
         _Graphic = AssetManager.GetAsBitmap("libLetterBlockHint",true,true,_loc5_,true,OnPrecacheCallback);
         _Graphic.x = -(_Graphic.width >> 1);
         _Graphic.y = -(_Graphic.height >> 1);
         this.addChild(_Graphic);
         this.x = param2.x;
         this.y = param2.y;
         var _loc6_:* = 2;
         this.scaleY = _loc6_;
         this.scaleX = _loc6_;
         this.alpha = 0.3;
         TweenLite.to(this,0.5,{
            "scaleX":1,
            "scaleY":1,
            "alpha":1,
            "ease":Bounce.easeOut
         });
      }
      
      private function OnPrecacheCallback(param1:MovieClip) : void
      {
         param1.lblLetter.text = _Letter;
         param1.lblValue.text = _Value != -1?_Value.toString():"";
         param1.lblLetter.alpha = 0.75;
         param1.lblValue.alpha = 0.75;
      }
      
      public function Dispose() : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         this.removeChild(_Graphic);
         _Graphic = null;
         _Letter = null;
         _Value = 0;
      }
   }
}
