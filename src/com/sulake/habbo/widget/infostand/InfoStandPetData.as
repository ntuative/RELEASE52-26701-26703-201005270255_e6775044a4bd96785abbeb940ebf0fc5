package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1642:int;
      
      private var var_2114:int;
      
      private var var_2139:int;
      
      private var _type:int;
      
      private var var_1267:int = -1;
      
      private var var_2138:int;
      
      private var _nutrition:int;
      
      private var var_2140:int;
      
      private var _energy:int;
      
      private var var_2142:int;
      
      private var var_2137:int;
      
      private var var_2136:int;
      
      private var var_2112:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2141:Boolean;
      
      private var _name:String = "";
      
      private var var_2115:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2141;
      }
      
      public function get level() : int
      {
         return var_1642;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_2140;
      }
      
      public function get id() : int
      {
         return var_1267;
      }
      
      public function get nutritionMax() : int
      {
         return var_2139;
      }
      
      public function get ownerId() : int
      {
         return var_2115;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1267 = param1.id;
         _type = param1.petType;
         var_2142 = param1.petRace;
         _image = param1.image;
         var_2141 = param1.isOwnPet;
         var_2115 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1642 = param1.level;
         var_2138 = param1.levelMax;
         var_2114 = param1.experience;
         var_2140 = param1.experienceMax;
         _energy = param1.energy;
         var_2137 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_2139 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2136 = param1.roomIndex;
         var_2112 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2136;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_2137;
      }
      
      public function get levelMax() : int
      {
         return var_2138;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_2142;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_2114;
      }
      
      public function get age() : int
      {
         return var_2112;
      }
   }
}
