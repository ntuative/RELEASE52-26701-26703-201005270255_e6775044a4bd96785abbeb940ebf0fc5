package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1893:int;
      
      private var var_1891:int = 0;
      
      private var var_1895:String;
      
      private var var_1892:int;
      
      private var var_1894:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1893 = param1;
         var_1892 = param2;
         var_1894 = param3;
         var_1895 = param4;
      }
      
      public function get length() : int
      {
         return var_1892;
      }
      
      public function get name() : String
      {
         return var_1894;
      }
      
      public function get creator() : String
      {
         return var_1895;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1891;
      }
      
      public function get id() : int
      {
         return var_1893;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1891 = param1;
      }
   }
}
