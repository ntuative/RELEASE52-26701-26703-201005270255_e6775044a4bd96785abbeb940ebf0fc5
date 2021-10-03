package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_112:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1730:int;
      
      private var var_391:int;
      
      private var var_706:RoomData;
      
      private var var_2115:int;
      
      private var _ownerName:String;
      
      private var var_2134:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_391 = param1.readInteger();
         var_1730 = param1.readInteger();
         var_2134 = param1.readBoolean();
         var_2115 = param1.readInteger();
         _ownerName = param1.readString();
         var_112 = new RoomData(param1);
         var_706 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1730;
      }
      
      public function get event() : RoomData
      {
         return var_706;
      }
      
      public function get room() : RoomData
      {
         return var_112;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_112 != null)
         {
            var_112.dispose();
            var_112 = null;
         }
         if(var_706 != null)
         {
            var_706.dispose();
            var_706 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get ownerId() : int
      {
         return var_2115;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2134;
      }
   }
}
