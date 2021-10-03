package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1757:Boolean = false;
      
      private var var_1759:Boolean = false;
      
      private var var_1745:String = "";
      
      private var _type:String = "";
      
      private var var_1760:Boolean = false;
      
      private var var_1762:Number = 0;
      
      private var var_1761:Number = 0;
      
      private var var_1758:Number = 0;
      
      private var var_1755:String = "";
      
      private var var_1756:Number = 0;
      
      private var var_1754:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1755 = param2;
         var_1745 = param3;
         var_1761 = param4;
         var_1758 = param5;
         var_1762 = param6;
         var_1756 = param7;
         var_1754 = param8;
         var_1759 = param9;
         var_1760 = param10;
         var_1757 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1754;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1757;
      }
      
      public function get localX() : Number
      {
         return var_1762;
      }
      
      public function get localY() : Number
      {
         return var_1756;
      }
      
      public function get canvasId() : String
      {
         return var_1755;
      }
      
      public function get altKey() : Boolean
      {
         return var_1759;
      }
      
      public function get spriteTag() : String
      {
         return var_1745;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1761;
      }
      
      public function get screenY() : Number
      {
         return var_1758;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1760;
      }
   }
}
