package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1514:int = 9;
      
      public static const const_1487:int = 4;
      
      public static const const_1603:int = 1;
      
      public static const const_1412:int = 10;
      
      public static const const_1602:int = 2;
      
      public static const const_1424:int = 7;
      
      public static const const_1397:int = 11;
      
      public static const const_1659:int = 3;
      
      public static const const_1333:int = 8;
      
      public static const const_1325:int = 5;
      
      public static const const_1643:int = 6;
      
      public static const const_1338:int = 12;
       
      
      private var var_1921:String;
      
      private var _roomId:int;
      
      private var var_1151:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1921;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1151 = param1.readInteger();
         var_1921 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1151;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
