package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_736:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_1084:int;
      
      private var _color:uint;
      
      private var var_1714:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_736);
         _color = param1;
         var_1084 = param2;
         var_1714 = param3;
      }
      
      public function get brightness() : int
      {
         return var_1084;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_1714;
      }
   }
}
