package nl.hbgames.managers.billing
{
   public class StoreProduct extends Object
   {
       
      private var theID:String;
      
      private var theName:String;
      
      private var theDescription:String;
      
      private var theCost:Number;
      
      private var theVirtualCurrencyType:String;
      
      private var theLocalizedCost:String;
      
      private var theCurrencyLocale:String;
      
      private var theCurrencySymbol:String;
      
      private var theIsRealMoneyProduct:Boolean;
      
      public function StoreProduct(param1:String, param2:String = "", param3:String = "")
      {
         super();
         theID = param1;
         theName = param2;
         theDescription = param3;
      }
      
      public function get id() : String
      {
         return theID;
      }
      
      public function get name() : String
      {
         return theName;
      }
      
      public function set name(param1:String) : void
      {
         theName = param1;
      }
      
      public function get description() : String
      {
         return theDescription;
      }
      
      public function set description(param1:String) : void
      {
         theDescription = param1;
      }
      
      public function get cost() : Number
      {
         return theCost;
      }
      
      public function get localizedCost() : String
      {
         return theLocalizedCost;
      }
      
      public function get currencyLocale() : String
      {
         return theCurrencyLocale;
      }
      
      public function get currencySymbol() : String
      {
         return theCurrencySymbol;
      }
      
      public function get virtualCurrencyType() : String
      {
         return theVirtualCurrencyType;
      }
      
      public function get isRealMoneyProduct() : Boolean
      {
         return theIsRealMoneyProduct;
      }
      
      public function setRealCost(param1:Number, param2:String, param3:String) : void
      {
         theIsRealMoneyProduct = true;
         theCost = param1;
         theLocalizedCost = param2;
         theCurrencyLocale = param3;
         theCurrencySymbol = param2.replace(new RegExp("[ 0-9,.-]","g"),"");
      }
      
      public function setVirtualCost(param1:Number, param2:String) : void
      {
         theIsRealMoneyProduct = false;
         theCost = param1;
         theVirtualCurrencyType = param2;
      }
      
      public function toString() : String
      {
         return theID + " - " + theName + " - " + theCost;
      }
      
      public function dispose() : void
      {
         theID = null;
         theName = null;
         theDescription = null;
         theVirtualCurrencyType = null;
         theCurrencyLocale = null;
         theCurrencySymbol = null;
         theIsRealMoneyProduct = false;
         theLocalizedCost = null;
         theCost = 0;
      }
   }
}
