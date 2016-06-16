package nl.hbgames.ui.list
{
   import flash.display.MovieClip;
   import nl.hbgames.data.NewsItemData;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.data.AppData;
   import nl.hbgames.utils.StringUtil;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.ui.panels.LeaderboardPanel;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.data.Localization;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import nl.hbgames.managers.offerwalls.OfferWallManager;
   import flash.events.Event;
   
   public class NewsListItem extends BaseListItem
   {
       
      private const WAIT_BEFORE_SCROLL:Number = 180.0;
      
      private const SCROLL_SPEED:Number = 0.3;
      
      private const HIGHLIGHT_COLOR:String = "#102C65";
      
      private var _Items:Vector.<MovieClip>;
      
      private var _MaskHeight:int;
      
      private var _MaskWidth:int;
      
      private var _Ticker:Number;
      
      private var _ShouldScroll:Boolean;
      
      private var _IsScrolling:Boolean;
      
      private var _ScrollPaused:Boolean;
      
      private var _TouchCallback:Function;
      
      private var _Data:NewsItemData;
      
      public function NewsListItem(param1:Function = null)
      {
         _TouchCallback = param1;
         super(AssetManager.GetDefinition("libListNewsContent",true,true));
      }
      
      override public function get ItemHeight() : Number
      {
         return _Content.mcHeight.height * AssetManager.ContentScaleFactor;
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Items = new Vector.<MovieClip>();
         _MaskHeight = _Content.mcMask.height;
         _MaskWidth = _Content.mcMask.width;
         _Ticker = 0;
         this.addEventListener("enterFrame",OnTickUpdate);
         this.addEventListener("click",OnTouch);
         Next();
      }
      
      public function Next() : void
      {
         var _loc1_:Vector.<NewsItemData> = AppData.Instance.NewsItems;
         Show(_loc1_[0]);
         _loc1_.push(_loc1_.shift());
      }
      
      private function Show(param1:NewsItemData) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         ClearItems();
         _Data = param1;
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            _loc2_ = new libNewsItemText();
            _loc2_.lblBody.htmlText = ParseHighlights(param1.Message);
            _loc2_.lblBody.width = _MaskWidth;
            _loc2_.lblBody.autoSize = "left";
            _loc2_.y = _loc3_ * (_loc2_.height + _MaskHeight / 2);
            _Content.mcContent.addChild(_loc2_);
            _Items.push(_loc2_);
            if(_loc3_ == 0 && _loc2_.lblBody.numLines > 3)
            {
               _ShouldScroll = true;
               _loc3_++;
               continue;
            }
            break;
         }
         _Content.mcIcons.gotoAndStop(param1.IconType + 1);
         _IsScrolling = false;
         _ScrollPaused = false;
      }
      
      private function ParseHighlights(param1:String) : String
      {
         if(param1 == null)
         {
            var param1:String = "";
         }
         param1 = StringUtil.Replace(param1,"[","<font color=\'#102C65\'>");
         param1 = StringUtil.Replace(param1,"]","</font>");
         return param1;
      }
      
      private function OnTouch(param1:MouseEvent) : void
      {
         e = param1;
         var allowTouch:Boolean = _TouchCallback == null || _TouchCallback();
         if(!ScrollingList.IsDragging && allowTouch)
         {
            switch(_Data.IconType)
            {
               case 0:
               case 1:
                  if(_Data.Params)
                  {
                     navigateToURL(new URLRequest(_Data.Params),"_blank");
                  }
                  break;
               case 2:
               case 3:
                  LogicManager.Instance.SetState("ShopOverview",_Data.Params != null?{"activeFilter":_Data.Params}:null);
                  break;
               case 4:
                  if(!ClientData.Instance.IsFacebookUser)
                  {
                     ClientData.Instance.MigrateToFacebook();
                  }
                  break;
               case 5:
               case 6:
                  if(ClientData.Instance.IsFacebookUser)
                  {
                     new LeaderboardPanel();
                     Next();
                  }
                  else
                  {
                     new MessageBox(Localization.Get("attention"),Localization.Get("feature_requires_facebook"),false,true,function():void
                     {
                        ClientData.Instance.MigrateToFacebook(function():void
                        {
                        });
                     },true);
                  }
                  break;
               case 7:
                  break;
               case 8:
                  OfferWallManager.instance.showOffers();
                  break;
               case 9:
                  LogicManager.Instance.SetState("Promoshare");
                  break;
            }
         }
      }
      
      private function OnTickUpdate(param1:Event) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         if(_ShouldScroll)
         {
            if(!_IsScrolling)
            {
               _Ticker = _Ticker + 1;
               if(_Ticker >= 180)
               {
                  _IsScrolling = true;
               }
            }
            else if(!_ScrollPaused)
            {
               _loc3_ = 0;
               while(_loc3_ < _Items.length)
               {
                  _loc2_ = _Items[_loc3_];
                  _loc2_.y = _loc2_.y - 0.3;
                  if(_loc2_.y < -(_loc2_.height + _MaskHeight / 2))
                  {
                     _loc2_.y = _loc2_.height + _MaskHeight / 2;
                  }
                  _loc3_++;
               }
            }
         }
      }
      
      private function ToggleScroll() : void
      {
         if(_ShouldScroll)
         {
            if(!_IsScrolling)
            {
               _Ticker = 180;
               _IsScrolling = true;
            }
            else
            {
               _ScrollPaused = !_ScrollPaused;
            }
         }
      }
      
      private function ClearItems() : void
      {
         var _loc1_:* = 0;
         _loc1_ = 0;
         while(_loc1_ < _Items.length)
         {
            _Content.mcContent.removeChild(_Items[_loc1_]);
            _Items[_loc1_] = null;
            _Items.splice(_loc1_,1);
            _loc1_--;
            _loc1_++;
         }
         _Data = null;
      }
      
      override public function Dispose() : void
      {
         this.removeEventListener("enterFrame",OnTickUpdate);
         this.removeEventListener("click",OnTouch);
         ClearItems();
         _Items = null;
         super.Dispose();
      }
   }
}
