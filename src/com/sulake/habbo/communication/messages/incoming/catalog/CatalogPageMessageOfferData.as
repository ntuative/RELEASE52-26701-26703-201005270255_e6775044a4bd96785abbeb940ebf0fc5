package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_938:Array;
      
      private var var_876:int;
      
      private var var_1266:String;
      
      private var _offerId:int;
      
      private var var_877:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1266 = param1.readString();
         var_876 = param1.readInteger();
         var_877 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_938 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_938.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_938;
      }
      
      public function get priceInCredits() : int
      {
         return var_876;
      }
      
      public function get localizationId() : String
      {
         return var_1266;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_877;
      }
   }
}
