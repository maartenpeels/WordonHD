package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.BigFooterButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.ClientData;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.FBWrapper;
   import nl.hbgames.WordOn;
   
   public class AchievementBox extends BaseTimedBox
   {
       
      private var _Type:int;
      
      private var _Title:String;
      
      private var _Result:String;
      
      private var _ShareButton:BigFooterButton;
      
      private var _ShareMsg:String;
      
      private var _ShareIcon:String;
      
      public function AchievementBox(param1:String, param2:String, param3:String, param4:String = "", param5:int = 1)
      {
         _Type = param5;
         _Title = param1.split("\\n").join("\n");
         _Result = param2;
         _ShareMsg = param4;
         _ShareIcon = param3;
         super(new libAchievementBox(),10);
      }
      
      override public function Initialize() : void
      {
         _Content.gotoAndStop(_Type);
         _Content.lblTitle.text = _Title;
         _Content.lblResult.text = _Result;
         switch(_Type - 1)
         {
            case 0:
               _Content.lblTitle.textColor = 16777215;
               _Content.lblResult.textColor = 1059941;
               break;
            case 1:
               _Content.lblTitle.textColor = 16777215;
               _Content.lblResult.textColor = 16500013;
               break;
         }
         _ShareButton = new BigFooterButton(_Content.btnShare,OnShareClick,Localization.Get("share_button_label"));
         if(!ClientData.Instance.IsFacebookUser)
         {
            _ShareButton.Disable(0);
            _Content.mcFBIcon.visible = false;
         }
         super.Initialize();
      }
      
      private function OnShareClick(param1:MouseEvent) : void
      {
         FBWrapper.Post(_ShareMsg,_ShareIcon);
         ForceTimeUp();
      }
      
      override public function OnShow() : void
      {
         super.OnShow();
         WordOn.Instance.Audio.Play("sfxJinglePlayTurn");
         SetActive(true);
      }
      
      override public function Dispose() : void
      {
         _Title = null;
         _Result = null;
         _ShareMsg = null;
         _ShareIcon = null;
         _ShareButton.Dispose();
         _ShareButton = null;
         super.Dispose();
      }
   }
}
