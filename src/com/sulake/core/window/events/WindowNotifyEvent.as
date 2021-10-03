package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1434:String = "WN_CREATED";
      
      public static const const_913:String = "WN_DISABLE";
      
      public static const const_1013:String = "WN_DEACTIVATED";
      
      public static const const_986:String = "WN_OPENED";
      
      public static const const_1036:String = "WN_CLOSED";
      
      public static const const_823:String = "WN_DESTROY";
      
      public static const const_1545:String = "WN_ARRANGED";
      
      public static const const_496:String = "WN_PARENT_RESIZED";
      
      public static const const_976:String = "WN_ENABLE";
      
      public static const const_955:String = "WN_RELOCATE";
      
      public static const const_988:String = "WN_FOCUS";
      
      public static const const_1041:String = "WN_PARENT_RELOCATED";
      
      public static const const_437:String = "WN_PARAM_UPDATED";
      
      public static const const_746:String = "WN_PARENT_ACTIVATED";
      
      public static const const_190:String = "WN_RESIZED";
      
      public static const const_870:String = "WN_CLOSE";
      
      public static const const_844:String = "WN_PARENT_REMOVED";
      
      public static const const_261:String = "WN_CHILD_RELOCATED";
      
      public static const const_684:String = "WN_ENABLED";
      
      public static const const_290:String = "WN_CHILD_RESIZED";
      
      public static const const_936:String = "WN_MINIMIZED";
      
      public static const const_649:String = "WN_DISABLED";
      
      public static const const_224:String = "WN_CHILD_ACTIVATED";
      
      public static const const_379:String = "WN_STATE_UPDATED";
      
      public static const const_626:String = "WN_UNSELECTED";
      
      public static const const_469:String = "WN_STYLE_UPDATED";
      
      public static const const_1518:String = "WN_UPDATE";
      
      public static const const_416:String = "WN_PARENT_ADDED";
      
      public static const const_665:String = "WN_RESIZE";
      
      public static const const_733:String = "WN_CHILD_REMOVED";
      
      public static const const_1622:String = "";
      
      public static const const_915:String = "WN_RESTORED";
      
      public static const const_309:String = "WN_SELECTED";
      
      public static const const_926:String = "WN_MINIMIZE";
      
      public static const const_904:String = "WN_FOCUSED";
      
      public static const const_1279:String = "WN_LOCK";
      
      public static const const_350:String = "WN_CHILD_ADDED";
      
      public static const const_855:String = "WN_UNFOCUSED";
      
      public static const const_429:String = "WN_RELOCATED";
      
      public static const const_978:String = "WN_DEACTIVATE";
      
      public static const const_1405:String = "WN_CRETAE";
      
      public static const const_925:String = "WN_RESTORE";
      
      public static const const_321:String = "WN_ACTVATED";
      
      public static const const_1194:String = "WN_LOCKED";
      
      public static const const_425:String = "WN_SELECT";
      
      public static const const_905:String = "WN_MAXIMIZE";
      
      public static const const_903:String = "WN_OPEN";
      
      public static const const_764:String = "WN_UNSELECT";
      
      public static const const_1672:String = "WN_ARRANGE";
      
      public static const const_1261:String = "WN_UNLOCKED";
      
      public static const const_1630:String = "WN_UPDATED";
      
      public static const const_996:String = "WN_ACTIVATE";
      
      public static const const_1222:String = "WN_UNLOCK";
      
      public static const const_1028:String = "WN_MAXIMIZED";
      
      public static const const_839:String = "WN_DESTROYED";
      
      public static const const_872:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1634,cancelable);
      }
   }
}
