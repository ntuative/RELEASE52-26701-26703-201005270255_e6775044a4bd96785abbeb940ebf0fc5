package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2248:Number = 1.0;
      
      private var var_147:Number = 1.0;
      
      private var var_2197:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2197 = param1;
         var_147 = param2;
         var_2248 = param3;
      }
      
      public function get scale() : Number
      {
         return var_147;
      }
      
      public function get heightScale() : Number
      {
         return var_2248;
      }
   }
}
