package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1493:String = "e";
      
      public static const const_1595:String = "i";
      
      public static const const_1492:String = "s";
       
      
      private var _id:int;
      
      private var var_1986:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1985:int;
      
      private var var_1344:Array;
      
      private var var_1982:int;
      
      private var var_1983:int;
      
      private var var_1984:int;
      
      private var _name:String;
      
      private var var_1987:int;
      
      private var var_1222:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1985 = param4;
         var_1987 = param5;
         var_1982 = param6;
         var_1983 = param7;
         var_1984 = param8;
         var_1344 = param9;
         _title = param10;
         var_1222 = param11;
         var_1986 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_1983;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1984;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_1986;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_1987;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1985;
      }
      
      public function get tileSizeX() : int
      {
         return var_1982;
      }
      
      public function get colours() : Array
      {
         return var_1344;
      }
      
      public function get description() : String
      {
         return var_1222;
      }
   }
}
