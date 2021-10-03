package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2095:Number = 0.0;
      
      private var var_2038:Number = 0.0;
      
      private var var_2039:Number = 0.0;
      
      private var var_2096:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_2038 = param1;
         var_2039 = param2;
         var_2095 = param3;
         var_2096 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_2038;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2095;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_2039;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2096;
      }
   }
}
