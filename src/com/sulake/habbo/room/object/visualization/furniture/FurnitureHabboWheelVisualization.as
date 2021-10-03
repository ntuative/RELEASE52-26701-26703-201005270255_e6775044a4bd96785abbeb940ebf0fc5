package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1113:int = 31;
      
      private static const const_1112:int = 32;
      
      private static const const_784:int = 10;
      
      private static const const_517:int = 20;
       
      
      private var var_625:Boolean = false;
      
      private var var_244:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_244 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_625 = true;
            var_244 = new Array();
            var_244.push(const_1113);
            var_244.push(const_1112);
            return;
         }
         if(param1 > 0 && param1 <= const_784)
         {
            if(var_625)
            {
               var_625 = false;
               var_244 = new Array();
               var_244.push(const_784 + param1);
               var_244.push(const_517 + param1);
               var_244.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
