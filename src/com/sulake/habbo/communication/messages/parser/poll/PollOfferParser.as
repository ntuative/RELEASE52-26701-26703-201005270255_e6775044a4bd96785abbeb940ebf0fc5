package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PollOfferParser implements IMessageParser
   {
       
      
      private var var_1382:String = "";
      
      private var _id:int = -1;
      
      public function PollOfferParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _id = param1.readInteger();
         var_1382 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         _id = -1;
         var_1382 = "";
         return true;
      }
      
      public function get summary() : String
      {
         return var_1382;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
