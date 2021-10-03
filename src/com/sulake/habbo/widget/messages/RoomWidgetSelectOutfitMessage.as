package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_993:String = "select_outfit";
       
      
      private var var_1850:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_993);
         var_1850 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1850;
      }
   }
}
