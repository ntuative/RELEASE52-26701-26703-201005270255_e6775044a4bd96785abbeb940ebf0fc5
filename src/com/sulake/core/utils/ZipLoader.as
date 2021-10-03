package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import deng.fzip.FZipErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_498:uint = 0;
      
      private var var_94:FZip;
      
      private var var_1277:Array;
      
      private var var_1948:uint = 0;
      
      private var var_882:int = 0;
      
      private var _bytesTotal:uint = 0;
      
      public function ZipLoader(param1:LoaderContext = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
         var_1277 = new Array();
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_94)
         {
            var_94.removeEventListener(Event.COMPLETE,onComplete);
            var_94.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_94.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_94.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
            var_94.removeEventListener(FZipErrorEvent.const_127,onParseError);
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_150))
         {
            failure("IO Error, load operation failed for file \"undefined\" (" + var_498 + "/" + _bytesTotal + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_498;
      }
      
      private function onParseError(param1:FZipErrorEvent) : void
      {
         debug("Load event parse error for file \"undefined\"");
         if(!handleHttpStatus(var_150))
         {
            failure("Parse Error, load operation failed for file \"undefined\" (" + var_498 + "/" + _bytesTotal + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return _bytesTotal;
      }
      
      public function get resources() : Array
      {
         return var_1277;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var name:String = null;
         var event:Event = param1;
         try
         {
            name = getQualifiedClassName(var_14.content);
            var_1277.push(var_14.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_882;
            if(var_1277.length == var_1948)
            {
               var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               var_659 = true;
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,_bytesTotal,var_498));
            }
            else
            {
               var_14.loadBytes(var_94.getFileAt(var_882).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\" (" + var_498 + "/" + _bytesTotal + " bytes): " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         _bytesTotal = param1.bytesTotal;
         var_498 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,_bytesTotal,var_498));
      }
      
      override public function load(param1:URLRequest, param2:int = 5) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_41 = param1;
         _name = parseNameFromUrl(var_41.url);
         var_292 = param2;
         if(var_94)
         {
            var_94.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_94 = new FZip();
         var_94.addEventListener(Event.COMPLETE,onComplete);
         var_94.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_94.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_94.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_94.addEventListener(FZipErrorEvent.const_127,onParseError);
         if(!var_460)
         {
            var_94.load(var_41);
         }
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_292 > 0)
            {
               if(var_94)
               {
                  var_94.close();
               }
               addRequestCounterToUrlRequest(var_41,const_878 - var_292);
               if(var_1135)
               {
                  var_41.requestHeaders.push(new URLRequestHeader("pragma","no-cache"));
                  var_41.requestHeaders.push(new URLRequestHeader("Cache-Control","no-cache"));
                  var_1135 = false;
               }
               var_94.load(var_41);
               --var_292;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_41.url + "\" (" + var_498 + "/" + _bytesTotal + " bytes)");
            removeEventListeners();
         }
         return false;
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_882 = 0;
         var_1948 = var_94.getFileCount();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_14)
            {
               var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_14.loadBytes(var_94.getFileAt(var_882).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_150))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\" (" + var_498 + "/" + _bytesTotal + " bytes): " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_150 = param1.status;
         debug("Load event STATUS " + var_150 + " for file \"" + var_41.url + "\"");
      }
      
      override public function resume() : void
      {
         if(var_460 && !_disposed)
         {
            var_460 = false;
            if(!var_659 && var_41)
            {
               var_94.load(var_41);
            }
         }
      }
   }
}
