package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.moderation.ModeratorRoomInfoMessageParser;
   
   public class ModeratorRoomInfoEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function ModeratorRoomInfoEvent(param1:Function)
      {
         super(param1,ModeratorRoomInfoMessageParser);
      }
      
      public function getParser() : ModeratorRoomInfoMessageParser
      {
         return var_7 as ModeratorRoomInfoMessageParser;
      }
   }
}
