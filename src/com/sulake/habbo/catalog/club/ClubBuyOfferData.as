package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_2240:int;
      
      private var var_2233:Boolean = false;
      
      private var var_2234:int;
      
      private var var_2237:int;
      
      private var var_2236:int;
      
      private var var_1356:String;
      
      private var var_1350:int;
      
      private var _offerId:int;
      
      private var var_2238:int;
      
      private var var_2235:Boolean;
      
      private var var_2239:Boolean;
      
      private var var_446:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1356 = param2;
         var_1350 = param3;
         var_2239 = param4;
         var_2235 = param5;
         var_2234 = param6;
         var_2236 = param7;
         var_2237 = param8;
         var_2240 = param9;
         var_2238 = param10;
      }
      
      public function get month() : int
      {
         return var_2240;
      }
      
      public function get page() : ICatalogPage
      {
         return var_446;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_2235;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_446 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_357;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2239;
      }
      
      public function get localizationId() : String
      {
         return var_1356;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2236;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2233;
      }
      
      public function get day() : int
      {
         return var_2238;
      }
      
      public function get year() : int
      {
         return var_2237;
      }
      
      public function get price() : int
      {
         return var_1350;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2233 = param1;
      }
      
      public function get periods() : int
      {
         return var_2234;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1350;
      }
      
      public function get productCode() : String
      {
         return var_1356;
      }
   }
}
