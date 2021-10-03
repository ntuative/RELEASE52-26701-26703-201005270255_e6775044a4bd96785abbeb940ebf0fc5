package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1289:int = 4;
      
      public static const const_721:int = 3;
      
      public static const const_669:int = 2;
      
      public static const const_918:int = 1;
       
      
      private var var_1728:String;
      
      private var _disposed:Boolean;
      
      private var var_1730:int;
      
      private var var_1726:Boolean;
      
      private var var_887:String;
      
      private var var_813:PublicRoomData;
      
      private var var_1725:int;
      
      private var _index:int;
      
      private var var_1724:String;
      
      private var _type:int;
      
      private var var_1727:String;
      
      private var var_814:GuestRoomData;
      
      private var var_1729:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1728 = param1.readString();
         var_1729 = param1.readString();
         var_1726 = param1.readInteger() == 1;
         var_1724 = param1.readString();
         var_887 = param1.readString();
         var_1725 = param1.readInteger();
         var_1730 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_918)
         {
            var_1727 = param1.readString();
         }
         else if(_type == const_721)
         {
            var_813 = new PublicRoomData(param1);
         }
         else if(_type == const_669)
         {
            var_814 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1725;
      }
      
      public function get popupCaption() : String
      {
         return var_1728;
      }
      
      public function get userCount() : int
      {
         return var_1730;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get method_2() : Boolean
      {
         return var_1726;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_918)
         {
            return 0;
         }
         if(this.type == const_669)
         {
            return this.var_814.maxUserCount;
         }
         if(this.type == const_721)
         {
            return this.var_813.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1729;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_814 != null)
         {
            this.var_814.dispose();
            this.var_814 = null;
         }
         if(this.var_813 != null)
         {
            this.var_813.dispose();
            this.var_813 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_814;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1724;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_813;
      }
      
      public function get picRef() : String
      {
         return var_887;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1727;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
