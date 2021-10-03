package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1730:int;
      
      private var var_2187:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2187 = param1.readString();
         var_1730 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2187;
      }
      
      public function get userCount() : int
      {
         return var_1730;
      }
   }
}
