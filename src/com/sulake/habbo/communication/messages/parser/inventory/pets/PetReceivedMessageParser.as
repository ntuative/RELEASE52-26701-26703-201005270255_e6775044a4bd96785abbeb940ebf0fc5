package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1095:PetData;
      
      private var var_1585:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1585 = param1.readBoolean();
         var_1095 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1585 + ", " + var_1095.id + ", " + var_1095.name + ", " + pet.figure + ", " + var_1095.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1585;
      }
      
      public function get pet() : PetData
      {
         return var_1095;
      }
   }
}
