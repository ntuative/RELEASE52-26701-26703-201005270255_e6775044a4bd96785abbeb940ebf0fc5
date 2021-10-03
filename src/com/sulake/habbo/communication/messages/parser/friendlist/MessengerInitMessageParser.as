package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2336:int;
      
      private var var_2332:int;
      
      private var var_91:Array;
      
      private var var_242:Array;
      
      private var var_2333:int;
      
      private var var_2334:int;
      
      private var var_2335:int;
      
      private var var_2337:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_91 = new Array();
         this.var_242 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2336;
      }
      
      public function get friends() : Array
      {
         return this.var_242;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2333;
      }
      
      public function get categories() : Array
      {
         return this.var_91;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2332;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2337;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2337 = param1.readInteger();
         this.var_2333 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_2335 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_91.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_242.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2332 = param1.readInteger();
         this.var_2334 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2335;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2334;
      }
   }
}
