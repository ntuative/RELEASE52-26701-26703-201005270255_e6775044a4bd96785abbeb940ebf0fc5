package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1383:String = "";
      
      private var var_1384:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1384 = "";
         var_1383 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1383;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1384 = param1.readString();
         var_1383 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1384;
      }
   }
}
