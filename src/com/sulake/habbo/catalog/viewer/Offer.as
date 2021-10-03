package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_880:String = "price_type_none";
      
      public static const const_435:String = "pricing_model_multi";
      
      public static const const_357:String = "price_type_credits";
      
      public static const const_390:String = "price_type_credits_and_pixels";
      
      public static const const_406:String = "pricing_model_bundle";
      
      public static const const_401:String = "pricing_model_single";
      
      public static const const_622:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1207:String = "pricing_model_unknown";
      
      public static const const_459:String = "price_type_pixels";
       
      
      private var var_1910:int;
      
      private var var_876:int;
      
      private var _offerId:int;
      
      private var var_877:int;
      
      private var var_411:String;
      
      private var var_601:String;
      
      private var var_446:ICatalogPage;
      
      private var var_410:IProductContainer;
      
      private var var_1266:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1266 = param1.localizationId;
         var_876 = param1.priceInCredits;
         var_877 = param1.priceInPixels;
         var_446 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_411;
      }
      
      public function get page() : ICatalogPage
      {
         return var_446;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1910 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_410;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_877;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1266 = "";
         var_876 = 0;
         var_877 = 0;
         var_446 = null;
         if(var_410 != null)
         {
            var_410.dispose();
            var_410 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1910;
      }
      
      public function get priceInCredits() : int
      {
         return var_876;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_411 = const_401;
            }
            else
            {
               var_411 = const_435;
            }
         }
         else if(param1.length > 1)
         {
            var_411 = const_406;
         }
         else
         {
            var_411 = const_1207;
         }
      }
      
      public function get priceType() : String
      {
         return var_601;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_411)
         {
            case const_401:
               var_410 = new SingleProductContainer(this,param1);
               break;
            case const_435:
               var_410 = new MultiProductContainer(this,param1);
               break;
            case const_406:
               var_410 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_411);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1266;
      }
      
      private function analyzePriceType() : void
      {
         if(var_876 > 0 && var_877 > 0)
         {
            var_601 = const_390;
         }
         else if(var_876 > 0)
         {
            var_601 = const_357;
         }
         else if(var_877 > 0)
         {
            var_601 = const_459;
         }
         else
         {
            var_601 = const_880;
         }
      }
   }
}
