package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1020:Boolean;
      
      private var var_1019:Boolean;
      
      private var var_1018:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1020;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1019;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1018 = param1.readBoolean();
         var_1019 = param1.readBoolean();
         var_1020 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1018;
      }
      
      public function flush() : Boolean
      {
         var_1018 = false;
         var_1019 = false;
         var_1020 = false;
         return true;
      }
   }
}
