package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2142:String;
      
      private var var_303:String;
      
      private var var_602:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_303 = param1;
         var_602 = param2;
         var_2142 = param3;
      }
      
      public function get race() : String
      {
         return var_2142;
      }
      
      public function get figure() : String
      {
         return var_303;
      }
      
      public function get gender() : String
      {
         return var_602;
      }
   }
}
