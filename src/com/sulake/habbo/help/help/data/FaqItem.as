package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1228:int;
      
      private var var_1227:String;
      
      private var var_2010:String;
      
      private var _index:int;
      
      private var var_2009:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1228 = param1;
         var_2010 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1227;
      }
      
      public function get questionId() : int
      {
         return var_1228;
      }
      
      public function get questionText() : String
      {
         return var_2010;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1227 = param1;
         var_2009 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_2009;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
