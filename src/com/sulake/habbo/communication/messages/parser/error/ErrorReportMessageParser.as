package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1370:int;
      
      private var var_1151:int;
      
      private var var_1369:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1370;
      }
      
      public function flush() : Boolean
      {
         var_1151 = 0;
         var_1370 = 0;
         var_1369 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1151;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1370 = param1.readInteger();
         var_1151 = param1.readInteger();
         var_1369 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1369;
      }
   }
}
