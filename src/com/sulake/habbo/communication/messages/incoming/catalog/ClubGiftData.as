package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2057:int;
      
      private var var_2058:Boolean;
      
      private var _offerId:int;
      
      private var var_1962:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2058 = param1.readBoolean();
         var_2057 = param1.readInteger();
         var_1962 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1962;
      }
      
      public function get monthsRequired() : int
      {
         return var_2057;
      }
      
      public function get isVip() : Boolean
      {
         return var_2058;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
