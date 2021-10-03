package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1148:int = 1;
      
      private static const const_1112:int = 3;
      
      private static const const_1149:int = 2;
      
      private static const const_1150:int = 15;
       
      
      private var var_915:int;
      
      private var var_244:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_244 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1149)
         {
            var_244 = new Array();
            var_244.push(const_1148);
            var_915 = const_1150;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_915 > 0)
         {
            --var_915;
         }
         if(var_915 == 0)
         {
            if(false)
            {
               super.setAnimation(var_244.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
