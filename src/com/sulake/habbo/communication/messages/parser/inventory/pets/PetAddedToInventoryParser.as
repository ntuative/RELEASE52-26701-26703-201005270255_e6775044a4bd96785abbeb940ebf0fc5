package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_1095:PetData;
      
      private var var_2049:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1095 = null;
         return true;
      }
      
      public function get purchased() : Boolean
      {
         return var_2049;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1095 = new PetData(param1);
         var_2049 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return var_1095;
      }
   }
}
