package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1076:int = 80;
       
      
      private var var_465:Map;
      
      private var var_673:String = "";
      
      private var var_1163:Array;
      
      public function UserRegistry()
      {
         var_465 = new Map();
         var_1163 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_465.getValue(var_1163.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_673;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_465.getValue(param1) != null)
         {
            var_465.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_673);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_673 == "")
         {
            var_1163.push(param1);
         }
         var_465.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_465;
      }
      
      public function unregisterRoom() : void
      {
         var_673 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_465.length > const_1076)
         {
            _loc1_ = var_465.getKey(0);
            var_465.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_673 = param1;
         if(var_673 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
