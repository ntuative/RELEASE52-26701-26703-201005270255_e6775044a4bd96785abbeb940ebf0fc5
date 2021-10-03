package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1582:String;
      
      private var var_1450:String;
      
      private var var_1026:String;
      
      private var var_422:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1582 = String(param1.@align);
         var_1026 = String(param1.@base);
         var_1450 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_422 = Number(_loc2_);
            if(var_422 > 1)
            {
               var_422 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1582;
      }
      
      public function get ink() : String
      {
         return var_1450;
      }
      
      public function get base() : String
      {
         return var_1026;
      }
      
      public function get isBlended() : Boolean
      {
         return var_422 != 1;
      }
      
      public function get blend() : Number
      {
         return var_422;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}