package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_2240:int;
      
      private var var_1350:int;
      
      private var var_2234:int;
      
      private var _offerId:int;
      
      private var var_2237:int;
      
      private var var_2238:int;
      
      private var var_2235:Boolean;
      
      private var var_2236:int;
      
      private var var_2239:Boolean;
      
      private var var_1356:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1356 = param1.readString();
         var_1350 = param1.readInteger();
         var_2239 = param1.readBoolean();
         var_2235 = param1.readBoolean();
         var_2234 = param1.readInteger();
         var_2236 = param1.readInteger();
         var_2237 = param1.readInteger();
         var_2240 = param1.readInteger();
         var_2238 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_2237;
      }
      
      public function get month() : int
      {
         return var_2240;
      }
      
      public function get price() : int
      {
         return var_1350;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_2234;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2236;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2239;
      }
      
      public function get day() : int
      {
         return var_2238;
      }
      
      public function get vip() : Boolean
      {
         return var_2235;
      }
      
      public function get productCode() : String
      {
         return var_1356;
      }
   }
}
