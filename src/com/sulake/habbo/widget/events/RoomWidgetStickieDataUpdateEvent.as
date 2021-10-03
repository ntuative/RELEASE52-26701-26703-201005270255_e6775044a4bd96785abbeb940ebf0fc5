package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_718:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_212:String;
      
      private var var_755:String;
      
      private var var_1565:String;
      
      private var var_162:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_162 = param2;
         var_1565 = param3;
         var_212 = param4;
         var_755 = param5;
         var_29 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1565;
      }
      
      public function get colorHex() : String
      {
         return var_755;
      }
      
      public function get text() : String
      {
         return var_212;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
