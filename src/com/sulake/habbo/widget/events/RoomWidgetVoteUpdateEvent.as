package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_121:String = "RWPUE_VOTE_RESULT";
      
      public static const const_143:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1316:int;
      
      private var var_1014:String;
      
      private var var_714:Array;
      
      private var var_1048:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1014 = param2;
         var_1048 = param3;
         var_714 = param4;
         if(var_714 == null)
         {
            var_714 = [];
         }
         var_1316 = param5;
      }
      
      public function get votes() : Array
      {
         return var_714.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1316;
      }
      
      public function get question() : String
      {
         return var_1014;
      }
      
      public function get choices() : Array
      {
         return var_1048.slice();
      }
   }
}
