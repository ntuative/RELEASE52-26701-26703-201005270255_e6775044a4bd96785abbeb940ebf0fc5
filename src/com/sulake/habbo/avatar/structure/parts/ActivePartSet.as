package com.sulake.habbo.avatar.structure.parts
{
   public class ActivePartSet
   {
       
      
      private var var_184:Array;
      
      private var _id:String;
      
      public function ActivePartSet(param1:XML)
      {
         var _loc2_:* = null;
         super();
         _id = String(param1.@id);
         var_184 = new Array();
         for each(_loc2_ in param1.activePart)
         {
            var_184.push(String(_loc2_["set-type"]));
         }
      }
      
      public function get parts() : Array
      {
         return var_184;
      }
   }
}
