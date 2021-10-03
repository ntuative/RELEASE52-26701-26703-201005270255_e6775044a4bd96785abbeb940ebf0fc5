package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1886:int;
      
      private var var_1885:Boolean;
      
      private var var_1893:int;
      
      private var var_1419:String;
      
      private var var_1956:Boolean = false;
      
      private var var_1884:int;
      
      private var var_462:int;
      
      private var var_1075:String;
      
      private var var_1519:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1159:int;
      
      private var var_1887:Boolean;
      
      private var var_1957:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1886 = param1;
         var_1075 = param2;
         _objId = param3;
         var_1159 = param4;
         var_1419 = param5;
         var_1885 = param6;
         var_1887 = param7;
         var_1884 = param8;
         var_1519 = param9;
         var_1893 = param10;
         var_462 = -1;
      }
      
      public function get songId() : int
      {
         return var_1893;
      }
      
      public function get iconCallbackId() : int
      {
         return var_462;
      }
      
      public function get expiryTime() : int
      {
         return var_1884;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1957 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1956 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_462 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1887;
      }
      
      public function get slotId() : String
      {
         return var_1519;
      }
      
      public function get classId() : int
      {
         return var_1159;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1885;
      }
      
      public function get stuffData() : String
      {
         return var_1419;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1886;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1956;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1957;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1075;
      }
   }
}
