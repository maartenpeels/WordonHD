package nl.hbgames.ui.list
{
   import nl.hbgames.enums.ShopItems;
   import nl.hbgames.utils.StringUtil;
   import nl.hbgames.utils.Response;
   import nl.hbgames.ui.popups.PurchaseBox;
   
   public class ShopListItem extends BaseShopListItem
   {
       
      private var _ExpireTime:Number;
      
      public function ShopListItem(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number = 0, param7:Boolean = false, param8:String = null, param9:Function = null)
      {
         _ExpireTime = param6 >= 0?param6:0.0;
         super("libListShopItemContent",param1,param2,param3,param4,param5,param7,param8,param9);
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.mcProduct.gotoAndStop(ShopItems.GetImageID(_ItemID));
         if(_ExpireTime > 0 && _IsEnabled)
         {
            _Content.mcLint.label.text = StringUtil.LocalizedTime(_ExpireTime);
         }
         else if(_LintLabel != null)
         {
            _Content.mcLint.label.text = _LintLabel;
         }
         else if(_Content.contains(_Content.mcLint))
         {
            _Content.removeChild(_Content.mcLint);
         }
      }
      
      override protected function OnItemBought(param1:Response) : void
      {
         super.OnItemBought(param1);
         if(param1.isSuccess)
         {
            new PurchaseBox(_ItemID);
         }
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
