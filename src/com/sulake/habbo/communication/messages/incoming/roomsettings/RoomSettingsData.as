package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_474:int = 0;
      
      public static const const_139:int = 2;
      
      public static const const_192:int = 1;
      
      public static const const_618:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2032:Boolean;
      
      private var var_2026:Boolean;
      
      private var var_2031:int;
      
      private var var_2029:Array;
      
      private var var_2028:int;
      
      private var var_2033:Boolean;
      
      private var var_1222:String;
      
      private var var_2030:int;
      
      private var var_2027:Boolean;
      
      private var var_2025:int;
      
      private var var_1223:int;
      
      private var _roomId:int;
      
      private var var_657:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2030;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2030 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_2027 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2033;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2028 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2029 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_657 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2032;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2026;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2031;
      }
      
      public function get categoryId() : int
      {
         return var_1223;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_2033 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_2027;
      }
      
      public function get controllerCount() : int
      {
         return var_2028;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2029;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_2025 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2032 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2026 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2031 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_2025;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1223 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1222 = param1;
      }
      
      public function get description() : String
      {
         return var_1222;
      }
   }
}