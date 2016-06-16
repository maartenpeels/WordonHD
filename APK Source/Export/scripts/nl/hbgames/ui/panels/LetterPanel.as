package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.data.game.TilesetData;
   import flash.display.MovieClip;
   import nl.hbgames.managers.AssetManager;
   import flash.display.Bitmap;
   import nl.hbgames.utils.ButtonUtil;
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.LayoutManager;
   import flash.events.MouseEvent;
   import nl.hbgames.data.LetterDictionary;
   import flash.utils.Dictionary;
   
   public class LetterPanel extends BasePanel
   {
       
      private const COL_AMOUNT:uint = 6;
      
      private const MAX_LETTERS:uint = 50;
      
      private var _Callback:Function;
      
      private var _Clips:Array;
      
      private var _LetterList:Array;
      
      private var _TilesetID:int;
      
      private var _IsShining:Boolean;
      
      private var _BtnClose:BigButton;
      
      public function LetterPanel(param1:Function, param2:String, param3:int, param4:Boolean)
      {
         _Callback = param1;
         _LetterList = [];
         _TilesetID = param3;
         _IsShining = param4;
         var _loc6_:Dictionary = LetterDictionary.GetLettersInLanguage(param2);
         var _loc8_:* = 0;
         var _loc7_:* = _loc6_;
         for(var _loc5_ in _loc6_)
         {
            if(_loc5_ != "#")
            {
               _LetterList.push(_loc5_);
            }
         }
         _LetterList.sort(1);
         super(AssetManager.GetDefinition("libLetterPanel"),false,false,0.3,0,false);
      }
      
      override protected function Initialize() : void
      {
         var _loc9_:* = 0;
         var _loc12_:* = null;
         var _loc6_:* = null;
         var _loc10_:* = null;
         var _loc15_:* = 0;
         var _loc14_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:* = 0;
         var _loc7_:* = 0;
         var _loc13_:* = 0;
         _Clips = [];
         var _loc2_:uint = Math.ceil(_LetterList.length / 6);
         var _loc1_:Object = TilesetData.GetInfo(_TilesetID);
         var _loc11_:* = 0;
         var _loc8_:* = 0;
         var _loc4_:uint = _LetterList.length > 50?50:_LetterList.length;
         _loc9_ = 0;
         while(_loc9_ < _loc4_)
         {
            _loc12_ = new MovieClip();
            _loc6_ = AssetManager.GetDefinition("libTileLabelNoValue_3x2",false);
            _loc6_.lblLetter.text = _LetterList[_loc9_];
            _loc6_.lblLetter.textColor = _loc1_.fontColor;
            _loc12_.labelClip = _loc6_;
            _loc12_.addChild(new Bitmap(AssetManager.GetExternalTileset(_loc1_.id,true)));
            if(_IsShining)
            {
               _loc10_ = AssetManager.GetDefinition("libTileShine_3x2",false,false);
               _loc12_.addChild(_loc10_);
            }
            _loc12_.addChild(_loc6_);
            if(_loc11_ == 0 || _loc8_ == 0)
            {
               _loc11_ = _Content.mcBackground.width;
               var _loc16_:* = (_loc2_ + 1) * _loc12_.height;
               _Content.mcBackground.height = _loc16_;
               _loc8_ = _loc16_;
            }
            _loc15_ = _loc12_.width;
            _loc14_ = _loc12_.height;
            _loc5_ = _loc11_ - _loc15_;
            _loc3_ = _loc8_ - _loc14_;
            _loc7_ = _loc5_ / 6;
            _loc13_ = _loc3_ / _loc2_;
            _loc12_.x = (_loc15_ >> 1) + _loc9_ % 6 * _loc7_;
            _loc12_.y = (_loc14_ >> 1) + Math.floor(_loc9_ / 6) * _loc13_;
            ButtonUtil.RegisterSimple(_loc12_,OnLetterSelected);
            _Clips.push(_loc12_);
            _Content.addChild(_loc12_);
            _loc9_++;
         }
         _Content.btnClose.y = _Content.mcBackground.y + _Content.mcBackground.height + 60;
         _BtnClose = new BigButton(_Content.btnClose,OnBackClick,Localization.Get("check_tiles_close"));
         LayoutManager.AdjustToScreen(_Content);
         super.Initialize();
      }
      
      private function OnLetterSelected(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         _Callback(_loc2_.labelClip.lblLetter.text);
         this.Close();
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         _Callback(null);
         super.OnBackClick(param1);
      }
      
      override public function Dispose() : void
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Clips.length)
         {
            _Content.removeChild(_Clips[_loc1_]);
            ButtonUtil.UnregisterSimple(_Clips[_loc1_]);
            _Clips[_loc1_] = null;
            _loc1_++;
         }
         _Clips = null;
         _Callback = null;
         _LetterList = null;
         _BtnClose.Dispose();
         _BtnClose = null;
         super.Dispose();
      }
   }
}
