package nl.hbgames.utils
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import nl.hbgames.data.Storage;
   import flash.text.TextFormat;
   
   public class Debugger extends Sprite
   {
      
      private static var _Instance:Debugger = null;
      
      public static var OutputToScreen:Boolean = true;
      
      public static var OutputToTrace:Boolean = true;
      
      public static var OutputToDisk:Boolean = true;
      
      public static var Enabled:Boolean = true;
       
      private const DEBUGGER_SIZE:Number = 1.0;
      
      private var _TodayStamp:String;
      
      private var _TextField:TextField;
      
      private var _Background:Sprite;
      
      public function Debugger(param1:int = 16777215)
      {
         var _loc2_:* = null;
         super();
         _Instance = this;
         if(Enabled)
         {
            _loc2_ = new Date();
            _TodayStamp = _loc2_.getDate() + "-" + (_loc2_.getMonth() + 1) + "-" + _loc2_.getTime();
            _Background = new Sprite();
            this.addChild(_Background);
            _TextField = new TextField();
            _TextField.multiline = true;
            _TextField.wordWrap = true;
            _TextField.defaultTextFormat = new TextFormat("Arial",15,param1,true);
            _TextField.mouseEnabled = false;
            this.mouseEnabled = false;
            this.mouseChildren = false;
            this.addChild(_TextField);
            this.addEventListener("addedToStage",OnAdded);
         }
      }
      
      public static function get Instance() : Debugger
      {
         if(_Instance == null)
         {
            new Debugger();
         }
         return _Instance;
      }
      
      private function OnAdded(param1:Event) : void
      {
         this.removeEventListener("addedToStage",OnAdded);
         _TextField.text = "";
         _TextField.x = 0;
         _TextField.y = 0;
         _TextField.width = this.stage.fullScreenWidth;
         _TextField.height = this.stage.fullScreenHeight * 1;
      }
      
      public function Clear() : void
      {
         if(_TextField)
         {
            _TextField.text = "";
         }
      }
      
      public function Write(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = 0;
         var _loc4_:* = null;
         if(Enabled)
         {
            _loc5_ = new Date();
            _loc6_ = _loc5_.getHours() + ":" + _loc5_.getMinutes() + ":" + _loc5_.getSeconds() + "," + _loc5_.getMilliseconds() + " " + param1;
            if(OutputToScreen || param3)
            {
               if(param2)
               {
                  _TextField.htmlText = _TextField.htmlText + ("<font color=\'#ff0000\'>" + _loc6_ + "</font>\n");
               }
               else
               {
                  _TextField.htmlText = _TextField.htmlText + (_loc6_ + "\n");
               }
               _TextField.scrollV = _TextField.maxScrollV;
               _loc7_ = _TextField.textHeight + 6;
               if(_loc7_ > this.stage.fullScreenHeight * 1)
               {
                  _loc7_ = this.stage.fullScreenHeight * 1;
               }
               _Background.graphics.clear();
               _Background.graphics.beginFill(0,0.6);
               _Background.graphics.drawRect(0,0,this.stage.fullScreenWidth,_loc7_);
               _Background.graphics.endFill();
            }
            if(OutputToTrace)
            {
               if(param2)
               {
                  trace("3:" + _loc6_);
               }
               else
               {
                  trace(_loc6_);
               }
            }
            if(OutputToDisk)
            {
               _loc4_ = new ByteArray();
               _loc4_.writeUTFBytes(_loc6_ + "\n");
               Storage.WriteFile("debug_" + _TodayStamp + ".log",_loc4_,false,true);
            }
         }
      }
      
      public function Dispose() : void
      {
         if(Enabled)
         {
            this.removeChild(_TextField);
            _TodayStamp = null;
            _TextField = null;
            _Instance = null;
         }
      }
   }
}
