package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1632:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1696:String = "ROE_MOUSE_ENTER";
      
      public static const const_482:String = "ROE_MOUSE_MOVE";
      
      public static const const_1609:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_215:String = "ROE_MOUSE_CLICK";
      
      public static const const_432:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1760:Boolean;
      
      private var var_1757:Boolean;
      
      private var var_1759:Boolean;
      
      private var var_1754:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1759 = param4;
         var_1754 = param5;
         var_1760 = param6;
         var_1757 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1757;
      }
      
      public function get altKey() : Boolean
      {
         return var_1759;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1754;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1760;
      }
   }
}
