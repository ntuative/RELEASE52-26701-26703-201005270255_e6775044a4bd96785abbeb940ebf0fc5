package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_935:LegacyWallGeometry = null;
      
      private var var_639:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_638:TileHeightMap = null;
      
      private var var_2197:String = null;
      
      private var _roomId:int = 0;
      
      private var var_640:SelectedRoomObjectData = null;
      
      private var var_934:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_935 = new LegacyWallGeometry();
         var_934 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_639 != null)
         {
            var_639.dispose();
         }
         var_639 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_638 != null)
         {
            var_638.dispose();
         }
         var_638 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2197 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_935;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_640;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_934;
      }
      
      public function dispose() : void
      {
         if(var_638 != null)
         {
            var_638.dispose();
            var_638 = null;
         }
         if(var_935 != null)
         {
            var_935.dispose();
            var_935 = null;
         }
         if(var_934 != null)
         {
            var_934.dispose();
            var_934 = null;
         }
         if(var_639 != null)
         {
            var_639.dispose();
            var_639 = null;
         }
         if(var_640 != null)
         {
            var_640.dispose();
            var_640 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_638;
      }
      
      public function get worldType() : String
      {
         return var_2197;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_640 != null)
         {
            var_640.dispose();
         }
         var_640 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_639;
      }
   }
}
