package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2352:Boolean;
      
      private var var_2351:int;
      
      private var var_2349:Boolean;
      
      private var var_1564:String;
      
      private var var_1320:String;
      
      private var var_1902:int;
      
      private var var_2047:String;
      
      private var var_2350:String;
      
      private var var_2046:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1902 = param1.readInteger();
         this.var_1564 = param1.readString();
         this.var_2047 = param1.readString();
         this.var_2352 = param1.readBoolean();
         this.var_2349 = param1.readBoolean();
         param1.readString();
         this.var_2351 = param1.readInteger();
         this.var_2046 = param1.readString();
         this.var_2350 = param1.readString();
         this.var_1320 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1320;
      }
      
      public function get avatarName() : String
      {
         return this.var_1564;
      }
      
      public function get avatarId() : int
      {
         return this.var_1902;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2352;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2350;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2046;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2349;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2047;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2351;
      }
   }
}
