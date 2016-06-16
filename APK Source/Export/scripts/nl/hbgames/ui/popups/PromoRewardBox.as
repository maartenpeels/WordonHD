package nl.hbgames.ui.popups
{
   import nl.hbgames.ui.buttons.PopupButton;
   import flash.display.Loader;
   import nl.hbgames.data.Localization;
   import flash.net.URLRequest;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   
   public class PromoRewardBox extends BasePopup
   {
       
      private var _ButtonOK:PopupButton;
      
      private var _ButtonMore:PopupButton;
      
      private var _Data;
      
      private var _DataIsObject:Boolean;
      
      private var _PromoMsg:Object;
      
      private var _CustomTitle:String;
      
      private var _CustomBody:String;
      
      private var _Callback:Function;
      
      private var _CoinAmount:int = 0;
      
      private var _StarAmount:int = 0;
      
      private var _Step:int = 0;
      
      private var _Loader:Loader;
      
      public function PromoRewardBox(param1:*, param2:String = null, param3:String = null, param4:Function = null)
      {
         var _loc6_:* = null;
         var _loc9_:* = 0;
         var _loc8_:* = null;
         var _loc5_:* = 0;
         var _loc7_:* = null;
         _Data = param1;
         _Callback = param4;
         if(_Data is String)
         {
            _loc6_ = _Data.split(",");
         }
         else if(_Data is Array)
         {
            _loc6_ = _Data;
         }
         else if(_Data is Object)
         {
            _DataIsObject = true;
            _PromoMsg = "promoMsg" in _Data?_Data.promoMsg:null;
            if("rewards" in _Data)
            {
               _loc6_ = _Data.rewards is Array?_Data.rewards:_Data.rewards.split(",");
            }
         }
         if(_loc6_ != null)
         {
            _loc9_ = 0;
            while(_loc9_ < _loc6_.length)
            {
               _loc8_ = _loc6_[_loc9_].split(" ");
               _loc5_ = _loc8_[0];
               _loc7_ = _loc8_[1];
               if(_loc7_ == "coins")
               {
                  _CoinAmount = §§dup()._CoinAmount + _loc5_;
               }
               else if(_loc7_ == "stars")
               {
                  _StarAmount = §§dup()._StarAmount + _loc5_;
               }
               _loc9_++;
            }
         }
         _CustomTitle = param2 != null && param2 != ""?param2:null;
         _CustomBody = param3 != null && param3 != ""?param3:null;
         super(new libPromoRewardsBox(),true);
      }
      
      override public function Initialize() : void
      {
         super.Initialize();
         ShowScreen();
      }
      
      private function ShowScreen() : void
      {
         var _loc1_:* = null;
         switch(_Step)
         {
            case 0:
               _Content.gotoAndStop(1);
               _Content.mcIcons.stop();
               if(_CoinAmount > 0 && _StarAmount > 0)
               {
                  _Content.mcIcons.gotoAndStop(3);
                  _Content.mcIcons.lblCoins.text = "+" + _CoinAmount;
                  _Content.mcIcons.lblStars.text = "+" + _StarAmount;
                  _loc1_ = Localization.Get("promo_reward_coins_stars",_CoinAmount,_StarAmount);
               }
               else if(_CoinAmount > 0 && _StarAmount == 0)
               {
                  _Content.mcIcons.gotoAndStop(1);
                  _Content.mcIcons.lblCoins.text = "+" + _CoinAmount;
                  _loc1_ = Localization.Get("promo_reward_coins",_CoinAmount);
               }
               else if(_CoinAmount == 0 && _StarAmount > 0)
               {
                  _Content.mcIcons.gotoAndStop(2);
                  _Content.mcIcons.lblStars.text = "+" + _StarAmount;
                  _loc1_ = Localization.Get("promo_reward_stars",_StarAmount);
               }
               _Content.lblTitle.text = _CustomTitle == null?Localization.Get("awesome"):_CustomTitle;
               _Content.lblMessage.text = _CustomBody == null?Localization.Get("promo_reward_message",_loc1_):_CustomBody;
               if(_PromoMsg != null)
               {
                  _ButtonOK = new PopupButton(_Content.btnOK,OnMoreClick,Localization.Get("general_button_continue"));
               }
               else
               {
                  _ButtonOK = new PopupButton(_Content.btnOK,OnCloseClick,Localization.Get("general_button_close"));
               }
               break;
            case 1:
               _ButtonOK.Dispose();
               _ButtonOK = null;
               if(_PromoMsg.img != null && _PromoMsg.img != "")
               {
                  _Content.gotoAndStop(2);
                  CreateLoader();
                  _Loader.load(new URLRequest(_PromoMsg.img));
               }
               else
               {
                  _Content.gotoAndStop(3);
               }
               if(_PromoMsg.moreUrl == null || _PromoMsg.moreUrl == "")
               {
                  _Content.btnClose.visible = false;
                  _Content.btnOK.x = -(_Content.btnOK.width / 2);
                  _ButtonOK = new PopupButton(_Content.btnOK,OnCloseClick,Localization.Get("general_button_close"));
               }
               else
               {
                  _ButtonOK = new PopupButton(_Content.btnClose,OnCloseClick,Localization.Get("general_button_close"));
                  _ButtonMore = new PopupButton(_Content.btnOK,OnMoreClick,_PromoMsg.moreLabel != null?_PromoMsg.moreLabel:Localization.Get("general_button_continue"));
               }
               _Content.lblTitle.text = _PromoMsg.title;
               _Content.lblMessage.text = _PromoMsg.msg;
               break;
         }
      }
      
      private function CreateLoader() : void
      {
         if(_Loader == null)
         {
            _Loader = new Loader();
            _Loader.contentLoaderInfo.addEventListener("complete",OnLoadComplete);
            _Loader.contentLoaderInfo.addEventListener("error",OnLoadError);
            _Loader.contentLoaderInfo.addEventListener("ioError",OnLoadError);
         }
      }
      
      private function OnLoadComplete(param1:Event = null) : void
      {
         _Content.mcImage.addChild(_Loader);
         _Content.mcLoader.visible = false;
      }
      
      private function OnLoadError(param1:Event = null) : void
      {
         _Content.mcLoader.visible = false;
      }
      
      private function OnMoreClick(param1:MouseEvent = null) : void
      {
         if(_PromoMsg != null && _Step == 0)
         {
            _Step = _Step + 1;
            ShowScreen();
         }
         else
         {
            navigateToURL(new URLRequest(_PromoMsg.moreUrl),"_blank");
         }
      }
      
      private function OnCloseClick(param1:MouseEvent = null) : void
      {
         if(_DataIsObject)
         {
            ClientData.Instance.Inventory.Set(_Data);
            Remove();
         }
         else
         {
            WaitBox.Show();
            PHPWrapper.GetInventory(OnInventorySynch);
         }
      }
      
      override public function OnBackHandler() : void
      {
         if(_Step == 0 && _PromoMsg != null)
         {
            OnMoreClick(null);
         }
         else
         {
            OnCloseClick(null);
         }
      }
      
      private function OnInventorySynch(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            ClientData.Instance.Inventory.Set(param1);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("inventory_update_failed"),true);
         }
         Remove();
      }
      
      override public function Remove() : void
      {
         if(_Callback != null)
         {
            _Callback();
         }
         super.Remove();
      }
      
      override public function Dispose() : void
      {
         if(_Loader != null)
         {
            _Loader.contentLoaderInfo.removeEventListener("complete",OnLoadComplete);
            _Loader.contentLoaderInfo.removeEventListener("error",OnLoadError);
            _Loader.contentLoaderInfo.removeEventListener("ioError",OnLoadError);
            _Loader.unloadAndStop();
            _Loader = null;
         }
         if(_ButtonOK != null)
         {
            _ButtonOK.Dispose();
            _ButtonOK = null;
         }
         if(_ButtonMore != null)
         {
            _ButtonMore.Dispose();
            _ButtonMore = null;
         }
         _CustomBody = null;
         _CustomTitle = null;
         _PromoMsg = null;
         _Data = null;
         _DataIsObject = false;
         super.Dispose();
      }
   }
}
