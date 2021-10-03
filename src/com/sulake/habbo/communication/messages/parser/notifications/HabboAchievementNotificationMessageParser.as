package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_1642:int = 0;
      
      private var _type:int = 0;
      
      private var var_2097:String = "";
      
      private var var_1941:String = "";
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _type = param1.readInteger();
         var_1642 = param1.readInteger();
         var_1941 = param1.readString();
         var_2097 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get badgeID() : String
      {
         return var_1941;
      }
      
      public function get removedBadgeID() : String
      {
         return var_2097;
      }
      
      public function get level() : int
      {
         return var_1642;
      }
   }
}
