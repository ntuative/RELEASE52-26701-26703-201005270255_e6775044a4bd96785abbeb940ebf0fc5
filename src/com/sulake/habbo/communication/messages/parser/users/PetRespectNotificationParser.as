package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_2117:int;
      
      private var var_1388:PetData;
      
      private var var_2247:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_2117;
      }
      
      public function get petData() : PetData
      {
         return var_1388;
      }
      
      public function flush() : Boolean
      {
         var_1388 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2247;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2117 = param1.readInteger();
         var_2247 = param1.readInteger();
         var_1388 = new PetData(param1);
         return true;
      }
   }
}
