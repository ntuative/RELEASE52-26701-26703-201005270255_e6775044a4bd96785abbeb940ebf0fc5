package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_434:int;
      
      private var var_170:String;
      
      private var var_212:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_170 = param1;
         var_212 = param2;
         var_434 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_212.text = var_170.substring(0,param1) + "...";
         return var_212.textWidth > var_434;
      }
   }
}
