package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_602:String;
      
      private var _id:int;
      
      private var var_2265:String = "";
      
      private var var_2266:int;
      
      private var var_2267:String;
      
      private var var_1915:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2266 = parseInt(param1.@pattern);
         var_602 = String(param1.@gender);
         var_1915 = Boolean(parseInt(param1.@colorable));
         var_2265 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2265;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1915;
      }
      
      public function get gender() : String
      {
         return var_602;
      }
      
      public function get patternId() : int
      {
         return var_2266;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2267;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2267 = param1;
      }
   }
}
