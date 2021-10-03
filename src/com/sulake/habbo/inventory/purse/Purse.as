package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2206:Boolean = false;
      
      private var var_2207:int = 0;
      
      private var var_1575:int = 0;
      
      private var var_2208:int = 0;
      
      private var var_2086:Boolean = false;
      
      private var var_1591:int = 0;
      
      private var var_1576:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1591 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2207;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2206;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2206 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2086;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2207 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1575 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1591;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2086 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2208 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1575;
      }
      
      public function get pixelBalance() : int
      {
         return var_2208;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1576 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1576;
      }
   }
}
