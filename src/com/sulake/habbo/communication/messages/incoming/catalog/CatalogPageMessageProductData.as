package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_212:String = "e";
      
      public static const const_85:String = "i";
      
      public static const const_84:String = "s";
       
      
      private var var_1057:String;
      
      private var var_1290:String;
      
      private var var_1288:int;
      
      private var var_1940:int;
      
      private var var_1056:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1290 = param1.readString();
         var_1940 = param1.readInteger();
         var_1057 = param1.readString();
         var_1056 = param1.readInteger();
         var_1288 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1056;
      }
      
      public function get productType() : String
      {
         return var_1290;
      }
      
      public function get expiration() : int
      {
         return var_1288;
      }
      
      public function get furniClassId() : int
      {
         return var_1940;
      }
      
      public function get extraParam() : String
      {
         return var_1057;
      }
   }
}
