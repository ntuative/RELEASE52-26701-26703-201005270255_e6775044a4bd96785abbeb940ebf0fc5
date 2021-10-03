package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_303:String;
      
      private var var_1322:String;
      
      private var var_1321:String;
      
      private var var_1223:int;
      
      private var var_602:int;
      
      private var var_1320:String;
      
      private var _name:String;
      
      private var var_1191:Boolean;
      
      private var var_754:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_602 = param1.readInteger();
         this.var_754 = param1.readBoolean();
         this.var_1191 = param1.readBoolean();
         this.var_303 = param1.readString();
         this.var_1223 = param1.readInteger();
         this.var_1321 = param1.readString();
         this.var_1322 = param1.readString();
         this.var_1320 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_602;
      }
      
      public function get realName() : String
      {
         return var_1320;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1321;
      }
      
      public function get categoryId() : int
      {
         return var_1223;
      }
      
      public function get online() : Boolean
      {
         return var_754;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1191;
      }
      
      public function get lastAccess() : String
      {
         return var_1322;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_303;
      }
   }
}
