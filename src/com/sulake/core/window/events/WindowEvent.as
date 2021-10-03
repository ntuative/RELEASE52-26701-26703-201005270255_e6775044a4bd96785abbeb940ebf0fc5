package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_271:String = "WE_CHILD_RESIZED";
      
      public static const const_1391:String = "WE_CLOSE";
      
      public static const const_1373:String = "WE_DESTROY";
      
      public static const const_132:String = "WE_CHANGE";
      
      public static const const_1348:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1621:String = "WE_PARENT_RESIZE";
      
      public static const const_100:String = "WE_UPDATE";
      
      public static const const_1341:String = "WE_MAXIMIZE";
      
      public static const const_481:String = "WE_DESTROYED";
      
      public static const const_959:String = "WE_UNSELECT";
      
      public static const const_1275:String = "WE_MAXIMIZED";
      
      public static const const_1661:String = "WE_UNLOCKED";
      
      public static const const_464:String = "WE_CHILD_REMOVED";
      
      public static const const_180:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1361:String = "WE_ACTIVATE";
      
      public static const const_273:String = "WE_ENABLED";
      
      public static const const_412:String = "WE_CHILD_RELOCATED";
      
      public static const const_1250:String = "WE_CREATE";
      
      public static const const_686:String = "WE_SELECT";
      
      public static const const_189:String = "";
      
      public static const const_1505:String = "WE_LOCKED";
      
      public static const const_1566:String = "WE_PARENT_RELOCATE";
      
      public static const const_1527:String = "WE_CHILD_REMOVE";
      
      public static const const_1682:String = "WE_CHILD_RELOCATE";
      
      public static const const_1503:String = "WE_LOCK";
      
      public static const const_235:String = "WE_FOCUSED";
      
      public static const const_634:String = "WE_UNSELECTED";
      
      public static const const_977:String = "WE_DEACTIVATED";
      
      public static const const_1345:String = "WE_MINIMIZED";
      
      public static const const_1666:String = "WE_ARRANGED";
      
      public static const const_1653:String = "WE_UNLOCK";
      
      public static const const_1608:String = "WE_ATTACH";
      
      public static const const_1267:String = "WE_OPEN";
      
      public static const const_1382:String = "WE_RESTORE";
      
      public static const const_1690:String = "WE_PARENT_RELOCATED";
      
      public static const const_1334:String = "WE_RELOCATE";
      
      public static const const_1579:String = "WE_CHILD_RESIZE";
      
      public static const const_1538:String = "WE_ARRANGE";
      
      public static const const_1400:String = "WE_OPENED";
      
      public static const const_1430:String = "WE_CLOSED";
      
      public static const const_1607:String = "WE_DETACHED";
      
      public static const const_1533:String = "WE_UPDATED";
      
      public static const const_1186:String = "WE_UNFOCUSED";
      
      public static const const_405:String = "WE_RELOCATED";
      
      public static const const_1203:String = "WE_DEACTIVATE";
      
      public static const const_240:String = "WE_DISABLED";
      
      public static const const_624:String = "WE_CANCEL";
      
      public static const const_660:String = "WE_ENABLE";
      
      public static const const_1187:String = "WE_ACTIVATED";
      
      public static const const_1271:String = "WE_FOCUS";
      
      public static const const_1570:String = "WE_DETACH";
      
      public static const const_1243:String = "WE_RESTORED";
      
      public static const const_1363:String = "WE_UNFOCUS";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_1350:String = "WE_PARENT_RESIZED";
      
      public static const const_1228:String = "WE_CREATED";
      
      public static const const_1591:String = "WE_ATTACHED";
      
      public static const const_1215:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1634:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1405:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1634 = param3;
         var_1405 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1405;
      }
      
      public function get related() : IWindow
      {
         return var_1634;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1405 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
