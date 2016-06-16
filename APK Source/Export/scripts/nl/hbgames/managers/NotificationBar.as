package nl.hbgames.managers
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import nl.hbgames.ui.buttons.PopupCloseButton;
   import nl.hbgames.data.GameInfoData;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.data.ClientData;
   import flash.events.MouseEvent;
   import com.greensock.TweenLite;
   import nl.hbgames.config.Settings;
   
   public class NotificationBar extends Sprite
   {
      
      private static var _Instance:NotificationBar;
       
      private const ANIMATION_DURATION:Number = 0.25;
      
      private const DEFAULT_MSG_DURATION:Number = 4.0;
      
      private var _Content:MovieClip;
      
      private var _MessageQueue:Vector.<Object>;
      
      private var _IsShowing:Boolean;
      
      private var _CloseButton:PopupCloseButton;
      
      private var _ActiveGameInfoData:GameInfoData;
      
      private var _ActiveType:int;
      
      public function NotificationBar()
      {
         super();
         _Instance = this;
         _Content = AssetManager.GetDefinition("libNotificationBar",false,false);
         _Content.scaleX = _Content.scaleX * AssetManager.ContentScaleFactor;
         _Content.scaleY = _Content.scaleY * AssetManager.ContentScaleFactor;
         _MessageQueue = new Vector.<Object>();
         _IsShowing = false;
         _Content.x = (Settings.SCREEN_WIDTH - _Content.width) / 2;
         _Content.y = -_Content.height;
         _Content.mcHit.addEventListener("click",OnClick);
         _Content.mcIcons.gotoAndStop(1);
         _CloseButton = new PopupCloseButton(_Content.btnClose,OnCloseClick);
         this.addChild(_Content);
      }
      
      public static function get Instance() : NotificationBar
      {
         return _Instance;
      }
      
      public function Show(param1:int, param2:String, param3:GameInfoData = null, param4:Number = 4.0) : void
      {
         if((param1 == 2 || param1 == 1) && param3 == null)
         {
            Debugger.Instance.Write("[NotificationBar::Show] GameInfoData object is required for CHAT or MATCH_UPDATE!",true);
            return;
         }
         if(param1 == 2 && ClientData.Instance.Social.IsBlocked(param3.OpponentID))
         {
            Debugger.Instance.Write("[NotificationBar::Show] Incoming chat is ignored because sender is blocked.");
            return;
         }
         if(_IsShowing)
         {
            _MessageQueue.push({
               "type":param1,
               "message":param2,
               "gameInfoData":param3,
               "duration":param4
            });
            return;
         }
         Process(param1,param2,param3,param4);
      }
      
      private function OnCloseClick(param1:MouseEvent = null) : void
      {
         if(_IsShowing)
         {
            TweenLite.to(_Content,0.25,{
               "y":-_Content.height,
               "onComplete":OnBarHidden,
               "overwrite":true
            });
         }
      }
      
      private function Process(param1:int, param2:String, param3:GameInfoData = null, param4:Number = 4.0) : void
      {
         _Content.mcIcons.gotoAndStop(param1);
         _Content.label.text = param2;
         _ActiveGameInfoData = param3;
         _ActiveType = param1;
         if(param4 < 0)
         {
            var param4:* = 0.0;
         }
         TweenLite.to(_Content,0.25,{
            "y":0,
            "onComplete":OnBarVisible,
            "onCompleteParams":[param4]
         });
         _IsShowing = true;
      }
      
      private function OnBarVisible(param1:Number) : void
      {
         TweenLite.to(_Content,0.25,{
            "y":-_Content.height,
            "delay":param1,
            "onComplete":OnBarHidden
         });
      }
      
      private function OnBarHidden() : void
      {
         var _loc1_:* = null;
         _IsShowing = false;
         if(_MessageQueue.length > 0)
         {
            _loc1_ = _MessageQueue.shift();
            Process(_loc1_.type,_loc1_.message,_loc1_.gameInfoData,_loc1_.duration);
         }
      }
      
      private function OnClick(param1:MouseEvent) : void
      {
         if(_ActiveGameInfoData != null)
         {
            PanelManager.Instance.CloseAll();
            LogicManager.Instance.SwitchGame({
               "gameID":_ActiveGameInfoData.GameID,
               "languageID":_ActiveGameInfoData.DictionaryLanguage,
               "timeLeftInSec":_ActiveGameInfoData.TimeLeftInSeconds,
               "toChat":_ActiveType == 2
            });
         }
         OnCloseClick();
      }
      
      public function Dispose() : void
      {
         _Instance = null;
         _Content.mcHit.removeEventListener("click",OnClick);
         this.removeChild(_Content);
         _Content = null;
         _MessageQueue = null;
         _ActiveGameInfoData = null;
      }
   }
}
