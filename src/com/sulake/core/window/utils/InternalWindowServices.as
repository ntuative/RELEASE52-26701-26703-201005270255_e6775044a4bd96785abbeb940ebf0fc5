package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2368:uint;
      
      private var var_932:IWindowToolTipAgentService;
      
      private var var_929:IWindowMouseScalingService;
      
      private var var_230:IWindowContext;
      
      private var var_931:IWindowFocusManagerService;
      
      private var var_933:IWindowMouseListenerService;
      
      private var var_930:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2368 = 0;
         var_121 = param2;
         var_230 = param1;
         var_930 = new WindowMouseDragger(param2);
         var_929 = new WindowMouseScaler(param2);
         var_933 = new WindowMouseListener(param2);
         var_931 = new FocusManager(param2);
         var_932 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_929;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_931;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_932;
      }
      
      public function dispose() : void
      {
         if(var_930 != null)
         {
            var_930.dispose();
            var_930 = null;
         }
         if(var_929 != null)
         {
            var_929.dispose();
            var_929 = null;
         }
         if(var_933 != null)
         {
            var_933.dispose();
            var_933 = null;
         }
         if(var_931 != null)
         {
            var_931.dispose();
            var_931 = null;
         }
         if(var_932 != null)
         {
            var_932.dispose();
            var_932 = null;
         }
         var_230 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_933;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_930;
      }
   }
}
