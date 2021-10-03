package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_303:String;
      
      private var var_1642:int;
      
      private var var_2198:String;
      
      private var var_1025:int;
      
      private var var_1267:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1267;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1267 = param1.readInteger();
         var_2198 = param1.readString();
         var_1642 = param1.readInteger();
         var_303 = param1.readString();
         var_1025 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2198;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_303;
      }
      
      public function get petType() : int
      {
         return var_1025;
      }
      
      public function get level() : int
      {
         return var_1642;
      }
   }
}
