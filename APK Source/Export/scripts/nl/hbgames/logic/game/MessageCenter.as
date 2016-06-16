package nl.hbgames.logic.game
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.ClientData;
   
   public class MessageCenter extends Object
   {
       
      private const NORMAL_ALPHA:Number = 0.6;
      
      private const HIGHLIGHT_ALPHA:Number = 1.0;
      
      private var _OpponentField:TextField;
      
      private var _OwnField:TextField;
      
      private var _StatusMessage:TextField;
      
      private var _FlagLeft:MovieClip;
      
      private var _FlagRight:MovieClip;
      
      public var OwnData:Object;
      
      public var OpponentData:Object;
      
      public function MessageCenter(param1:TextField, param2:TextField, param3:TextField, param4:Array)
      {
         super();
         _OpponentField = param1;
         _OwnField = param2;
         _StatusMessage = param3;
         _FlagLeft = param4[0];
         _FlagRight = param4[1];
         OwnData = {"score":0};
         OpponentData = {"score":0};
         SetPlayerScore(0,false);
         SetOpponentScore(0,false);
         SetStatusMessage("");
      }
      
      public function SetPlayerScore(param1:int, param2:Boolean = true) : void
      {
         if(param2)
         {
            _OwnField.alpha = 1;
            TweenLite.to(OwnData,0.5,{
               "score":param1,
               "onUpdate":PlayerScoreUpdate,
               "overwrite":true
            });
            TweenLite.to(_OwnField,0.9,{
               "alpha":0.6,
               "ease":Strong.easeIn,
               "overwrite":true
            });
         }
         else
         {
            _OwnField.alpha = 0.6;
            OwnData.score = param1;
            PlayerScoreUpdate();
         }
      }
      
      public function SetOpponentScore(param1:int, param2:Boolean = true) : void
      {
         if(param2)
         {
            _OpponentField.alpha = 1;
            TweenLite.to(OpponentData,0.5,{
               "score":param1,
               "onUpdate":OpponentScoreUpdate,
               "overwrite":true
            });
            TweenLite.to(_OpponentField,0.9,{
               "alpha":0.6,
               "ease":Strong.easeIn,
               "overwrite":true
            });
         }
         else
         {
            _OpponentField.alpha = 0.6;
            OpponentData.score = param1;
            OpponentScoreUpdate();
         }
      }
      
      private function PlayerScoreUpdate() : void
      {
         var _loc1_:String = (this.OwnData.score).toString();
         _OwnField.text = _loc1_;
      }
      
      private function OpponentScoreUpdate() : void
      {
         var _loc1_:String = (this.OpponentData.score).toString();
         _OpponentField.text = _loc1_;
      }
      
      public function SetStatusMessage(param1:String, param2:int = 16777215) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = null;
         _StatusMessage.text = param1;
         _StatusMessage.textColor = param2;
         _StatusMessage.autoSize = "center";
         if(param1)
         {
            _loc3_ = 14;
            var _loc5_:* = true;
            _FlagRight.visible = _loc5_;
            _FlagLeft.visible = _loc5_;
            _loc5_ = 0.4;
            _FlagRight.alpha = _loc5_;
            _FlagLeft.alpha = _loc5_;
            _FlagLeft.x = _StatusMessage.x - _FlagLeft.width - _loc3_ * AssetManager.ContentScaleFactor;
            _FlagRight.x = _StatusMessage.x + _StatusMessage.width + _loc3_ * AssetManager.ContentScaleFactor;
            _loc4_ = ClientData.Instance.CurrentGameSession?ClientData.Instance.CurrentGameSession.DictionaryLanguage:"en";
            _FlagLeft.gotoAndStop(_loc4_);
            _FlagRight.gotoAndStop(_loc4_);
         }
         else
         {
            _loc5_ = false;
            _FlagRight.visible = _loc5_;
            _FlagLeft.visible = _loc5_;
            _FlagLeft.gotoAndStop(1);
            _FlagRight.gotoAndStop(1);
         }
      }
      
      public function Dispose() : void
      {
         TweenLite.killTweensOf(OwnData);
         TweenLite.killTweensOf(OpponentData);
         TweenLite.killTweensOf(_OwnField);
         TweenLite.killTweensOf(_OpponentField);
         _OpponentField = null;
         _OwnField = null;
         _StatusMessage = null;
      }
   }
}
