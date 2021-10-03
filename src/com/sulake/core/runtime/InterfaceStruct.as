package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_389:uint;
      
      private var var_982:IUnknown;
      
      private var var_1144:String;
      
      private var var_981:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_981 = param1;
         var_1144 = getQualifiedClassName(var_981);
         var_982 = param2;
         var_389 = 0;
      }
      
      public function get iid() : IID
      {
         return var_981;
      }
      
      public function get disposed() : Boolean
      {
         return var_982 == null;
      }
      
      public function get references() : uint
      {
         return var_389;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_389) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_982;
      }
      
      public function get iis() : String
      {
         return var_1144;
      }
      
      public function reserve() : uint
      {
         return ++var_389;
      }
      
      public function dispose() : void
      {
         var_981 = null;
         var_1144 = null;
         var_982 = null;
         var_389 = 0;
      }
   }
}
