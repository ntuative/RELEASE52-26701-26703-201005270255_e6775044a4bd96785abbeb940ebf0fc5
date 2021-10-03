package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_704:int = 2;
      
      public static const const_901:int = 6;
      
      public static const const_656:int = 1;
      
      public static const const_529:int = 3;
      
      public static const const_975:int = 4;
      
      public static const const_620:int = 5;
       
      
      private var var_1993:String;
      
      private var var_1121:int;
      
      private var var_1992:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1121 = param2;
         var_1992 = param3;
         var_1993 = param4;
      }
      
      public function get time() : String
      {
         return var_1993;
      }
      
      public function get senderId() : int
      {
         return var_1121;
      }
      
      public function get messageText() : String
      {
         return var_1992;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
