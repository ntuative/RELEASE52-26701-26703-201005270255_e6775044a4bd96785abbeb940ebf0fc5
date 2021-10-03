package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_156:int = 1;
      
      public static const const_1188:int = 3;
      
      public static const const_419:int = 2;
       
      
      private var var_2185:int;
      
      private var var_2004:int;
      
      private var var_2181:int;
      
      private var var_1709:int;
      
      private var var_35:int;
      
      private var var_391:int;
      
      private var var_1359:int;
      
      private var var_1660:int;
      
      private var var_1100:int;
      
      private var _roomResources:String;
      
      private var var_1844:int;
      
      private var var_2179:int;
      
      private var var_2184:String;
      
      private var var_2180:String;
      
      private var var_2182:int = 0;
      
      private var var_1379:String;
      
      private var _message:String;
      
      private var var_2024:int;
      
      private var var_2186:String;
      
      private var var_1223:int;
      
      private var var_673:String;
      
      private var var_2183:String;
      
      private var var_1566:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1100 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2182 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2179;
      }
      
      public function set roomName(param1:String) : void
      {
         var_673 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1844 = param1;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_673;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1709 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_35 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2004;
      }
      
      public function get priority() : int
      {
         return var_2185 + var_2182;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1660 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2180;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1566) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1223;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2179 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1359;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2184 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1844;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1709;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2183 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1379 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1660;
      }
      
      public function set priority(param1:int) : void
      {
         var_2185 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2004 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2184;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2181 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2180 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1379;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1359 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2181;
      }
      
      public function set flatId(param1:int) : void
      {
         var_391 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1223 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1566 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2024;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2186 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1566;
      }
      
      public function get reportedUserId() : int
      {
         return var_1100;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2183;
      }
      
      public function get reporterUserName() : String
      {
         return var_2186;
      }
   }
}
