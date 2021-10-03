package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_673:String;
      
      private var var_2256:int;
      
      private var var_1561:Boolean;
      
      private var _roomId:int;
      
      private var var_2257:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1561 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_673 = param1.readString();
         var_2257 = param1.readInteger();
         var_2256 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1561;
      }
      
      public function get roomName() : String
      {
         return var_673;
      }
      
      public function get enterMinute() : int
      {
         return var_2256;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2257;
      }
   }
}
