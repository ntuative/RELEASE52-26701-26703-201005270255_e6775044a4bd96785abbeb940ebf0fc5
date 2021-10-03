package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1158:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_800:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1158 = param1;
         var_800 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_800;
      }
      
      public function get identifier() : IID
      {
         return var_1158;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1158 = null;
            while(false)
            {
               var_800.pop();
            }
            var_800 = null;
         }
      }
   }
}
