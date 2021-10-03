package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_754:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_549:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_267:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1480:Point;
      
      private var var_1479:Rectangle;
      
      private var var_147:Number = 0.0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0.0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1479 = param2;
         var_1480 = param3;
         var_147 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1479 != null)
         {
            return var_1479.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_147;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1480 != null)
         {
            return var_1480.clone();
         }
         return null;
      }
   }
}
