package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1442:String;
      
      private var var_2125:int;
      
      private var var_2124:int;
      
      private var var_2126:int;
      
      private var var_2127:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2125 = param1.readInteger();
         var_2126 = param1.readInteger();
         var_2124 = param1.readInteger();
         var_2127 = param1.readString();
         var_1442 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1442;
      }
      
      public function get hour() : int
      {
         return var_2125;
      }
      
      public function get minute() : int
      {
         return var_2126;
      }
      
      public function get chatterName() : String
      {
         return var_2127;
      }
      
      public function get chatterId() : int
      {
         return var_2124;
      }
   }
}
