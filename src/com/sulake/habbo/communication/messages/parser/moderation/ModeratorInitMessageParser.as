package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1650:Boolean;
      
      private var var_1424:Array;
      
      private var var_1655:Boolean;
      
      private var var_1654:Boolean;
      
      private var var_1652:Boolean;
      
      private var var_158:Array;
      
      private var var_1656:Boolean;
      
      private var var_1653:Boolean;
      
      private var var_1425:Array;
      
      private var var_1649:Boolean;
      
      private var var_1651:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1651;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1650;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1655;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1656;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1653;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1424;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_158 = [];
         var_1424 = [];
         _roomMessageTemplates = [];
         var_1425 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_158.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1424.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1425.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1656 = param1.readBoolean();
         var_1652 = param1.readBoolean();
         var_1655 = param1.readBoolean();
         var_1654 = param1.readBoolean();
         var_1651 = param1.readBoolean();
         var_1653 = param1.readBoolean();
         var_1650 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1649 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1654;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1425;
      }
      
      public function get issues() : Array
      {
         return var_158;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1649;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1652;
      }
   }
}
