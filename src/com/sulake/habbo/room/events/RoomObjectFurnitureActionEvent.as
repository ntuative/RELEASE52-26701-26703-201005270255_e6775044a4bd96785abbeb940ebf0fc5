package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_394:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const ROOM_OBJECT_STICKIE:String = "ROFCAE_STICKIE";
      
      public static const ROOM_OBJECT_JUKEBOX_DISPOSE:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_372:String = "ROFCAE_DICE_OFF";
      
      public static const const_421:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_409:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_393:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_439:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_484:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_480:String = "ROFCAE_SOUND_MACHINE_START";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
