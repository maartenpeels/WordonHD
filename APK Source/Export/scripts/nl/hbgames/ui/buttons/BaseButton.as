package nl.hbgames.ui.buttons
{
   import flash.display.MovieClip;
   import flash.display.Bitmap;
   import nl.hbgames.utils.ButtonUtil;
   import flash.events.MouseEvent;
   import nl.hbgames.WordOn;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import nl.hbgames.managers.AssetManager;
   
   public class BaseButton extends Object
   {
       
      protected var _Content:MovieClip;
      
      private var _Badge:Bitmap;
      
      private var _Highlight:MovieClip;
      
      private var _SoundID:String;
      
      private var _SoundVolume:Number;
      
      private var _Callback:Function;
      
      private var _TextPosY:int;
      
      private var _Label:String;
      
      public function BaseButton(param1:MovieClip, param2:String, param3:Function = null, param4:String = null, param5:Number = 0.3)
      {
         super();
         _Content = param1;
         _Content.visible = false;
         _SoundID = param2;
         _SoundVolume = param5;
         if(param3 != null && param4 != null)
         {
            Initialize(param3,param4);
         }
      }
      
      public function get IsEnabled() : Boolean
      {
         return _Content.visible;
      }
      
      public function get Content() : MovieClip
      {
         return _Content;
      }
      
      public function Initialize(param1:Function, param2:String) : void
      {
         _Callback = param1;
         ButtonUtil.Register(_Content,OnClick,OnHover,OnOut);
         SetLabel(param2);
         _Content.visible = true;
      }
      
      private function OnClick(param1:MouseEvent) : void
      {
         if(_SoundID != null)
         {
            WordOn.Instance.Audio.Play(_SoundID,_SoundVolume);
         }
      }
      
      private function OnHover(param1:MouseEvent) : void
      {
         _Content.gotoAndStop(2);
      }
      
      private function OnOut(param1:MouseEvent) : void
      {
         _Content.gotoAndStop(1);
      }
      
      public function Enable() : void
      {
         _Content.alpha = 1;
         _Content.enabled = true;
         _Content.mouseEnabled = true;
      }
      
      public function Disable(param1:Number = 0.4) : void
      {
         _Content.alpha = param1;
         _Content.enabled = false;
         _Content.mouseEnabled = false;
      }
      
      public function Show() : void
      {
         _Content.visible = true;
      }
      
      public function Hide() : void
      {
         _Content.visible = false;
      }
      
      public function SetLabel(param1:String, param2:Boolean = true) : void
      {
         if(_Content.lblCaption != null)
         {
            if(!_Label)
            {
               _TextPosY = _Content.lblCaption.y;
               _Label = param1;
            }
            _Content.lblCaption.htmlText = "<b>" + param1 + "</b>";
            if(param2)
            {
               AutoFitLabel(_Content.lblCaption);
            }
         }
      }
      
      public function SetSuffix(param1:String, param2:Boolean = true) : void
      {
         if(_Content.lblCaption != null && _Label != null)
         {
            SetLabel(_Label + param1,param2);
         }
      }
      
      private function AutoFitLabel(param1:TextField) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = null;
         if(param1.maxScrollH > 0)
         {
            _loc2_ = param1.height;
            _loc3_ = param1.getTextFormat();
            _loc3_.size = param1.width > param1.height?param1.width:param1.height;
            param1.setTextFormat(_loc3_);
            while(param1.textWidth > param1.width - 4 || param1.textHeight > param1.height - 6)
            {
               _loc3_.size = _loc3_.size - 1;
               param1.setTextFormat(_loc3_);
            }
            param1.y = _TextPosY + (_loc2_ - param1.textHeight) / 2;
         }
      }
      
      public function SetBadge(param1:String, param2:int = 1) : void
      {
         char = param1;
         frame = param2;
         RemoveBadge();
         if(_Badge == null && _Content.mcBadgeNode != null)
         {
            var frame:int = char.length <= 2?frame:frame + 3;
            _Badge = AssetManager.GetAsBitmap("libBadges",true,true,char + frame.toString(),false,function(param1:MovieClip):void
            {
               param1.gotoAndStop(frame);
               param1.lblCaption.htmlText = "<b>" + char + "</b>";
            });
            _Badge.x = -(_Badge.width >> 1);
            _Badge.y = -(_Badge.height >> 1);
            _Content.mcBadgeNode.addChild(_Badge);
         }
      }
      
      public function RemoveBadge() : void
      {
         if(_Badge != null && _Content.mcBadgeNode != null)
         {
            _Content.mcBadgeNode.removeChild(_Badge);
            _Badge = null;
         }
      }
      
      public function ShowHighlight(param1:Boolean) : void
      {
         if(param1 && _Highlight == null)
         {
            _Highlight = new libButtonHighlight();
            _Highlight.width = _Content.width / _Content.scaleX;
            _Highlight.height = _Content.height / _Content.scaleY;
            _Highlight.x = 0;
            _Highlight.y = 0;
            _Highlight.mouseEnabled = false;
            _Content.addChild(_Highlight);
         }
         else if(!param1 && _Highlight != null)
         {
            _Content.removeChild(_Highlight);
            _Highlight = null;
         }
      }
      
      public function Clear() : void
      {
         ButtonUtil.Unregister(_Content);
         RemoveBadge();
         _Content.visible = false;
      }
      
      public function Dispose() : void
      {
         Clear();
         RemoveBadge();
         ShowHighlight(false);
         _Callback = null;
         _SoundID = null;
         _Content = null;
         _Label = null;
      }
   }
}
