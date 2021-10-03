package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_483:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_499:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_82:String = "RWPDUE_CONTENTS";
      
      public static const const_450:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_478:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_70:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_212:String;
      
      private var var_1817:BitmapData;
      
      private var var_162:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_162 = param2;
         var_212 = param3;
         var_29 = param4;
         var_1817 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1817;
      }
      
      public function get text() : String
      {
         return var_212;
      }
      
      public function get objectId() : int
      {
         return var_162;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
