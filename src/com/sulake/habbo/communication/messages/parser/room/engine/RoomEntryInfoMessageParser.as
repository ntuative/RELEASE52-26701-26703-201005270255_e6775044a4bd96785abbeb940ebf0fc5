package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1661:int;
      
      private var var_392:Boolean;
      
      private var var_1662:Boolean;
      
      private var var_794:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1662 = param1.readBoolean();
         if(var_1662)
         {
            var_1661 = param1.readInteger();
            var_392 = param1.readBoolean();
         }
         else
         {
            var_794 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_794 != null)
         {
            var_794.dispose();
            var_794 = null;
         }
         return true;
      }
      
      public function get method_4() : int
      {
         return var_1661;
      }
      
      public function get owner() : Boolean
      {
         return var_392;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1662;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_794;
      }
   }
}
