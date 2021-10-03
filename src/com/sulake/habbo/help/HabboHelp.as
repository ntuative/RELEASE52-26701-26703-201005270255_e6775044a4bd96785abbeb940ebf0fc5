package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_1640:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_122:TutorialUI;
      
      private var var_666:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_59:HelpUI;
      
      private var var_665:IHabboConfigurationManager;
      
      private var var_197:IHabboToolbar;
      
      private var var_561:HotelMergeUI;
      
      private var var_322:IHabboCommunicationManager;
      
      private var var_793:FaqIndex;
      
      private var var_1641:String = "";
      
      private var var_1073:IncomingMessages;
      
      private var var_1141:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1141 = new CallForHelpData();
         var_1640 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_793 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_197;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_59 != null)
         {
            var_59.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_59 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_59.toggleUI();
      }
      
      public function removeTutorialUI() : void
      {
         if(var_122 != null)
         {
            var_122.dispose();
            var_122 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1641;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_59 != null)
         {
            var_59.dispose();
            var_59 = null;
         }
         if(var_122 != null)
         {
            var_122.dispose();
            var_122 = null;
         }
         if(var_561)
         {
            var_561.dispose();
            var_561 = null;
         }
         if(var_793 != null)
         {
            var_793.dispose();
            var_793 = null;
         }
         var_1073 = null;
         if(var_197)
         {
            var_197.release(new IIDHabboToolbar());
            var_197 = null;
         }
         if(var_666)
         {
            var_666.release(new IIDHabboLocalizationManager());
            var_666 = null;
         }
         if(var_322)
         {
            var_322.release(new IIDHabboCommunicationManager());
            var_322 = null;
         }
         if(var_665)
         {
            var_665.release(new IIDHabboConfigurationManager());
            var_665 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_666;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_103:
               if(var_59 != null)
               {
                  var_59.setRoomSessionStatus(true);
               }
               if(var_122 != null)
               {
                  var_122.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_108:
               if(var_59 != null)
               {
                  var_59.setRoomSessionStatus(false);
               }
               if(var_122 != null)
               {
                  var_122.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_59 != null)
         {
            var_59.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_1640;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_59 != null)
         {
            var_59.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_561)
         {
            var_561 = new HotelMergeUI(this);
         }
         var_561.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_122 == null && _assetLibrary != null && _windowManager != null)
         {
            var_122 = new TutorialUI(this);
         }
         return var_122 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_59 == null && _assetLibrary != null && _windowManager != null)
         {
            var_59 = new HelpUI(this,_assetLibrary,_windowManager,var_666,var_197);
         }
         return var_59 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1141;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1141.reportedUserId = param1;
         var_1141.reportedUserName = param2;
         var_59.showUI(HabboHelpViewEnum.const_304);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1641 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_197 != null)
         {
            var_197.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_117,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_666 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_122 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_122.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_322 = IHabboCommunicationManager(param2);
         var_1073 = new IncomingMessages(this,var_322);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_59 != null)
         {
            var_59.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_59 != null)
         {
            var_59.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_322 != null && param1 != null)
         {
            var_322.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_793;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_59 != null)
         {
            var_59.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_197 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_665 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_122;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_89)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_63)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_561;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_103,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_108,onRoomSessionEvent);
         var_197.events.addEventListener(HabboToolbarEvent.const_89,onHabboToolbarEvent);
         var_197.events.addEventListener(HabboToolbarEvent.const_63,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_59 != null)
         {
            var_59.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_665 == null)
         {
            return param1;
         }
         return var_665.getKey(param1,param2,param3);
      }
   }
}
