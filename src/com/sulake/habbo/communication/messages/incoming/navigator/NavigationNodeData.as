package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1318:int;
      
      private var var_1570:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1318 = param1;
         var_1570 = param2;
         Logger.log("READ NODE: " + var_1318 + ", " + var_1570);
      }
      
      public function get nodeName() : String
      {
         return var_1570;
      }
      
      public function get nodeId() : int
      {
         return var_1318;
      }
   }
}
