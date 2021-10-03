package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectWallMouseEvent extends RoomObjectMouseEvent
   {
       
      
      private var _direction:Number;
      
      private var var_1567:Vector3d = null;
      
      private var var_1569:Vector3d = null;
      
      private var var_1568:Vector3d = null;
      
      private var var_83:Number;
      
      private var _y:Number;
      
      public function RoomObjectWallMouseEvent(param1:String, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:IVector3d, param7:Number, param8:Number, param9:Number, param10:Boolean = false, param11:Boolean = false)
      {
         super(param1,param2,param3,param10,param11);
         var_1568 = new Vector3d();
         var_1568.assign(param4);
         var_1569 = new Vector3d();
         var_1569.assign(param5);
         var_1567 = new Vector3d();
         var_1567.assign(param6);
         var_83 = param7;
         _y = param8;
         _direction = param9;
      }
      
      public function get direction() : Number
      {
         return _direction;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get wallHeight() : IVector3d
      {
         return var_1567;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get wallWidth() : IVector3d
      {
         return var_1569;
      }
      
      public function get wallLocation() : IVector3d
      {
         return var_1568;
      }
   }
}
