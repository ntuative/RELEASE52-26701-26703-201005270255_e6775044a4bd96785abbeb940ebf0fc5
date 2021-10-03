package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1730:int;
      
      private var var_2067:String;
      
      private var var_2069:int;
      
      private var var_2066:int;
      
      private var var_706:Boolean;
      
      private var var_2033:Boolean;
      
      private var var_391:int;
      
      private var var_1222:String;
      
      private var var_2025:int;
      
      private var var_1223:int;
      
      private var _ownerName:String;
      
      private var var_673:String;
      
      private var var_2068:int;
      
      private var var_2070:RoomThumbnailData;
      
      private var var_2071:Boolean;
      
      private var var_657:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_657 = new Array();
         super();
         var_391 = param1.readInteger();
         var_706 = param1.readBoolean();
         var_673 = param1.readString();
         _ownerName = param1.readString();
         var_2025 = param1.readInteger();
         var_1730 = param1.readInteger();
         var_2068 = param1.readInteger();
         var_1222 = param1.readString();
         var_2069 = param1.readInteger();
         var_2071 = param1.readBoolean();
         var_2066 = param1.readInteger();
         var_1223 = param1.readInteger();
         var_2067 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_657.push(_loc4_);
            _loc3_++;
         }
         var_2070 = new RoomThumbnailData(param1);
         var_2033 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2068;
      }
      
      public function get roomName() : String
      {
         return var_673;
      }
      
      public function get userCount() : int
      {
         return var_1730;
      }
      
      public function get score() : int
      {
         return var_2066;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2067;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2071;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get allowPets() : Boolean
      {
         return var_2033;
      }
      
      public function get event() : Boolean
      {
         return var_706;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_657 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1223;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2069;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2070;
      }
      
      public function get doorMode() : int
      {
         return var_2025;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get description() : String
      {
         return var_1222;
      }
   }
}
