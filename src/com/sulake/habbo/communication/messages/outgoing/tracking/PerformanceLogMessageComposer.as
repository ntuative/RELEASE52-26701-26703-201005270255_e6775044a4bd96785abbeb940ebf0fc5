package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1061:int = 0;
      
      private var var_1340:int = 0;
      
      private var var_1974:String = "";
      
      private var var_1062:int = 0;
      
      private var var_2091:String = "";
      
      private var var_2092:int = 0;
      
      private var var_1534:String = "";
      
      private var var_2089:int = 0;
      
      private var var_2090:int = 0;
      
      private var var_1973:String = "";
      
      private var var_2088:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2089 = param1;
         var_1973 = param2;
         var_1534 = param3;
         var_1974 = param4;
         var_2091 = param5;
         if(param6)
         {
            var_1340 = 1;
         }
         else
         {
            var_1340 = 0;
         }
         var_2092 = param7;
         var_2090 = param8;
         var_1062 = param9;
         var_2088 = param10;
         var_1061 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2089,var_1973,var_1534,var_1974,var_2091,var_1340,var_2092,var_2090,var_1062,var_2088,var_1061];
      }
      
      public function dispose() : void
      {
      }
   }
}
