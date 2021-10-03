package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1580:int = 2;
      
      public static const const_1335:int = 4;
      
      public static const const_1223:int = 1;
      
      public static const const_1281:int = 3;
       
      
      private var var_987:int = 0;
      
      private var var_801:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_987;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_987 = param1.readInteger();
         if(var_987 == 3)
         {
            var_801 = param1.readString();
         }
         else
         {
            var_801 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_987 = 0;
         var_801 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_801;
      }
   }
}
