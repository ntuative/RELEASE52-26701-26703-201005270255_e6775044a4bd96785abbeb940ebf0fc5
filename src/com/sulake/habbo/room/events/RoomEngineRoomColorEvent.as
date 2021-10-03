package com.sulake.habbo.room.events
{
   public class RoomEngineRoomColorEvent extends RoomEngineEvent
   {
      
      public static const const_592:String = "REE_ROOM_COLOR";
       
      
      private var var_1715:uint;
      
      private var var_1714:Boolean;
      
      private var _color:uint;
      
      public function RoomEngineRoomColorEvent(param1:int, param2:int, param3:uint, param4:uint, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_592,param1,param2,param6,param7);
         _color = param3;
         var_1715 = param4;
         var_1714 = param5;
      }
      
      public function get brightness() : uint
      {
         return var_1715;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_1714;
      }
   }
}
