package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_133:int = 0;
      
      public static const const_134:int = 1;
      
      public static const const_109:int = 2;
      
      public static const const_729:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1395:int = 0;
      
      private var var_1678:String = "";
      
      private var var_212:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_212 = param2;
         var_1395 = param3;
         var_1678 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1678;
      }
      
      public function get chatType() : int
      {
         return var_1395;
      }
      
      public function get text() : String
      {
         return var_212;
      }
   }
}
