package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2106:String;
      
      private var var_1235:String;
      
      private var var_2107:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2107 = param1;
         var_1235 = param2;
         var_2106 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2107,var_1235,var_2106];
      }
      
      public function dispose() : void
      {
      }
   }
}
