package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_84:Number = 0;
      
      private var _data:String = "";
      
      private var var_1578:int = 0;
      
      private var var_35:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1790:Boolean = false;
      
      private var var_2407:String = "";
      
      private var _id:int = 0;
      
      private var var_205:Boolean = false;
      
      private var var_225:String = "";
      
      private var var_1792:int = 0;
      
      private var var_1791:int = 0;
      
      private var var_1762:int = 0;
      
      private var var_1756:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1790 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_205)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1790;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_205)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_225;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_205)
         {
            var_1762 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_205)
         {
            var_1792 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_205)
         {
            var_1791 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_205)
         {
            var_225 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_205)
         {
            var_1756 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_205)
         {
            var_35 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1762;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_205)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1792;
      }
      
      public function get wallY() : Number
      {
         return var_1791;
      }
      
      public function get localY() : Number
      {
         return var_1756;
      }
      
      public function setReadOnly() : void
      {
         var_205 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_205)
         {
            var_84 = param1;
         }
      }
   }
}
