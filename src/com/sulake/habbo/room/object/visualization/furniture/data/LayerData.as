package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_472:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_424:int = 0;
      
      public static const const_1024:int = 2;
      
      public static const const_873:int = 1;
      
      public static const const_636:Boolean = false;
      
      public static const const_644:String = "";
      
      public static const const_452:int = 0;
      
      public static const const_381:int = 0;
      
      public static const const_428:int = 0;
       
      
      private var var_2215:int = 0;
      
      private var var_1727:String = "";
      
      private var var_1450:int = 0;
      
      private var var_2212:int = 0;
      
      private var var_2214:Number = 0;
      
      private var var_1981:int = 255;
      
      private var var_2213:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2215;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1450 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2214;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2212 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2215 = param1;
      }
      
      public function get tag() : String
      {
         return var_1727;
      }
      
      public function get alpha() : int
      {
         return var_1981;
      }
      
      public function get ink() : int
      {
         return var_1450;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2214 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2212;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2213 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2213;
      }
      
      public function set tag(param1:String) : void
      {
         var_1727 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1981 = param1;
      }
   }
}
