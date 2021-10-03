package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_121:String = "RSPE_VOTE_RESULT";
      
      public static const const_143:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1316:int = 0;
      
      private var var_1014:String = "";
      
      private var var_714:Array;
      
      private var var_1048:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1048 = [];
         var_714 = [];
         super(param1,param2,param7,param8);
         var_1014 = param3;
         var_1048 = param4;
         var_714 = param5;
         if(var_714 == null)
         {
            var_714 = [];
         }
         var_1316 = param6;
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
