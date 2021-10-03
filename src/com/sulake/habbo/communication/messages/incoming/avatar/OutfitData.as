package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1813:String;
      
      private var var_602:String;
      
      private var var_1519:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1519 = param1.readInteger();
         var_1813 = param1.readString();
         var_602 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_602;
      }
      
      public function get figureString() : String
      {
         return var_1813;
      }
      
      public function get slotId() : int
      {
         return var_1519;
      }
   }
}
