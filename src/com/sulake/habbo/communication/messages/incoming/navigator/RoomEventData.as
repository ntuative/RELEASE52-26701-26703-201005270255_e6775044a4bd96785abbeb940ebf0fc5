package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2013:String;
      
      private var var_391:int;
      
      private var var_2243:String;
      
      private var var_2242:String;
      
      private var var_2244:int;
      
      private var var_2246:String;
      
      private var var_2245:int;
      
      private var var_657:Array;
      
      private var var_1010:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_657 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1010 = false;
            return;
         }
         this.var_1010 = true;
         var_2244 = int(_loc2_);
         var_2243 = param1.readString();
         var_391 = int(param1.readString());
         var_2245 = param1.readInteger();
         var_2013 = param1.readString();
         var_2242 = param1.readString();
         var_2246 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_657.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2245;
      }
      
      public function get eventName() : String
      {
         return var_2013;
      }
      
      public function get eventDescription() : String
      {
         return var_2242;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2243;
      }
      
      public function get tags() : Array
      {
         return var_657;
      }
      
      public function get creationTime() : String
      {
         return var_2246;
      }
      
      public function get exists() : Boolean
      {
         return var_1010;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2244;
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
         this.var_657 = null;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
   }
}
