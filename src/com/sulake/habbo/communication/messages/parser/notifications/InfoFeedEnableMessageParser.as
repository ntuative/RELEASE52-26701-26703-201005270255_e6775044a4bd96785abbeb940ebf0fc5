package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InfoFeedEnableMessageParser implements IMessageParser
   {
       
      
      private var var_1178:Boolean;
      
      public function InfoFeedEnableMessageParser()
      {
         super();
      }
      
      public function get enabled() : Boolean
      {
         return var_1178;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1178 = param1.readBoolean();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1178 = false;
         return true;
      }
   }
}