package nl.hbgames.ui.list
{
   import flash.text.TextFormat;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.display.ScaleBitmap;
   import flash.text.TextField;
   import flash.display.Sprite;
   import nl.hbgames.utils.Emoticons;
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   import nl.hbgames.data.UserChatData;
   import nl.hbgames.config.Settings;
   
   public class ChatSpeechListItem extends BaseChatListItem
   {
      
      private static const YOUR_COLOR:int = 13255424;
      
      private static const OPPONENT_COLOR:int = 1059941;
      
      private static const MIN_BUBBLE_SIZE:int = 50 * AssetManager.ContentScaleFactor;
      
      private static const FONT:String = "Curse Casual";
      
      private static const FONT_SIZE:int = Math.ceil(34 * AssetManager.ContentScaleFactor);
      
      private static var _SpaceFormat:TextFormat;
       
      private var _Bubble:ScaleBitmap;
      
      private var _Text:TextField;
      
      private var _Clips:Array;
      
      private var _SpacingWidth:Number;
      
      private var _Container:Sprite;
      
      public function ChatSpeechListItem(param1:UserChatData)
      {
         super(param1.ID,param1.Timestamp);
         _Clips = [];
         _Container = new Sprite();
         this.addChild(_Container);
         _Bubble = AssetManager.GetAsScaleBitmap("libSpeechBubbleBitmap",false,true);
         _Bubble.scale9Grid = new Rectangle(20,20,40,35);
         _SpaceFormat = new TextFormat("Curse Casual",FONT_SIZE,16777215);
         _Text = new TextField();
         var _loc3_:TextFormat = new TextFormat("Curse Casual",FONT_SIZE,param1.IsMyMessage?13255424:1059941);
         _loc3_.align = "left";
         _Text.defaultTextFormat = _loc3_;
         _Text.embedFonts = true;
         _Text.selectable = false;
         _Text.multiline = true;
         _Text.wordWrap = true;
         _Text.antiAliasType = "advanced";
         _Text.sharpness = 100;
         _Text.thickness = 100;
         _Text.width = Settings.SCREEN_WIDTH * 0.7;
         _Text.text = ".";
         _SpacingWidth = _Text.getCharBoundaries(0).width;
         _Text.text = param1.Message;
         _Text.x = 16;
         _Text.y = 8;
         _Text.autoSize = "left";
         ShowSmileys();
         var _loc2_:int = _Text.textWidth + 6;
         _Text.width = _loc2_ < MIN_BUBBLE_SIZE?MIN_BUBBLE_SIZE:_loc2_;
         _Bubble.width = _Text.width + 36;
         _Bubble.height = _Text.height + _Text.y + 11;
         _Container.addChildAt(_Text,0);
         _Container.addChildAt(_Bubble,0);
         if(param1.IsMyMessage)
         {
            _Container.x = Settings.SCREEN_WIDTH - _Container.width;
         }
         this.cacheAsBitmap = true;
      }
      
      private function ShowSmileys() : void
      {
         var _loc12_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:* = null;
         var _loc3_:* = 0;
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc8_:* = null;
         var _loc6_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = null;
         var _loc7_:String = _Text.text;
         var _loc4_:Array = [];
         _loc12_ = 0;
         while(_loc12_ < _loc7_.length)
         {
            _loc9_ = 0;
            while(_loc9_ < Emoticons.LIST_ICONS.length)
            {
               _loc1_ = Emoticons.LIST_ICONS[_loc9_].toLowerCase();
               _loc3_ = _loc1_.length;
               _loc2_ = _loc7_.substr(_loc12_,_loc3_);
               if(_loc2_.toLowerCase() == _loc1_)
               {
                  _loc5_ = Emoticons.getBitmapIconByIndex(_loc9_);
                  if(_loc5_ != null)
                  {
                     _loc5_.smoothing = true;
                     _Clips.push(_loc5_);
                     _Container.addChild(_loc5_);
                     _loc8_ = "";
                     _loc6_ = Math.ceil(_loc5_.width / _SpacingWidth);
                     _loc10_ = 0;
                     while(_loc10_ < _loc6_)
                     {
                        _loc8_ = _loc8_ + ".";
                        _loc10_++;
                     }
                     _loc7_ = _loc7_.replace(_loc2_,_loc8_);
                     _Text.text = _loc7_;
                     _loc11_ = _Text.getCharBoundaries(_loc12_);
                     if(_loc11_ != null)
                     {
                        _loc5_.x = _loc11_.x + _Text.x;
                        _loc5_.y = _loc11_.y + _Text.y + 2;
                        _loc5_.scaleX = _loc5_.scaleX * AssetManager.ContentScaleFactor;
                        _loc5_.scaleY = _loc5_.scaleY * AssetManager.ContentScaleFactor;
                     }
                     else
                     {
                        _loc5_.visible = false;
                     }
                     _loc4_.push(_loc12_,_loc12_ + _loc8_.length);
                  }
               }
               _loc9_++;
            }
            _loc12_++;
         }
         _loc12_ = 0;
         while(_loc12_ < _loc4_.length)
         {
            _Text.setTextFormat(_SpaceFormat,_loc4_[_loc12_],_loc4_[_loc12_ + 1]);
            _loc12_ = _loc12_ + 2;
         }
      }
      
      override public function Dispose() : void
      {
         var _loc1_:* = 0;
         this.removeChild(_Container);
         _Container.removeChild(_Text);
         _Container.removeChild(_Bubble);
         _loc1_ = 0;
         while(_loc1_ < _Clips.length)
         {
            _Container.removeChild(_Clips[_loc1_]);
            _Clips[_loc1_] = null;
            _loc1_++;
         }
         _Clips = null;
         _Container = null;
         _Text = null;
         _Bubble = null;
         super.Dispose();
      }
   }
}
