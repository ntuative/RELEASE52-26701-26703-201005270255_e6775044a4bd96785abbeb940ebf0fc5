package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_698:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_698 = new ByteArray();
         var_698.writeShort(param1);
         var_698.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_698.position = 0;
         if(false)
         {
            _loc1_ = var_698.readShort();
            var_698.position = 0;
         }
         return _loc1_;
      }
   }
}
