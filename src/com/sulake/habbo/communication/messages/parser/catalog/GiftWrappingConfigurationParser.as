package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_1446:Array;
      
      private var var_2018:Boolean;
      
      private var var_572:Array;
      
      private var var_2017:int;
      
      private var var_573:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var_1446 = [];
         var_573 = [];
         var_572 = [];
         var_2018 = param1.readBoolean();
         var_2017 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_1446.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_573.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_572.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
      
      public function get method_7() : Array
      {
         return var_572;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1446;
      }
      
      public function get wrappingPrice() : int
      {
         return var_2017;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boxTypes() : Array
      {
         return var_573;
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return var_2018;
      }
   }
}
