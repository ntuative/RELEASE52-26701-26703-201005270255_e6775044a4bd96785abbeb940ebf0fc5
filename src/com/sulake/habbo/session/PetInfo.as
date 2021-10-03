package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1642:int;
      
      private var var_2117:int;
      
      private var var_2114:int;
      
      private var var_2139:int;
      
      private var _nutrition:int;
      
      private var var_1267:int;
      
      private var var_2138:int;
      
      private var var_2140:int;
      
      private var _energy:int;
      
      private var var_2112:int;
      
      private var var_2137:int;
      
      private var _ownerName:String;
      
      private var var_2115:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1642;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_2117 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function get petId() : int
      {
         return var_1267;
      }
      
      public function get experienceMax() : int
      {
         return var_2140;
      }
      
      public function get nutritionMax() : int
      {
         return var_2139;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_2138 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_2115;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1267 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_2137;
      }
      
      public function get respect() : int
      {
         return var_2117;
      }
      
      public function get levelMax() : int
      {
         return var_2138;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_2140 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_2114 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_2139 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_2115 = param1;
      }
      
      public function get experience() : int
      {
         return var_2114;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_2137 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_2112 = param1;
      }
      
      public function get age() : int
      {
         return var_2112;
      }
   }
}
