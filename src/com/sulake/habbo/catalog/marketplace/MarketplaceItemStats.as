package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1623:Array;
      
      private var var_1901:int;
      
      private var var_1897:int;
      
      private var var_1900:int;
      
      private var var_1899:int;
      
      private var _dayOffsets:Array;
      
      private var var_1898:int;
      
      private var var_1624:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1623;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1623 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1897;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1624 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1901 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1900;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1899;
      }
      
      public function get offerCount() : int
      {
         return var_1898;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1898 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1624;
      }
      
      public function get averagePrice() : int
      {
         return var_1901;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1899 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1900 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1897 = param1;
      }
   }
}
