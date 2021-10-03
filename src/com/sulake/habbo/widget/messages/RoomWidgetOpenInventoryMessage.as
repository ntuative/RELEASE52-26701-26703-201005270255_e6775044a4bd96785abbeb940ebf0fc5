package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_921:String = "inventory_badges";
      
      public static const const_1195:String = "inventory_clothes";
      
      public static const const_1368:String = "inventory_furniture";
      
      public static const const_615:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_981:String = "inventory_effects";
       
      
      private var var_1823:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_615);
         var_1823 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1823;
      }
   }
}
