package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1075:int;
      
      private var var_1329:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1075 = param1;
         var_1329 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1075;
      }
      
      public function get itemName() : String
      {
         return var_1329;
      }
   }
}
