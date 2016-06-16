package nl.hbgames.logic.game.board
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.geom.Point;
   import flash.display.MovieClip;
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.utils.Random;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.managers.AssetManager;
   import flash.events.MouseEvent;
   import nl.hbgames.logic.game.BaseGame;
   import nl.hbgames.ui.panels.LetterPanel;
   import nl.hbgames.data.ClientData;
   import com.greensock.TweenLite;
   import nl.hbgames.utils.Time;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.config.Settings;
   import com.greensock.easing.Back;
   import flash.geom.ColorTransform;
   import com.greensock.easing.RoughEase;
   import com.greensock.easing.Circ;
   import com.greensock.easing.Strong;
   import nl.hbgames.data.LetterDictionary;
   
   public class BaseBlock extends Sprite
   {
       
      private const MAX_TAP_WAIT:Number = 0.4;
      
      private var _Graphic:Bitmap;
      
      private var _GraphicPos:Point;
      
      private var _HighlightGraphic:Bitmap;
      
      private var _TilesetID:int;
      
      private var _Letter:String;
      
      private var _Value:int;
      
      private var _IsDraggable:Boolean;
      
      private var _IsDragging:Boolean;
      
      private var _IsBlank:Boolean;
      
      private var _IsBonus:Boolean;
      
      private var _IsShining:Boolean;
      
      private var _Slot:BlockSlot;
      
      private var _DragTime:Number;
      
      private var _Sparkle:MovieClip;
      
      private var _IsForcedToSmall:Boolean;
      
      private var _OffsetX:Number;
      
      private var _OffsetY:Number;
      
      private var _IsDisposed:Boolean;
      
      private var _IsLocked:Boolean;
      
      public function BaseBlock(param1:int, param2:Boolean, param3:String, param4:int = -1, param5:Boolean = true, param6:BlockSlot = null, param7:Boolean = false)
      {
         super();
         _IsShining = param2;
         _IsForcedToSmall = param7;
         _TilesetID = TilesetData.MakeValid(param1);
         if(_TilesetID == 1)
         {
            _TilesetID = 0;
         }
         if(_TilesetID == 0 && _IsShining)
         {
            _TilesetID = 1;
         }
         var _loc8_:String = AnalyzeLetter(param3);
         _Value = param4 == -1?LetterDictionary.GetValue(ClientData.Instance.CurrentGameSession.DictionaryLanguage,_loc8_):param4;
         SetLetter(_loc8_);
         _IsDraggable = param5;
         _IsDragging = false;
         _IsLocked = false;
         _IsDisposed = false;
         _OffsetX = 2 * AssetManager.ContentScaleFactor;
         _OffsetY = 3 * AssetManager.ContentScaleFactor;
         if(_IsDraggable)
         {
            this.addEventListener("mouseDown",OnTouch);
            this.buttonMode = true;
            this.mouseChildren = false;
            this.mouseEnabled = true;
         }
         else
         {
            this.mouseChildren = false;
            this.buttonMode = false;
            this.mouseEnabled = false;
         }
         if(param6 != null)
         {
            LinkSlot(param6);
         }
      }
      
      public function get Slot() : BlockSlot
      {
         return _Slot;
      }
      
      public function get IsDragging() : Boolean
      {
         return _IsDragging;
      }
      
      public function get IsBlank() : Boolean
      {
         return _IsBlank;
      }
      
      public function get IsBonus() : Boolean
      {
         return _IsBonus;
      }
      
      private function AnalyzeLetter(param1:String) : String
      {
         if(param1.indexOf("#") != -1 || param1 == "")
         {
            _IsBlank = true;
         }
         if(param1.indexOf("!") != -1)
         {
            _IsBonus = true;
         }
         if(param1.indexOf("^") != -1)
         {
            _IsBlank = true;
            _IsBonus = true;
         }
         return WordParser.RemoveTagsFromString(param1);
      }
      
      public function ShowSparkle(param1:Boolean) : void
      {
         if(param1)
         {
            if(_Sparkle == null)
            {
               _Sparkle = new libTileSparkle();
               _Sparkle.gotoAndPlay(Random.nextIntRange(1,_Sparkle.totalFrames - 1));
               _Sparkle.x = -(_Graphic.width / 3);
               _Sparkle.y = -(_Graphic.height / 3);
               this.addChild(_Sparkle);
            }
         }
         else if(_Sparkle != null)
         {
            this.removeChild(_Sparkle);
            _Sparkle = null;
         }
      }
      
      public function SetLetter(param1:String) : void
      {
         var _loc5_:* = null;
         _Letter = param1;
         if(_Graphic != null)
         {
            this.removeChild(_Graphic);
            _Graphic = null;
         }
         var _loc3_:Object = TilesetData.GetInfo(_TilesetID);
         var _loc2_:MovieClip = new MovieClip();
         _loc2_.addChild(new Bitmap(AssetManager.GetExternalTileset(_TilesetID,_IsForcedToSmall)));
         var _loc4_:MovieClip = _IsForcedToSmall?AssetManager.GetDefinition("libTileLabels_3x2",false,false):AssetManager.GetDefinition("libTileLabels",true,true);
         _loc4_.lblLetter.text = _Letter;
         _loc4_.lblLetter.textColor = _loc3_.fontColor;
         _loc4_.lblValue.text = _IsBlank?"":_Value.toString();
         _loc4_.lblValue.textColor = _loc3_.fontColor;
         if(_IsShining)
         {
            _loc5_ = _IsForcedToSmall?AssetManager.GetDefinition("libTileShine_3x2",false,false):AssetManager.GetDefinition("libTileShine",true,true);
            _loc2_.addChild(_loc5_);
         }
         _loc2_.addChild(_loc4_);
         _Graphic = new Bitmap(AssetManager.Flatten(_loc2_,!_IsForcedToSmall));
         _Graphic.smoothing = true;
         _GraphicPos = new Point(-(_Graphic.width >> 1),-(_Graphic.height >> 1));
         _Graphic.x = _GraphicPos.x;
         _Graphic.y = _GraphicPos.y;
         this.addChild(_Graphic);
      }
      
      public function GetLetter(param1:Boolean = true, param2:Boolean = false) : String
      {
         var _loc3_:String = _Letter;
         if(_loc3_ == "")
         {
            _loc3_ = " ";
         }
         if(param1)
         {
            return _loc3_;
         }
         if(_loc3_.length > 1)
         {
            _loc3_ = "(" + _loc3_ + ")";
         }
         if(param2)
         {
            return _loc3_;
         }
         var _loc4_:String = "";
         if(_IsBonus && _IsBlank)
         {
            _loc4_ = "^";
         }
         else if(_IsBlank)
         {
            _loc4_ = "#";
         }
         else if(_IsBonus)
         {
            _loc4_ = "!";
         }
         return _loc4_ + _loc3_;
      }
      
      public function GetValue(param1:Boolean = false) : int
      {
         var _loc2_:int = _Value;
         if(param1 && _Slot != null)
         {
            switch(_Slot.Type - 1)
            {
               case 0:
                  _loc2_ = _loc2_ * 2;
                  break;
               case 1:
                  _loc2_ = _loc2_ * 3;
               case 2:
                  _loc2_ = _loc2_ + 10;
                  break;
               default:
                  _loc2_ = _loc2_ * 3;
            }
         }
         return _loc2_;
      }
      
      private function OnTouch(param1:MouseEvent) : void
      {
         if(_IsDraggable && !_IsLocked)
         {
            this.stage.addEventListener("mouseUp",OnRelease);
            BaseGame.Instance.ChangeBlockStatus(this,"Dragging");
            ResetStatus();
            _DragTime = 0;
         }
      }
      
      private function OnRelease(param1:MouseEvent) : void
      {
         if(this.stage != null)
         {
            this.stage.removeEventListener("mouseUp",OnRelease);
         }
         if(_IsDisposed || BaseGame.Instance == null)
         {
            return;
         }
         if(_Slot != null)
         {
            if(_DragTime <= 0.4 && _Slot.IsNearBlock(this))
            {
               BaseGame.Instance.ChangeBlockStatus(this,"Tapping");
            }
            else
            {
               BaseGame.Instance.ChangeBlockStatus(this,"Dropping");
            }
            if(_IsBlank)
            {
               if(_Slot.Owner is BaseTable && !_Slot.Owner.IsInSpecialSlots(this))
               {
                  new LetterPanel(OnLetterPicked,ClientData.Instance.CurrentGameSession.DictionaryLanguage,_TilesetID,_IsShining);
               }
               else
               {
                  ResetStatus();
               }
            }
         }
      }
      
      public function Lift() : void
      {
         _IsDragging = true;
         this.parent.addChild(this);
      }
      
      public function Drop(param1:BlockSlot, param2:Boolean = true) : void
      {
         var _loc3_:Number = param1.x + _OffsetX;
         var _loc4_:Number = param1.y + _OffsetY;
         if(param2)
         {
            TweenLite.to(this,0.3,{
               "x":_loc3_,
               "y":_loc4_,
               "overwrite":true
            });
         }
         else
         {
            this.x = _loc3_;
            this.y = _loc4_;
         }
         _IsDragging = false;
      }
      
      private function OnLetterPicked(param1:String) : void
      {
         if(param1 != null)
         {
            SetLetter(param1);
            BaseGame.Instance.Analyzer.AnalyzeTable();
         }
         else
         {
            BaseGame.Instance.ChangeBlockStatus(this,"Tapping");
         }
      }
      
      public function LinkSlot(param1:BlockSlot, param2:Boolean = false) : void
      {
         if(!param2)
         {
            if(_Slot != param1)
            {
               Free();
               _Slot = param1;
            }
         }
         else
         {
            _Slot = param1;
         }
      }
      
      public function Lock(param1:Boolean) : void
      {
         _IsLocked = param1;
         if(_Slot != null && _IsDragging)
         {
            Drop(_Slot);
         }
      }
      
      public function Free() : void
      {
         if(_Slot != null)
         {
            _Slot.Free();
            _Slot = null;
         }
      }
      
      public function Update() : void
      {
         if(_IsDragging)
         {
            _DragTime = §§dup()._DragTime + Time.DeltaTime;
            this.x = this.stage.mouseX / LogicManager.Instance.scaleX;
            this.y = this.stage.mouseY / LogicManager.Instance.scaleY;
            if(this.x < 0 || this.y < 0 || this.x > Settings.SCREEN_WIDTH || this.y > Settings.SCREEN_HEIGHT)
            {
               OnRelease(null);
            }
         }
      }
      
      public function ResetStatus() : void
      {
         if(_IsBlank)
         {
            SetLetter("");
         }
      }
      
      public function DisposeWithAnim(param1:int = 0) : void
      {
         if(param1 == 0)
         {
            TweenLite.to(this,0.5,{
               "scaleX":0,
               "scaleY":0,
               "ease":Back.easeIn,
               "onComplete":Dispose
            });
         }
         else if(param1 == 1)
         {
            TweenLite.to(this,0.5,{
               "scaleX":0,
               "scaleY":0,
               "ease":Back.easeIn,
               "onComplete":Dispose
            });
         }
         else if(param1 == 2)
         {
            this.transform.colorTransform = new ColorTransform(1,0.5,0.5);
            TweenLite.to(this,0.8,{
               "scaleX":0,
               "scaleY":0,
               "ease":RoughEase.create(1.5,15,false,Circ.easeIn,"out",false),
               "onComplete":Dispose
            });
         }
      }
      
      public function Highlight(param1:Number = 0.0) : void
      {
         var _loc2_:* = 25.0;
         var _loc5_:Number = 1 + _loc2_ / 100;
         var _loc6_:Number = 1 + _loc2_ / 100;
         var _loc4_:Number = _Graphic.x - _loc2_ / 2;
         var _loc3_:Number = _Graphic.y - _loc2_ / 2;
         TweenLite.to(_Graphic,0.1,{
            "delay":param1,
            "ease":Strong.easeOut,
            "scaleX":_loc5_,
            "scaleY":_loc6_,
            "x":_loc4_,
            "y":_loc3_,
            "colorTransform":{"brightness":1.6},
            "onComplete":OnHighlightOut
         });
      }
      
      private function OnHighlightOut() : void
      {
         TweenLite.to(_Graphic,0.5,{
            "ease":Strong.easeIn,
            "scaleX":1,
            "scaleY":1,
            "x":_GraphicPos.x,
            "y":_GraphicPos.y,
            "colorTransform":{"brightness":1},
            "onComplete":OnHighlightEnd
         });
         _HighlightGraphic = new Bitmap();
         _HighlightGraphic.bitmapData = _Graphic.bitmapData;
         _HighlightGraphic.transform.colorTransform = new ColorTransform(1.6,1.6,1.6);
         _HighlightGraphic.scaleX = _Graphic.scaleX;
         _HighlightGraphic.scaleY = _Graphic.scaleY;
         _HighlightGraphic.x = _Graphic.x;
         _HighlightGraphic.y = _Graphic.y;
         this.addChildAt(_HighlightGraphic,Math.max(0,this.getChildIndex(_Graphic) - 1));
         var _loc1_:* = 50.0;
         var _loc4_:Number = 1 + _loc1_ / 100;
         var _loc5_:Number = 1 + _loc1_ / 100;
         var _loc3_:Number = _GraphicPos.x - _loc1_ / 2;
         var _loc2_:Number = _GraphicPos.y - _loc1_ / 2;
         TweenLite.to(_HighlightGraphic,0.4,{
            "ease":Strong.easeOut,
            "scaleX":_loc4_,
            "scaleY":_loc5_,
            "x":_loc3_,
            "y":_loc2_,
            "alpha":0,
            "onComplete":OnSubHighlightEnd
         });
      }
      
      private function OnSubHighlightEnd() : void
      {
         this.removeChild(_HighlightGraphic);
         _HighlightGraphic = null;
      }
      
      private function OnHighlightEnd() : void
      {
      }
      
      public function Dispose() : void
      {
         if(!_IsDisposed)
         {
            if(_Slot != null && _Slot.Block == this)
            {
               _Slot.ForceLink(null);
            }
            TweenLite.killTweensOf(this);
            TweenLite.killTweensOf(_Graphic);
            TweenLite.killTweensOf(_HighlightGraphic);
            ShowSparkle(false);
            if(this.stage != null)
            {
               this.stage.removeEventListener("mouseUp",OnRelease);
            }
            if(this.parent != null)
            {
               this.parent.removeChild(this);
            }
            this.removeChild(_Graphic);
            if(_HighlightGraphic != null)
            {
               this.removeChild(_HighlightGraphic);
               _HighlightGraphic = null;
            }
            _GraphicPos = null;
            _IsDragging = false;
            _Graphic = null;
            _Letter = null;
            _Slot = null;
            _Value = 0;
            _IsDisposed = true;
         }
      }
   }
}
