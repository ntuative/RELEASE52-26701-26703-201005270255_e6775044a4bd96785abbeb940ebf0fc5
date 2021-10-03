package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1793:Class;
      
      private var var_1794:Class;
      
      private var var_1795:String;
      
      private var var_1208:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1795 = param1;
         var_1794 = param2;
         var_1793 = param3;
         if(rest == null)
         {
            var_1208 = new Array();
         }
         else
         {
            var_1208 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1793;
      }
      
      public function get assetClass() : Class
      {
         return var_1794;
      }
      
      public function get mimeType() : String
      {
         return var_1795;
      }
      
      public function get fileTypes() : Array
      {
         return var_1208;
      }
   }
}
