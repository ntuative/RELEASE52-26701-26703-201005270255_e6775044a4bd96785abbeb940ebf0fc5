package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1350:int;
      
      private var var_1901:int;
      
      private var var_2119:int = -1;
      
      private var var_150:int;
      
      private var var_2120:int;
      
      private var _offerId:int;
      
      private var var_1351:int;
      
      private var _furniId:int;
      
      private var var_1419:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_2120 = param3;
         var_1419 = param4;
         var_1350 = param5;
         var_150 = param6;
         var_2119 = param7;
         var_1901 = param8;
         var_1351 = param9;
      }
      
      public function get status() : int
      {
         return var_150;
      }
      
      public function get price() : int
      {
         return var_1350;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2119;
      }
      
      public function get offerCount() : int
      {
         return var_1351;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_2120;
      }
      
      public function get averagePrice() : int
      {
         return var_1901;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1419;
      }
   }
}
