package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1623:Array;
      
      private var var_1901:int;
      
      private var var_1897:int;
      
      private var var_1899:int;
      
      private var var_1900:int;
      
      private var _dayOffsets:Array;
      
      private var var_1898:int;
      
      private var var_1624:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1897;
      }
      
      public function get historyLength() : int
      {
         return var_1900;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1899;
      }
      
      public function get offerCount() : int
      {
         return var_1898;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1624;
      }
      
      public function get averagePrice() : int
      {
         return var_1901;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1901 = param1.readInteger();
         var_1898 = param1.readInteger();
         var_1900 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1623 = [];
         var_1624 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1623.push(param1.readInteger());
            var_1624.push(param1.readInteger());
            _loc3_++;
         }
         var_1899 = param1.readInteger();
         var_1897 = param1.readInteger();
         return true;
      }
   }
}
