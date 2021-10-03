package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_555:String = "RWUAM_RESPECT_USER";
      
      public static const const_557:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_607:String = "RWUAM_START_TRADING";
      
      public static const const_689:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_720:String = "RWUAM_WHISPER_USER";
      
      public static const const_588:String = "RWUAM_IGNORE_USER";
      
      public static const const_492:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_583:String = "RWUAM_BAN_USER";
      
      public static const const_608:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_488:String = "RWUAM_KICK_USER";
      
      public static const const_695:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_709:String = " RWUAM_RESPECT_PET";
      
      public static const const_438:String = "RWUAM_KICK_BOT";
      
      public static const const_1425:String = "RWUAM_TRAIN_PET";
      
      public static const const_577:String = "RWUAM_PICKUP_PET";
      
      public static const const_648:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_643:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
