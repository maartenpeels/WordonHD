package nl.hbgames.ui.list
{
   import nl.hbgames.display.ScaleBitmap;
   import flash.text.TextField;
   import flash.display.Sprite;
   import nl.hbgames.managers.AssetManager;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import nl.hbgames.config.Settings;
   import flash.geom.Matrix;
   
   public class ChatNoteListItem extends BaseChatListItem
   {
      
      private static const YOUR_COLOR:int = 13255424;
      
      private static const OPPONENT_COLOR:int = 1059941;
       
      private var _Bubble:ScaleBitmap;
      
      private var _Text:TextField;
      
      private var _Container:Sprite;
      
      public function ChatNoteListItem(param1:String, param2:Number, param3:Boolean, param4:String, param5:int = -1)
      {
         super(param1,param2);
         _Container = new Sprite();
         this.addChild(_Container);
         _Bubble = AssetManager.GetAsScaleBitmap("libSystemBubbleBitmap",false,true);
         _Bubble.scale9Grid = new Rectangle(12,7,20,16);
         var _loc6_:int = param5 == -1?param3?13255424:1059941:param5;
         _Text = new TextField();
         _Text.defaultTextFormat = new TextFormat("Curse Casual",30 * AssetManager.ContentScaleFactor,_loc6_);
         _Text.embedFonts = true;
         _Text.selectable = false;
         _Text.multiline = true;
         _Text.wordWrap = true;
         _Text.antiAliasType = "advanced";
         _Text.sharpness = 100;
         _Text.thickness = 100;
         _Text.width = Settings.SCREEN_WIDTH;
         _Text.text = param4;
         _Text.width = _Text.textWidth + 16;
         _Text.x = 6;
         _Text.y = -2;
         _Text.autoSize = "left";
         _Bubble.width = _Text.width;
         _Bubble.height = _Text.height;
         _Container.addChild(_Bubble);
         _Container.addChild(_Text);
         _Container.x = Settings.SCREEN_CENTER_X - (_Container.width >> 1);
         this.cacheAsBitmap = true;
         this.cacheAsBitmapMatrix = new Matrix();
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
         this.removeChild(_Container);
         _Container.removeChild(_Text);
         _Container.removeChild(_Bubble);
         _Container = null;
         _Text = null;
         _Bubble = null;
         super.Dispose();
      }
   }
}
