package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_727:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_466:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_727);
         var_466 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_466;
      }
   }
}
