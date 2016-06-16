package com.tapjoy.extensions
{
   import flash.display.MovieClip;
   import flash.media.StageWebView;
   import flash.events.LocationChangeEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   
   public class TapjoyDisplayAd extends MovieClip
   {
       
      private var _mouseDown:Boolean;
      
      private var _webView:StageWebView;
      
      public function TapjoyDisplayAd(param1:String, param2:int, param3:int, param4:Boolean)
      {
         this._webView = new StageWebView();
         super();
         var _loc5_:String = null;
         if(Capabilities.manufacturer.search("Android") != -1)
         {
            _loc5_ = ( <![CDATA[<head><meta name="viewport" content="target-densitydpi=device-dpi" user-scalable=0/></head><body>]]>).toString();
         }
         else
         {
            if(param4)
            {
               var param2:int = param2 * 2;
               var param3:int = param3 * 2;
            }
            _loc5_ = ( <![CDATA[<head><meta name="viewport" content="width={0}; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" /></head><body>]]>).toString().replace("{0}",param2);
         }
         if(_loc5_ != null)
         {
            var param1:String = param1.replace("<body>",_loc5_);
         }
         this._webView.viewPort = new Rectangle(0,0,param2,param3);
         this._webView.stage = this.stage;
         this._webView.loadString(param1,"text/html");
         this._webView.addEventListener(LocationChangeEvent.LOCATION_CHANGING,this.onLocationChanging);
         if(this.stage == null)
         {
            this.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage,false,0,true);
         }
         else
         {
            this.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage,false,0,true);
         }
      }
      
      override public function get width() : Number
      {
         return this._webView.viewPort.width;
      }
      
      override public function get height() : Number
      {
         return this._webView.viewPort.height;
      }
      
      private function onLocationChanging(param1:LocationChangeEvent) : void
      {
         if(param1.location.search("ws.tapjoyads.com") == -1)
         {
            param1.preventDefault();
            navigateToURL(new URLRequest(param1.location));
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Number = this.width;
         var _loc3_:Number = this.height;
         this._webView.viewPort = null;
         this._webView.viewPort = new Rectangle(x,y,_loc2_,_loc3_);
         this._webView.stage = this.stage;
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage,false,0,true);
         this.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         this._webView.removeEventListener(LocationChangeEvent.LOCATION_CHANGING,this.onLocationChanging);
         this._webView.stage = null;
         this._webView.viewPort = null;
         this._webView.dispose();
         this._webView = null;
         this.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage,false,0,true);
         this.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
   }
}
