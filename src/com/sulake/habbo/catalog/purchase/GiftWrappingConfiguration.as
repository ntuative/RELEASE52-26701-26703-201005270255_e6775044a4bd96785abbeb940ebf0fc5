package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_572:Array;
      
      private var var_1350:int;
      
      private var var_1446:Array;
      
      private var var_573:Array;
      
      private var var_1268:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1268 = _loc2_.isWrappingEnabled;
         var_1350 = _loc2_.wrappingPrice;
         var_1446 = _loc2_.stuffTypes;
         var_573 = _loc2_.boxTypes;
         var_572 = _loc2_.method_7;
      }
      
      public function get method_7() : Array
      {
         return var_572;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1446;
      }
      
      public function get price() : int
      {
         return var_1350;
      }
      
      public function get boxTypes() : Array
      {
         return var_573;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1268;
      }
   }
}
