package com.sulake.core.communication.connection
{
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.encryption.IEncryption;
   import com.sulake.core.communication.messages.IMessageClassManager;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.communication.messages.MessageClassManager;
   import com.sulake.core.communication.messages.MessageDataWrapper;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.ErrorReportStorage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.Socket;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class SocketConnection extends EventDispatcher implements IConnection, IDisposable
   {
      
      public static const const_1189:int = 10000;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1190:Boolean = false;
      
      private var var_72:Socket;
      
      private var var_829:IEncryption;
      
      private var var_693:int;
      
      private var var_344:ByteArray;
      
      private var _id:String;
      
      private var var_322:ICoreCommunicationManager;
      
      private var var_342:Timer;
      
      private var var_343:IConnectionStateListener;
      
      private var var_578:IProtocol;
      
      private var var_828:IMessageClassManager;
      
      public function SocketConnection(param1:String, param2:ICoreCommunicationManager, param3:IConnectionStateListener)
      {
         super();
         _id = param1;
         var_322 = param2;
         var_344 = new ByteArray();
         var_828 = new MessageClassManager();
         var_72 = new Socket();
         var_342 = new Timer(const_1189,1);
         var_342.addEventListener(TimerEvent.TIMER,onTimeOutTimer);
         var_72.addEventListener(Event.CONNECT,onConnect);
         var_72.addEventListener(Event.COMPLETE,onComplete);
         var_72.addEventListener(Event.CLOSE,onClose);
         var_72.addEventListener(ProgressEvent.SOCKET_DATA,onRead);
         var_72.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         var_72.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_343 = param3;
      }
      
      private function onTimeOutTimer(param1:TimerEvent) : void
      {
         var_342.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","TimeOut in " + (getTimer() - var_693));
         var _loc2_:IOErrorEvent = new IOErrorEvent(IOErrorEvent.IO_ERROR);
         _loc2_.text = "Socket Timeout (undefined ms). Possible Firewall.";
         dispatchEvent(_loc2_);
      }
      
      public function setEncryption(param1:IEncryption) : void
      {
         var_829 = param1;
      }
      
      public function get connected() : Boolean
      {
         return var_72.connected;
      }
      
      private function onConnect(param1:Event) : void
      {
         var_342.stop();
         var_1190 = true;
         ErrorReportStorage.addDebugData("ConnectionTimer","Connected in " + (getTimer() - var_693));
         dispatchEvent(param1);
      }
      
      public function send(param1:IMessageComposer, param2:int = -1) : Boolean
      {
         if(this.disposed)
         {
            return false;
         }
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:int = this.var_828.getMessageComposerID(param1);
         if(_loc4_ < 0)
         {
            return false;
         }
         var _loc5_:ByteArray = var_578.encoder.encode(_loc4_,param1.getMessageArray(),param2);
         if(var_343)
         {
            var_343.messageSent(String(_loc4_),_loc5_.toString());
         }
         if(var_829 != null)
         {
            _loc3_ = var_829.encipher(_loc5_);
         }
         else
         {
            _loc3_ = _loc5_;
         }
         if(false)
         {
            var_72.writeBytes(_loc3_);
            var_72.flush();
            return true;
         }
         return false;
      }
      
      public function init(param1:String, param2:uint = 0) : Boolean
      {
         if(var_343)
         {
            var_343.connectionInit(param1,param2);
         }
         Security.loadPolicyFile("xmlsocket://" + param1 + ":" + param2);
         var_342.start();
         var_693 = getTimer();
         var_72.connect(param1,param2);
         return true;
      }
      
      private function onRead(param1:ProgressEvent) : void
      {
         if(!var_72)
         {
            return;
         }
         while(false)
         {
            var_344.writeByte(var_72.readUnsignedByte());
         }
      }
      
      public function get protocol() : IProtocol
      {
         return var_578;
      }
      
      public function addMessageEvent(param1:IMessageEvent) : void
      {
         var_322.addConnectionMessageEvent(_id,param1);
      }
      
      public function dispose() : void
      {
         _disposed = true;
         if(var_72)
         {
            var_72.removeEventListener(Event.CONNECT,onConnect);
            var_72.removeEventListener(Event.COMPLETE,onComplete);
            var_72.removeEventListener(Event.CLOSE,onClose);
            var_72.removeEventListener(ProgressEvent.SOCKET_DATA,onRead);
            var_72.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            var_72.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            if(var_1190)
            {
               var_72.close();
            }
         }
         var_72 = null;
         var_344 = null;
         var_343 = null;
         var_829 = null;
         var_578 = null;
         _id = null;
         var_828 = null;
         var_322 = null;
         var_343 = null;
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var_342.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","SecurityError in " + (getTimer() - var_693));
         dispatchEvent(param1);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerMessageClasses(param1:IMessageConfiguration) : void
      {
         var_828.registerMessages(param1);
      }
      
      public function set protocol(param1:IProtocol) : void
      {
         var_578 = param1;
      }
      
      private function onComplete(param1:Event) : void
      {
         var_342.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","Completed in " + (getTimer() - var_693));
         dispatchEvent(param1);
      }
      
      public function processReceivedData() : void
      {
         var id:int = 0;
         var message:Array = null;
         var data:ByteArray = null;
         var eventClasses:Array = null;
         var events:Array = null;
         var eventClass:Class = null;
         var parserInstance:IMessageParser = null;
         var parserClassCurrent:Class = null;
         var messageEventInstance:IMessageEvent = null;
         var eventsForClass:Array = null;
         var parserClass:Class = null;
         var wasParsed:Boolean = false;
         var dataClone:ByteArray = null;
         var dataWrapper:IMessageDataWrapper = null;
         var temp:ByteArray = null;
         if(disposed)
         {
            return;
         }
         var receivedMessages:Array = new Array();
         var offset:uint = var_578.getMessages(var_344,receivedMessages);
         var time:Number = new Date().getTime();
         try
         {
            for each(message in receivedMessages)
            {
               id = message[0] as int;
               data = message[1] as ByteArray;
               if(var_343)
               {
                  var_343.messageReceived(String(id),data.toString());
               }
               eventClasses = var_828.getMessageEventClasses(id);
               events = new Array();
               for each(eventClass in eventClasses)
               {
                  eventsForClass = var_322.getMessageEvents(this,eventClass);
                  events = events.concat(eventsForClass);
               }
               if(events.length == 0)
               {
               }
               parserInstance = null;
               parserClassCurrent = null;
               for each(messageEventInstance in events)
               {
                  parserClass = messageEventInstance.parserClass;
                  if(parserClass != null)
                  {
                     wasParsed = false;
                     if(parserClass != parserClassCurrent)
                     {
                        dataClone = new ByteArray();
                        dataClone.writeBytes(data);
                        dataClone.position = data.position;
                        dataWrapper = new MessageDataWrapper(dataClone,protocol.decoder);
                        parserInstance = var_322.getMessageParser(parserClass);
                        if(parserInstance.flush())
                        {
                           if(parserInstance.parse(dataWrapper))
                           {
                              parserClassCurrent = parserClass;
                              wasParsed = true;
                           }
                        }
                     }
                     else
                     {
                        wasParsed = true;
                     }
                     if(wasParsed)
                     {
                        messageEventInstance.connection = this;
                        messageEventInstance.parser = parserInstance;
                        messageEventInstance.callback.call(null,messageEventInstance);
                     }
                     else
                     {
                        parserClassCurrent = null;
                        parserInstance = null;
                     }
                  }
               }
            }
            if(offset == var_344.length)
            {
               var_344 = new ByteArray();
            }
            else if(offset > 0)
            {
               temp = new ByteArray();
               temp.writeBytes(var_344,offset);
               var_344 = temp;
            }
         }
         catch(e:Error)
         {
            if(!disposed)
            {
               ErrorReportStorage.addDebugData("SocketConnection","Crashed while processing incoming message with id=\"" + id + "\"!");
               throw e;
            }
         }
      }
      
      public function set timeout(param1:int) : void
      {
         var_342.delay = param1;
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var_342.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","IOError in " + (getTimer() - var_693));
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         dispatchEvent(param1);
      }
      
      private function onClose(param1:Event) : void
      {
         var_342.stop();
         var_1190 = false;
         ErrorReportStorage.addDebugData("ConnectionTimer","Closed in " + (getTimer() - var_693));
         dispatchEvent(param1);
      }
      
      override public function toString() : String
      {
         var _loc1_:* = "";
         _loc1_ += "Socket Connection: \n";
         _loc1_ += "Protocol Encoder: undefined\n";
         _loc1_ += "Protocol Decoder: undefined\n";
         return _loc1_ + ("Encryption: " + var_829 + "\n");
      }
   }
}
