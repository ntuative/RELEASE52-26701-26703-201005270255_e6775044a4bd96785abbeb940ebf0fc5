package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectDimmerStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const const_60:String = "RODSUE_DIMMER_STATE";
       
      
      private var var_1083:int;
      
      private var _color:uint;
      
      private var var_1084:int;
      
      private var var_1867:int;
      
      private var var_35:int;
      
      public function RoomObjectDimmerStateUpdateEvent(param1:int, param2:String, param3:int, param4:int, param5:int, param6:uint, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_60,param1,param2,param8,param9);
         var_35 = param3;
         var_1867 = param4;
         var_1083 = param5;
         _color = param6;
         var_1084 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1084;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1083;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get presetId() : int
      {
         return var_1867;
      }
   }
}
