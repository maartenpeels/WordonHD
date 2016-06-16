package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.BigButton;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import nl.hbgames.net.SWRVETracker;
   import flash.net.URLRequest;
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.Localization;
   import flash.events.Event;
   import flash.display.Bitmap;
   import com.greensock.TweenLite;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.AssetManager;
   
   public class PromotionPanel extends BasePanel
   {
       
      private const MAX_BULLET_POINTS:int = 5;
      
      private var _BtnContinue:BigButton;
      
      private var _Image:Loader;
      
      private var _LoadIcon:MovieClip;
      
      private var _Data:Object;
      
      public function PromotionPanel(param1:Object)
      {
         _Data = param1;
         super(new libPromotionScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         super.Initialize();
         ShowLoadIcon();
         SWRVETracker.Instance.TrackCustomEvent("promotion.displayed");
         if(_Data.title)
         {
            _Content.lblTitle.text = _Data.title;
         }
         else
         {
            _Content.lblTitle.text = "";
         }
         if(_Data.header)
         {
            _Content.lblHeader.text = _Data.header;
         }
         else
         {
            _Content.lblHeader.text = "";
         }
         if(_Data.img)
         {
            _Image = new Loader();
            _Image.contentLoaderInfo.addEventListener("complete",OnImageLoaded);
            _Image.contentLoaderInfo.addEventListener("ioError",OnImageFailed);
            _Image.load(new URLRequest(Settings.CONTENT_URL + "/promotions/" + _Data.img));
         }
         else
         {
            ClearLoadIcon();
         }
         _loc3_ = 0;
         while(_loc3_ < 5)
         {
            _loc2_ = _Data.bullets && _loc3_ < _Data.bullets.length?_Data.bullets[_loc3_]:null;
            _Content["lblMessage" + _loc3_].text = _loc2_ != null?_loc2_:"";
            _Content["mcCheck" + _loc3_].visible = _loc2_ != null;
            _loc3_++;
         }
         var _loc1_:String = _Data.btn?_Data.btn:Localization.Get("promotion_button_continue");
         _BtnContinue = new BigButton(_Content.btnContinue,OnContinueClick,_loc1_);
      }
      
      private function OnImageLoaded(param1:Event) : void
      {
         ClearLoadIcon();
         _Image.alpha = 0;
         _Content.mcImage.addChild(_Image);
         _Content.mcImage.x = _Content.mcMask.x + ((_Content.mcMask.width >> 1) - (_Content.mcImage.width >> 1));
         _Content.mcImage.y = _Content.mcMask.y + ((_Content.mcMask.height >> 1) - (_Content.mcImage.height >> 1));
         (_Image.content as Bitmap).smoothing = true;
         TweenLite.to(_Image,0.5,{"alpha":1});
      }
      
      private function OnImageFailed(param1:IOErrorEvent) : void
      {
      }
      
      private function OnContinueClick(param1:MouseEvent) : void
      {
         SWRVETracker.Instance.TrackCustomEvent("promotion.continued");
         var _loc2_:int = _Data.redirect?_Data.redirect:0;
         switch(_loc2_)
         {
            case 0:
               break;
            case 1:
               if(_Data.params)
               {
                  navigateToURL(new URLRequest(_Data.params),"_blank");
               }
               else
               {
                  Debugger.Instance.Write("[PromotionPanel::OnContinueClick] No URL specified!",true);
               }
               break;
            case 2:
               LogicManager.Instance.SetState("ShopOverview",{"activeFilter":_Data.params});
               break;
         }
         this.Close();
      }
      
      private function OnCloseClick(param1:MouseEvent) : void
      {
         SWRVETracker.Instance.TrackCustomEvent("promotion.closed");
         this.Close();
      }
      
      private function ShowLoadIcon() : void
      {
         if(_LoadIcon == null)
         {
            _LoadIcon = AssetManager.GetDefinition("libSmallLoader",true,true);
            _LoadIcon.x = _Content.mcMask.x + (_Content.mcMask.width >> 1);
            _LoadIcon.y = _Content.mcMask.y + (_Content.mcMask.height >> 1);
            _Content.addChild(_LoadIcon);
         }
      }
      
      private function ClearLoadIcon() : void
      {
         if(_LoadIcon != null)
         {
            if(_Content.contains(_LoadIcon))
            {
               _Content.removeChild(_LoadIcon);
            }
            _LoadIcon = null;
         }
      }
      
      override public function Dispose() : void
      {
         ClearLoadIcon();
         if(_Image != null)
         {
            _Image.contentLoaderInfo.removeEventListener("complete",OnImageLoaded);
            _Image.contentLoaderInfo.addEventListener("ioError",OnImageFailed);
            _Image.unloadAndStop();
            _Image = null;
         }
         _BtnContinue.Dispose();
         _BtnContinue = null;
         _Data = null;
         super.Dispose();
      }
   }
}
