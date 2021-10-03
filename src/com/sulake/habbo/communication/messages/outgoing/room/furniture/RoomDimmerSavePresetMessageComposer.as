package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1676:int;
      
      private var var_1674:int;
      
      private var var_1673:Boolean;
      
      private var var_1675:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1672:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1674 = param1;
         var_1676 = param2;
         var_1675 = param3;
         var_1672 = param4;
         var_1673 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1674,var_1676,var_1675,var_1672,int(var_1673)];
      }
      
      public function dispose() : void
      {
      }
   }
}
