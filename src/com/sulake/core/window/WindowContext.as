package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static var var_961:MouseEventQueue;
      
      public static var var_1632:IMouseCursor;
      
      public static const const_1615:int = 2;
      
      private static var var_1031:Factory;
      
      private static var var_128:IWindowRenderer;
      
      public static var var_1404:KeyboardEventQueue;
      
      public static const const_1708:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1614:int = 0;
      
      public static const const_1635:int = 3;
      
      public static const const_1330:int = 4;
       
      
      protected var var_2305:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_711:WindowController;
      
      private var var_677:Date;
      
      protected var var_2306:IWindowParser;
      
      protected var var_971:Error;
      
      protected var var_2307:IInternalWindowServices;
      
      protected var var_98:WindowController;
      
      protected var var_1412:int = -1;
      
      protected var var_90:IDesktopWindow;
      
      private var var_1487:Boolean = false;
      
      protected var var_2396:Boolean = true;
      
      private var var_187:Boolean = false;
      
      protected var var_1133:SubstituteParentController;
      
      private var var_2342:Point;
      
      protected var var_333:DisplayObjectContainer;
      
      private var var_343:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_591:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_591 = new Point();
         var_2342 = new Point();
         super();
         _name = param1;
         var_128 = param2;
         _localization = param4;
         var_333 = param5;
         var_2307 = new InternalWindowServices(this,param5);
         var_2305 = param3;
         var_2306 = new WindowParser(this);
         var_677 = new Date();
         if(var_1031 == null)
         {
            var_1031 = new Factory();
         }
         if(var_961 == null)
         {
            var_961 = new MouseEventQueue(param5);
         }
         if(var_1404 == null)
         {
            var_1404 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_90 = new DesktopController("_CONTEXT_DESKTOP_" + _name,this,param6);
         var_333.addChild(var_90.getDisplayObject());
         var_333.doubleClickEnabled = true;
         var_333.addEventListener(Event.RESIZE,stageResizedHandler);
         var_98 = WindowController(var_90);
         var_1133 = new SubstituteParentController(this);
         var_343 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_90)
         {
            var_90 = null;
         }
         if(param1.state != WindowState.const_475)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_1031.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1330,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1133;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_90,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_90;
      }
      
      public function render(param1:uint) : void
      {
         var_1487 = true;
         var_128.update(param1);
         var_1487 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_333.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_333.removeChild(IGraphicContextHost(var_90).getGraphicContext(true) as DisplayObject);
         var_90.destroy();
         var_90 = null;
         var_1133.destroy();
         var_1133 = null;
         var_1031 = null;
         var_128 = null;
         var_98 = null;
         var_677 = null;
         var_343 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_90 != null && true)
         {
            if(var_333 is Stage)
            {
               var_90.width = Stage(var_333).stageWidth;
               var_90.height = Stage(var_333).stageHeight;
            }
            else
            {
               var_90.width = var_333.width;
               var_90.height = var_333.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_128.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2306;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2305;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_187 = true;
         if(var_971)
         {
            throw var_971;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_961;
         _loc7_.begin();
         var_591.x = -1;
         var_591.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_591.x || _loc2_.stageY != var_591.y)
            {
               var_591.x = _loc2_.stageX;
               var_591.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_90.groupChildrenUnderPoint(var_591,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_98 != var_90 && true)
                  {
                     var_98.getGlobalPosition(_loc6_);
                     var_98.update(var_98,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_98 = WindowController(var_90);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_98)
                     {
                        if(true)
                        {
                           var_98.getGlobalPosition(_loc6_);
                           var_98.update(var_98,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_98 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_98 && true)
                     {
                        if(var_343 != null)
                        {
                           var_343.mouseEventReceived(_loc2_.type,var_98);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_98)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_90)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_187 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_971 = param2;
         var_1412 = param1;
         if(var_2396)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_971;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1632 == null)
         {
            var_1632 = new MouseCursorControl(var_333);
         }
         return var_1632;
      }
      
      public function flushError() : void
      {
         var_971 = null;
         var_1412 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1412;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_49))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_72))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_128.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_417))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_711 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_711 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_711 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_711 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_711 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_90.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2307;
      }
   }
}
