package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1844:int;
      
      private var var_1100:int;
      
      private var var_1843:int;
      
      private var var_1495:int;
      
      private var var_112:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1495 = param1.readInteger();
         var_1843 = param1.readInteger();
         var_1100 = param1.readInteger();
         var_1844 = param1.readInteger();
         var_112 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1495);
      }
      
      public function get chatRecordId() : int
      {
         return var_1844;
      }
      
      public function get reportedUserId() : int
      {
         return var_1100;
      }
      
      public function get callerUserId() : int
      {
         return var_1843;
      }
      
      public function get callId() : int
      {
         return var_1495;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_112;
      }
   }
}
