package nl.hbgames.data.shop
{
   public class ShopItemData extends Object
   {
       
      private var _ID:String;
      
      private var _Cost:String;
      
      private var _Title:String;
      
      private var _Description:String;
      
      private var _Currency:String;
      
      private var _Lifetime:Number;
      
      private var _LintLabel:String;
      
      public function ShopItemData(param1:Object)
      {
         super();
         _ID = param1.id;
         _Cost = param1.cost;
         _Title = param1.title;
         _Description = param1.description;
         _Currency = param1.category;
         _Lifetime = param1.lifetime?param1.lifetime:0;
         _LintLabel = param1.lint?param1.lint:null;
      }
      
      public function get ID() : String
      {
         return _ID;
      }
      
      public function get Cost() : String
      {
         return _Cost;
      }
      
      public function get Title() : String
      {
         return _Title;
      }
      
      public function get Description() : String
      {
         return _Description;
      }
      
      public function get Currency() : String
      {
         return _Currency;
      }
      
      public function get Lifetime() : Number
      {
         return _Lifetime;
      }
      
      public function get LintLabel() : String
      {
         return _LintLabel;
      }
      
      public function Dispose() : void
      {
         _ID = null;
         _Cost = null;
         _Title = null;
         _Description = null;
         _Currency = null;
         _Lifetime = 0;
         _LintLabel = null;
      }
   }
}
