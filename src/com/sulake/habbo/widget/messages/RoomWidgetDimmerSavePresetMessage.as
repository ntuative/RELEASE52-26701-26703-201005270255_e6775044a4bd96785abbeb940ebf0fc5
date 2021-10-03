package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_631:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1676:int;
      
      private var var_1674:int;
      
      private var var_2163:Boolean;
      
      private var var_1084:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_631);
         var_1674 = param1;
         var_1676 = param2;
         _color = param3;
         var_1084 = param4;
         var_2163 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1676;
      }
      
      public function get presetNumber() : int
      {
         return var_1674;
      }
      
      public function get brightness() : int
      {
         return var_1084;
      }
      
      public function get apply() : Boolean
      {
         return var_2163;
      }
   }
}
