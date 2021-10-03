package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_456:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_528:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_755:String;
      
      private var var_162:int;
      
      private var var_212:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_162 = param2;
         var_212 = param3;
         var_755 = param4;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get text() : String
      {
         return var_212;
      }
      
      public function get colorHex() : String
      {
         return var_755;
      }
   }
}
