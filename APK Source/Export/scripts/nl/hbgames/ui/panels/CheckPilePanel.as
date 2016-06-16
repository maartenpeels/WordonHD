package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.data.Localization;
   import flash.display.MovieClip;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.managers.LayoutManager;
   import nl.hbgames.utils.ButtonUtil;
   import nl.hbgames.data.LetterDictionary;
   import flash.utils.Dictionary;
   import nl.hbgames.utils.WordParser;
   
   public class CheckPilePanel extends BasePanel
   {
       
      private const COL_AMOUNT:uint = 6;
      
      private var _RowAmount:uint;
      
      private var _MaxLetters:uint;
      
      private var _Clips:Array;
      
      private var _LetterList:Array;
      
      private var _BtnClose:BigButton;
      
      private var _Callback:Function;
      
      public function CheckPilePanel(param1:Object, param2:String, param3:Function = null)
      {
         var _loc10_:* = 0;
         var _loc9_:* = null;
         _Callback = param3;
         var _loc8_:String = param1.tiles;
         var _loc6_:Dictionary = LetterDictionary.GetLettersInLanguage(param2);
         var _loc7_:Dictionary = new Dictionary();
         var _loc12_:* = 0;
         var _loc11_:* = _loc6_;
         for(var _loc4_ in _loc6_)
         {
            if(_loc4_ == "#" || _loc6_[_loc4_] > 0)
            {
               _loc7_[_loc4_] = 0;
               _MaxLetters = _MaxLetters + 1;
            }
         }
         _RowAmount = Math.ceil(_MaxLetters / 6);
         var _loc5_:Array = _loc8_.split(",");
         _loc10_ = 0;
         while(_loc10_ < _loc5_.length)
         {
            _loc9_ = _loc5_[_loc10_] != "#"?WordParser.RemoveTagsFromString(_loc5_[_loc10_]):"#";
            if(_loc9_ != "")
            {
               _loc12_ = _loc9_;
               _loc11_ = _loc7_[_loc12_] + 1;
               _loc7_[_loc12_] = _loc11_;
            }
            _loc10_++;
         }
         _LetterList = [];
         var _loc14_:* = 0;
         var _loc13_:* = _loc7_;
         for(_loc4_ in _loc7_)
         {
            _LetterList.push({
               "letter":_loc4_,
               "amount":_loc7_[_loc4_]
            });
         }
         _LetterList.sortOn("letter",1);
         super(AssetManager.GetDefinition("libCheckPilePanel"),false,false,0.3,0,false);
      }
      
      override protected function Initialize() : void
      {
         var _loc6_:* = 0;
         var _loc9_:* = null;
         var _loc13_:* = 0;
         var _loc12_:* = 0;
         var _loc3_:* = 0;
         var _loc2_:* = 0;
         var _loc5_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null;
         _Content.lblTilesLeft.text = Localization.Get("check_tiles_num_tiles_left");
         _Clips = [];
         var _loc8_:MovieClip = _Content.btnClose;
         _Content.removeChild(_loc8_);
         var _loc7_:int = _Content.width;
         var _loc4_:int = _Content.height;
         _Content.addChild(_loc8_);
         var _loc1_:uint = _LetterList.length > _MaxLetters?_MaxLetters:_LetterList.length;
         _loc6_ = 0;
         while(_loc6_ < _loc1_)
         {
            _loc9_ = AssetManager.GetDefinition("libLetterPanelBlock");
            _loc13_ = _loc9_.width;
            _loc12_ = _loc9_.height;
            _loc3_ = _loc7_ - _loc13_;
            _loc2_ = _loc4_ - _loc12_;
            _loc5_ = _loc3_ / 6;
            _loc10_ = _loc2_ / _RowAmount;
            _loc9_.x = (_loc13_ >> 1) + _loc6_ % 6 * _loc5_;
            _loc9_.y = (_loc12_ >> 1) + Math.floor(_loc6_ / 6) * _loc10_;
            _loc9_.lblCaption.text = _LetterList[_loc6_].letter != "#"?_LetterList[_loc6_].letter:"";
            if(_LetterList[_loc6_].amount > 0)
            {
               _loc11_ = AssetManager.GetDefinition("libBadges",true,true);
               _loc11_.gotoAndStop(3);
               _loc11_.lblCaption.text = _LetterList[_loc6_].amount;
               _loc11_.x = _loc9_.width - (_loc11_.width >> 1);
               _loc11_.y = _loc11_.height >> 2;
               _loc9_.addChild(_loc11_);
            }
            else
            {
               _loc9_.alpha = 0.5;
            }
            _loc9_.gotoAndStop(1);
            _Clips.push(_loc9_);
            _Content.addChild(_loc9_);
            _loc6_++;
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
         var _loc1_:* = 0;
         _BtnClose.Dispose();
         _BtnClose = null;
         _loc1_ = 0;
         while(_loc1_ < _Clips.length)
         {
            _Content.removeChild(_Clips[_loc1_]);
            ButtonUtil.UnregisterSimple(_Clips[_loc1_]);
            _Clips[_loc1_] = null;
            _loc1_++;
         }
         _Clips = null;
         _LetterList = null;
         super.Dispose();
      }
   }
}
