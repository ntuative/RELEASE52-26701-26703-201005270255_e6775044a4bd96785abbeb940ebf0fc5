package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1174:Boolean;
      
      private var var_2287:String;
      
      private var _frames:XMLList;
      
      private var var_1008:String = "-1";
      
      private var var_658:String;
      
      private var var_180:int = 120;
      
      private var var_1400:String = "-1";
      
      private var var_1399:String;
      
      private var var_2286:Boolean;
      
      private var var_1627:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1174 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_2286 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_180 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1399 = param1.@namebase;
         }
         else
         {
            var_1399 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1008 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1400 = param1.@nextState;
         }
         else
         {
            var_1400 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1627 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_2287 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_658 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1008 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_2286;
      }
      
      public function get defaultState() : String
      {
         return var_1627;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1627 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_2287;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_180;
      }
      
      public function get loop() : Boolean
      {
         return var_1174;
      }
      
      public function get nextState() : String
      {
         return var_1400;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_658;
      }
      
      public function get stateOver() : String
      {
         return var_1008;
      }
      
      public function get nameBase() : String
      {
         return var_1399;
      }
   }
}
