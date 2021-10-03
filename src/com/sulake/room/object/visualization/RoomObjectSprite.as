package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1261:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1880:Boolean = false;
      
      private var var_2210:String = "normal";
      
      private var var_1152:String = "";
      
      private var _instanceId:int = 0;
      
      private var var_361:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1981:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1063:Boolean = false;
      
      private var var_1064:Boolean = false;
      
      private var var_1879:Boolean = false;
      
      private var _offset:Point;
      
      private var var_2209:Boolean = true;
      
      private var var_1011:Number = 0;
      
      private var _width:int = 0;
      
      private var var_1727:String = "";
      
      private var var_796:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
         _instanceId = var_1261++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_1064 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1879 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_796 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_2210 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1727 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1152 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1880;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1011;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1981;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_2209 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_361;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1880 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_1063;
      }
      
      public function get flipV() : Boolean
      {
         return var_1064;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1879;
      }
      
      public function get blendMode() : String
      {
         return var_2210;
      }
      
      public function get instanceId() : int
      {
         return _instanceId;
      }
      
      public function get tag() : String
      {
         return var_1727;
      }
      
      public function get assetName() : String
      {
         return var_1152;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1011 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_2209;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1981 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_796 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_361 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_796;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_1063 = param1;
         ++_updateID;
      }
   }
}
