package nl.hbgames.utils
{
   import flash.utils.Dictionary;
   import flash.text.TextField;
   import nl.hbgames.config.Settings;
   import flash.events.MouseEvent;
   import flash.text.StageTextInitOptions;
   import flash.geom.Point;
   import flash.text.StageText;
   import flash.geom.Rectangle;
   import nl.hbgames.managers.AssetManager;
   import flash.events.FocusEvent;
   
   public class TextfieldUtil extends Object
   {
      
      private static var _FieldData:Dictionary = new Dictionary();
      
      private static var _ActiveName:String = "";
       
      public function TextfieldUtil()
      {
         super();
      }
      
      public static function Register(param1:TextField, param2:String = "default", param3:Boolean = false, param4:Boolean = false, param5:Function = null, param6:Boolean = false, param7:String = "none", param8:String = null, param9:Function = null, param10:Function = null) : void
      {
         var _loc11_:String = DetermineKey(param1);
         _FieldData[_loc11_] = {
            "normalField":param1,
            "useDefaultText":param3,
            "defaultText":param1.text,
            "keyboardType":param2,
            "displayAsPassword":param4,
            "returnKeyLabel":param8,
            "autoCorrect":param6,
            "autoCapitalize":param7,
            "callback":param5,
            "keyUpCallback":param9,
            "focusCallback":param10
         };
         if(Settings.IS_ANDROID)
         {
            param1.addEventListener("mouseUp",OnTextFieldFocus);
         }
         else
         {
            param1.addEventListener("mouseDown",OnTextFieldFocus);
         }
      }
      
      public static function Unregister(param1:TextField) : void
      {
         var _loc2_:String = DetermineKey(param1);
         if(_FieldData[_loc2_].stageField)
         {
            if(_FieldData[_loc2_].callback)
            {
               _FieldData[_loc2_].stageField.removeEventListener("change",_FieldData[_loc2_].callback);
            }
            if(_FieldData[_loc2_].keyUpCallback)
            {
               _FieldData[_loc2_].stageField.removeEventListener("keyUp",_FieldData[_loc2_].keyUpCallback);
            }
            if(_FieldData[_loc2_].focusCallback)
            {
               _FieldData[_loc2_].stageField.addEventListener("softKeyboardActivate",_FieldData[_loc2_].focusCallback);
            }
            _FieldData[_loc2_].stageField.removeEventListener("focusOut",OnStageTextLostFocus);
            _FieldData[_loc2_].stageField.dispose();
            _FieldData[_loc2_].stageField = null;
         }
         else
         {
            if(_FieldData[_loc2_].callback)
            {
               _FieldData[_loc2_].normalField.removeEventListener("change",_FieldData[_loc2_].callback);
            }
            if(_FieldData[_loc2_].keyUpCallback)
            {
               _FieldData[_loc2_].normalField.removeEventListener("keyUp",_FieldData[_loc2_].keyUpCallback);
            }
            if(_FieldData[_loc2_].focusCallback)
            {
               _FieldData[_loc2_].normalField.addEventListener("softKeyboardActivate",_FieldData[_loc2_].focusCallback);
            }
            _FieldData[_loc2_].normalField.removeEventListener("focusOut",OnStageTextLostFocus);
         }
         _FieldData[_loc2_].normalField = null;
         _FieldData[_loc2_].callback = null;
         if(Settings.IS_ANDROID)
         {
            param1.removeEventListener("mouseUp",OnTextFieldFocus);
         }
         else
         {
            param1.removeEventListener("mouseDown",OnTextFieldFocus);
         }
      }
      
      private static function OnTextFieldFocus(param1:MouseEvent) : void
      {
         param1.preventDefault();
         var _loc6_:TextField = param1.target as TextField;
         var _loc7_:String = DetermineKey(_loc6_);
         var _loc2_:Object = _FieldData[_loc7_];
         var _loc12_:Boolean = _loc2_.useDefaultText;
         var _loc8_:String = _loc2_.defaultText;
         var _loc10_:String = _loc2_.keyboardType;
         var _loc17_:Boolean = _loc2_.displayAsPassword;
         var _loc13_:String = _loc2_.autoCapitalize;
         var _loc3_:Boolean = _loc2_.autoCorrect;
         var _loc11_:Function = _loc2_.callback;
         var _loc14_:Function = _loc2_.keyUpCallback;
         var _loc9_:Function = _loc2_.focusCallback;
         var _loc5_:StageTextInitOptions = new StageTextInitOptions();
         _loc5_.multiline = _loc6_.multiline;
         var _loc16_:Point = new Point(_loc6_.x,_loc6_.y);
         _loc16_ = _loc6_.parent.localToGlobal(_loc16_);
         var _loc15_:Point = new Point(_loc6_.x + _loc6_.width,_loc6_.y + _loc6_.height + 10);
         _loc15_ = _loc6_.parent.localToGlobal(_loc15_);
         _loc6_.visible = false;
         var _loc4_:StageText = new StageText(_loc5_);
         if(_loc2_.returnKeyLabel != null)
         {
            _loc4_.returnKeyLabel = _loc2_.returnKeyLabel;
         }
         if(_loc11_ != null)
         {
            _loc4_.addEventListener("change",_loc11_);
         }
         if(_loc14_ != null)
         {
            _loc4_.addEventListener("keyUp",_loc14_);
         }
         if(_loc9_ != null)
         {
            _loc4_.addEventListener("softKeyboardActivate",_loc9_);
         }
         _loc4_.addEventListener("focusOut",OnStageTextLostFocus);
         _loc4_.viewPort = new Rectangle(_loc16_.x,_loc16_.y,_loc15_.x - _loc16_.x,_loc15_.y - _loc16_.y);
         _loc4_.textAlign = _loc6_.defaultTextFormat.align;
         _loc4_.displayAsPassword = _loc6_.displayAsPassword;
         _loc4_.fontFamily = _loc6_.defaultTextFormat.font;
         _loc4_.fontSize = _loc6_.defaultTextFormat.size * AssetManager.ContentScaleFactor;
         _loc4_.color = _loc6_.defaultTextFormat.color;
         _loc4_.maxChars = _loc6_.maxChars;
         _loc4_.restrict = _loc6_.restrict;
         _loc4_.text = _loc12_ == true?_loc6_.text == _loc8_?"":_loc6_.text:_loc6_.text;
         _loc4_.softKeyboardType = _loc10_;
         _loc4_.stage = _loc6_.stage;
         _loc4_.displayAsPassword = _loc17_;
         _loc4_.autoCorrect = _loc3_;
         _loc4_.autoCapitalize = _loc13_;
         _ActiveName = _loc7_;
         _FieldData[_loc7_].stageField = _loc4_;
         _loc6_.stage.softKeyboardInputAreaOfInterest = new Rectangle(0,0,0,_loc6_.stage.stageHeight);
         _loc4_.assignFocus();
      }
      
      private static function OnStageTextLostFocus(param1:FocusEvent) : void
      {
         var _loc3_:Object = _FieldData[_ActiveName];
         var _loc2_:* = _loc3_.stageField?_loc3_.stageField:_loc3_.normalField;
         if(_loc3_.useDefaultText)
         {
            if(_loc2_.text.length > 0)
            {
               _loc3_.normalField.displayAsPassword = _loc3_.displayAsPassword;
               _loc3_.normalField.text = _loc2_.text;
            }
            else
            {
               _loc3_.normalField.displayAsPassword = false;
               _loc3_.normalField.text = _loc3_.defaultText;
            }
         }
         else
         {
            _loc3_.normalField.displayAsPassword = _loc3_.displayAsPassword;
            _loc3_.normalField.text = _loc2_.text;
         }
         if(_loc3_.focusCallback != null)
         {
            _loc3_.focusCallback();
         }
         if(_loc3_.callback != null)
         {
            _loc2_.removeEventListener("change",_loc3_.callback);
         }
         if(_loc3_.keyUpCallback != null)
         {
            _loc2_.removeEventListener("keyUp",_loc3_.keyUpCallback);
         }
         _loc2_.removeEventListener("focusOut",OnStageTextLostFocus);
         if(_loc2_ is StageText)
         {
            _loc3_.stageField.dispose();
            _loc3_.stageField = null;
         }
         _loc3_.normalField.visible = true;
         _ActiveName = "";
      }
      
      private static function DetermineKey(param1:TextField) : String
      {
         return param1.name + "_" + param1.parent.name;
      }
      
      public static function AlignVertically(param1:TextField, param2:Boolean = false) : void
      {
         param1.y = param1.y + Math.round((param1.height - param1.textHeight * AssetManager.ContentScaleFactor) / 2);
         param1.autoSize = "center";
         param1.mouseEnabled = param2;
      }
   }
}
