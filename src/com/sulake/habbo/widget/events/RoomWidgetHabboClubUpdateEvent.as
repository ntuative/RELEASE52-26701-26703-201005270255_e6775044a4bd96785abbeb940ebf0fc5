package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_236:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1845:Boolean = false;
      
      private var var_1848:int = 0;
      
      private var var_1849:int = 0;
      
      private var var_1846:int;
      
      private var var_1847:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_236,param6,param7);
         var_1847 = param1;
         var_1849 = param2;
         var_1848 = param3;
         var_1845 = param4;
         var_1846 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1846;
      }
      
      public function get pastPeriods() : int
      {
         return var_1848;
      }
      
      public function get periodsLeft() : int
      {
         return var_1849;
      }
      
      public function get daysLeft() : int
      {
         return var_1847;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1845;
      }
   }
}
