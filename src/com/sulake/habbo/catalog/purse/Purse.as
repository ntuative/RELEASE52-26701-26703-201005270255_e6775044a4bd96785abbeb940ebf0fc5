package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2083:int = 0;
      
      private var var_1575:int = 0;
      
      private var var_2086:Boolean = false;
      
      private var var_2084:int = 0;
      
      private var var_2087:int = 0;
      
      private var var_1576:int = 0;
      
      private var var_2085:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1575;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1575 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_2086 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_2085 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1575 > 0 || var_1576 > 0;
      }
      
      public function get credits() : int
      {
         return var_2084;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_2087 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1576;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2086;
      }
      
      public function get pastClubDays() : int
      {
         return var_2085;
      }
      
      public function get pastVipDays() : int
      {
         return var_2087;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2083 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2083;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1576 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2084 = param1;
      }
   }
}
