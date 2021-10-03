package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1113:int = 31;
      
      private static const const_1112:int = 32;
      
      private static const const_516:int = 30;
      
      private static const const_784:int = 20;
      
      private static const const_517:int = 10;
       
      
      private var var_625:Boolean = false;
      
      private var var_244:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_244 = new Array();
         super();
         super.setAnimation(const_516);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_625 = true;
            var_244 = new Array();
            var_244.push(const_1113);
            var_244.push(const_1112);
            return;
         }
         if(param1 > 0 && param1 <= const_517)
         {
            if(var_625)
            {
               var_625 = false;
               var_244 = new Array();
               if(_direction == 2)
               {
                  var_244.push(const_784 + 5 - param1);
                  var_244.push(const_517 + 5 - param1);
               }
               else
               {
                  var_244.push(const_784 + param1);
                  var_244.push(const_517 + param1);
               }
               var_244.push(const_516);
               return;
            }
            super.setAnimation(const_516);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
