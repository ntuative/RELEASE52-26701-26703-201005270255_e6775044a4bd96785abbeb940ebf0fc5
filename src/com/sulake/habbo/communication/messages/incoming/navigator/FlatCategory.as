package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_361:Boolean;
      
      private var var_1318:int;
      
      private var var_1570:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1318 = param1.readInteger();
         var_1570 = param1.readString();
         var_361 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_361;
      }
      
      public function get nodeName() : String
      {
         return var_1570;
      }
      
      public function get nodeId() : int
      {
         return var_1318;
      }
   }
}
