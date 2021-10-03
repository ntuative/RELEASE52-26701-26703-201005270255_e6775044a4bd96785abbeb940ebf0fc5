package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_895:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_895 = new Array();
         var_895.push(param1.length);
         var_895 = var_895.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_895;
      }
   }
}
