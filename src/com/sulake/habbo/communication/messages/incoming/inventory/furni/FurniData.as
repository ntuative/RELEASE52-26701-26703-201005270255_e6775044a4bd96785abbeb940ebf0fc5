package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1419:String;
      
      private var var_1075:String;
      
      private var var_1883:Boolean;
      
      private var var_1578:int;
      
      private var var_1886:int;
      
      private var var_1888:Boolean;
      
      private var var_1519:String = "";
      
      private var var_1885:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1159:int;
      
      private var var_1887:Boolean;
      
      private var var_1893:int = -1;
      
      private var var_1884:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1886 = param1;
         var_1075 = param2;
         _objId = param3;
         var_1159 = param4;
         _category = param5;
         var_1419 = param6;
         var_1883 = param7;
         var_1885 = param8;
         var_1887 = param9;
         var_1888 = param10;
         var_1884 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1519;
      }
      
      public function get extra() : int
      {
         return var_1578;
      }
      
      public function get classId() : int
      {
         return var_1159;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1888;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1883;
      }
      
      public function get stripId() : int
      {
         return var_1886;
      }
      
      public function get stuffData() : String
      {
         return var_1419;
      }
      
      public function get songId() : int
      {
         return var_1893;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1519 = param1;
         var_1578 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1075;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1884;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1887;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1885;
      }
   }
}
