package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1991:Number;
      
      private var var_614:Number = 0;
      
      private var var_1990:Number;
      
      private var var_613:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1991 = param1;
         var_1990 = param2;
      }
      
      public function update() : void
      {
         var_613 += var_1990;
         var_614 += var_613;
         if(var_614 > 0)
         {
            var_614 = 0;
            var_613 = var_1991 * -1 * var_613;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_613 = param1;
         var_614 = 0;
      }
      
      public function get location() : Number
      {
         return var_614;
      }
   }
}
