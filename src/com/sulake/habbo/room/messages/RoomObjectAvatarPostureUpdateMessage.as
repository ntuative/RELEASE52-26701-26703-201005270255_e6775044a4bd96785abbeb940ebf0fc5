package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2098:String;
      
      private var var_801:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2098 = param1;
         var_801 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2098;
      }
      
      public function get parameter() : String
      {
         return var_801;
      }
   }
}
