package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_74:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_225:Vector3d = null;
      
      private var var_2005:int = 0;
      
      private var var_2006:String = null;
      
      private var _category:int = 0;
      
      private var var_2007:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2007 = param3;
         var_74 = new Vector3d();
         var_74.assign(param4);
         var_225 = new Vector3d();
         var_225.assign(param5);
         var_2005 = param6;
         var_2006 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_74;
      }
      
      public function get typeId() : int
      {
         return var_2005;
      }
      
      public function get dir() : Vector3d
      {
         return var_225;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2006;
      }
      
      public function get operation() : String
      {
         return var_2007;
      }
      
      public function dispose() : void
      {
         var_74 = null;
         var_225 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
