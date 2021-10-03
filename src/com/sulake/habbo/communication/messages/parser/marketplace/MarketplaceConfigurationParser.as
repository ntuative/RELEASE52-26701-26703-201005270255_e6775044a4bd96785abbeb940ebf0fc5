package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1978:int;
      
      private var var_1584:int;
      
      private var var_1979:int;
      
      private var var_1977:int;
      
      private var var_1980:int;
      
      private var var_1583:int;
      
      private var var_1832:int;
      
      private var var_1268:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1978;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1584;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1832;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1977;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1980;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1583;
      }
      
      public function get commission() : int
      {
         return var_1979;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1268 = param1.readBoolean();
         var_1979 = param1.readInteger();
         var_1584 = param1.readInteger();
         var_1583 = param1.readInteger();
         var_1977 = param1.readInteger();
         var_1978 = param1.readInteger();
         var_1980 = param1.readInteger();
         var_1832 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1268;
      }
   }
}
