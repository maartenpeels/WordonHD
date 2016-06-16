package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.BigButton;
   import flash.display.MovieClip;
   import nl.hbgames.logic.game.board.BaseBlock;
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.LayoutManager;
   import nl.hbgames.managers.AssetManager;
   
   public class SneakPeekPanel extends BasePanel
   {
       
      private const MAX_LETTERS:uint = 7;
      
      private const MAX_SPECIALS:uint = 2;
      
      private var _OtherTilesetID:int;
      
      private var _YourTilesetID:int;
      
      private var _Grid:Array;
      
      private var _Letters:Array;
      
      private var _Specials:Array;
      
      private var _BtnClose:BigButton;
      
      private var _Callback:Function;
      
      public function SneakPeekPanel(param1:Object, param2:int, param3:int, param4:Function = null)
      {
         _OtherTilesetID = param2;
         _YourTilesetID = param3;
         _Grid = param1.grid.split(",");
         _Letters = param1.letters.split(",");
         _Specials = param1.wordOns?param1.wordOns.split(","):[];
         _Callback = param4;
         super(AssetManager.GetDefinition("libSneakPeekPanel"),false,false,0.3,0,false);
      }
      
      override protected function Initialize() : void
      {
         var _loc2_:* = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < 7)
         {
            _loc1_ = _Content["mcLetter" + _loc2_];
            _loc1_.removeChildren();
            if(_loc2_ < _Letters.length)
            {
               _loc1_.addChild(new BaseBlock(_OtherTilesetID,false,WordParser.RemoveTagsFromString(_Letters[_loc2_]),-1,false,null,true));
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _Grid.length)
         {
            _loc1_ = _Content["mcSlot" + _loc2_];
            _loc1_.gotoAndStop(_Grid[_loc2_] + 1);
            _loc2_++;
         }
         _Content.mcSpecialSlot0.gotoAndStop(1);
         _Content.mcSpecialSlot1.gotoAndStop(1);
         _loc2_ = 0;
         while(_loc2_ < 2)
         {
            _loc1_ = _Content["mcSpecialLetter" + _loc2_];
            _loc1_.removeChildren();
            if(_loc2_ < _Specials.length)
            {
               _loc1_.addChild(new BaseBlock(_YourTilesetID,true,WordParser.RemoveTagsFromString(_Specials[_loc2_]),-1,false,null,true));
            }
            _loc2_++;
         }
         _BtnClose = new BigButton(_Content.btnClose,OnBackClick,Localization.Get("check_tiles_close"));
         LayoutManager.AdjustToScreen(_Content);
         super.Initialize();
      }
      
      override public function Close() : void
      {
         if(_Callback != null)
         {
            _Callback();
         }
         super.Close();
      }
      
      override public function Dispose() : void
      {
         _BtnClose.Dispose();
         _BtnClose = null;
         _Callback = null;
         super.Dispose();
      }
   }
}
