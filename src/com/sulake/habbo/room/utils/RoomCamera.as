package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_369:Number = 0.5;
      
      private static const const_822:int = 3;
      
      private static const const_1171:Number = 1;
       
      
      private var var_2277:Boolean = false;
      
      private var var_2269:Boolean = false;
      
      private var var_1120:int = 0;
      
      private var var_286:Vector3d = null;
      
      private var var_2272:int = 0;
      
      private var var_2268:int = 0;
      
      private var var_2273:Boolean = false;
      
      private var var_2270:int = -2;
      
      private var var_2274:Boolean = false;
      
      private var var_2276:int = 0;
      
      private var var_2271:int = -1;
      
      private var var_451:Vector3d = null;
      
      private var var_2275:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2272;
      }
      
      public function get targetId() : int
      {
         return var_2271;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2276 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2272 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2277 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2271 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2269 = param1;
      }
      
      public function dispose() : void
      {
         var_451 = null;
         var_286 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_451 == null)
         {
            var_451 = new Vector3d();
         }
         var_451.assign(param1);
         var_1120 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2270;
      }
      
      public function get screenHt() : int
      {
         return var_2275;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2268 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_286;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2275 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2276;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2277;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2269;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_451 != null && var_286 != null)
         {
            ++var_1120;
            _loc2_ = Vector3d.dif(var_451,var_286);
            if(_loc2_.length <= const_369)
            {
               var_286 = var_451;
               var_451 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_369 * (const_822 + 1))
               {
                  _loc2_.mul(const_369);
               }
               else if(var_1120 <= const_822)
               {
                  _loc2_.mul(const_369);
               }
               else
               {
                  _loc2_.mul(const_1171);
               }
               var_286 = Vector3d.sum(var_286,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2273 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2268;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2274 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2270 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_286 != null)
         {
            return;
         }
         var_286 = new Vector3d();
         var_286.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2273;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2274;
      }
   }
}
