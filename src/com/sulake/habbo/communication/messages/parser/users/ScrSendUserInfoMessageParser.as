package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1283:int = 2;
      
      public static const const_1532:int = 1;
       
      
      private var var_2146:int;
      
      private var var_2149:int;
      
      private var var_2086:Boolean;
      
      private var var_2148:int;
      
      private var var_1383:String;
      
      private var var_2147:Boolean;
      
      private var var_2087:int;
      
      private var var_2150:int;
      
      private var var_2085:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2149;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2086;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2150;
      }
      
      public function get memberPeriods() : int
      {
         return var_2148;
      }
      
      public function get productName() : String
      {
         return var_1383;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2147;
      }
      
      public function get responseType() : int
      {
         return var_2146;
      }
      
      public function get pastClubDays() : int
      {
         return var_2085;
      }
      
      public function get pastVipDays() : int
      {
         return var_2087;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1383 = param1.readString();
         var_2149 = param1.readInteger();
         var_2148 = param1.readInteger();
         var_2150 = param1.readInteger();
         var_2146 = param1.readInteger();
         var_2147 = param1.readBoolean();
         var_2086 = param1.readBoolean();
         var_2085 = param1.readInteger();
         var_2087 = param1.readInteger();
         return true;
      }
   }
}
