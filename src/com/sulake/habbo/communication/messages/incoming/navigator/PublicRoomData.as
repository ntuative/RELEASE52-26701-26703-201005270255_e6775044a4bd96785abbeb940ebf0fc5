package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2004:int;
      
      private var var_2002:String;
      
      private var var_1709:int;
      
      private var _disposed:Boolean;
      
      private var var_2003:int;
      
      private var var_1708:String;
      
      private var var_1318:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1708 = param1.readString();
         var_2004 = param1.readInteger();
         var_1709 = param1.readInteger();
         var_2002 = param1.readString();
         var_2003 = param1.readInteger();
         var_1318 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2003;
      }
      
      public function get worldId() : int
      {
         return var_1709;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1708;
      }
      
      public function get unitPort() : int
      {
         return var_2004;
      }
      
      public function get castLibs() : String
      {
         return var_2002;
      }
      
      public function get nodeId() : int
      {
         return var_1318;
      }
   }
}
