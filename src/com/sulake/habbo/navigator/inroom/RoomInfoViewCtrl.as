package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_747:IWindowContainer;
      
      private var var_1067:ITextWindow;
      
      private var var_202:RoomSettingsCtrl;
      
      private var var_1314:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1315:ITextWindow;
      
      private var var_366:IWindowContainer;
      
      private var var_2014:IWindowContainer;
      
      private var var_2011:ITextWindow;
      
      private var var_900:IWindowContainer;
      
      private var var_1548:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_673:ITextWindow;
      
      private var var_1547:IWindowContainer;
      
      private var var_1312:IWindowContainer;
      
      private var var_899:ITextWindow;
      
      private var var_1068:ITextFieldWindow;
      
      private var var_317:IWindowContainer;
      
      private var var_898:ITextWindow;
      
      private var var_1546:IButtonWindow;
      
      private var var_1069:ITextWindow;
      
      private var var_2356:int;
      
      private var var_1309:IContainerButtonWindow;
      
      private var var_897:IWindowContainer;
      
      private var var_1310:ITextWindow;
      
      private var var_1311:IContainerButtonWindow;
      
      private var var_1550:ITextWindow;
      
      private var var_1549:IButtonWindow;
      
      private var var_805:TagRenderer;
      
      private var var_2013:ITextWindow;
      
      private var var_365:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_746:ITextWindow;
      
      private var var_273:RoomThumbnailCtrl;
      
      private var var_1313:IContainerButtonWindow;
      
      private var var_2012:IWindowContainer;
      
      private var var_272:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_365 = new RoomEventViewCtrl(_navigator);
         var_202 = new RoomSettingsCtrl(_navigator,this,true);
         var_273 = new RoomThumbnailCtrl(_navigator);
         var_805 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_202);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_202.active = true;
         this.var_365.active = false;
         this.var_273.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1548.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1549.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1547.visible = Util.hasVisibleChildren(var_1547);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_673.text = param1.roomName;
         var_673.height = NaN;
         _ownerName.text = param1.ownerName;
         var_899.text = param1.description;
         var_805.refreshTags(var_366,param1.tags);
         var_899.visible = false;
         if(param1.description != "")
         {
            var_899.height = NaN;
            var_899.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_366,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_366,"thumb_down",_loc3_,onThumbDown,0);
         var_2011.visible = _loc3_;
         var_898.visible = !_loc3_;
         var_1550.visible = !_loc3_;
         var_1550.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_366,"home",param2,null,0);
         _navigator.refreshButton(var_366,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_366,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_673.y,0);
         var_366.visible = true;
         var_366.height = Util.getLowestPoint(var_366);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_411,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1546.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1314.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1313.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1309.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1311.visible = _navigator.data.canEditRoomSettings && param1;
         var_1312.visible = Util.hasVisibleChildren(var_1312);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_365.active = false;
         this.var_202.active = false;
         this.var_273.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_365.active = false;
         this.var_202.active = false;
         this.var_273.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_51,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_411,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_317);
         var_317.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_202.refresh(var_317);
         this.var_273.refresh(var_317);
         Util.moveChildrenToColumn(var_317,["room_details","room_buttons"],0,2);
         var_317.height = Util.getLowestPoint(var_317);
         var_317.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1068.setSelection(0,var_1068.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_272);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_365.refresh(var_272);
         if(Util.hasVisibleChildren(var_272) && !this.var_273.active)
         {
            Util.moveChildrenToColumn(var_272,["event_details","event_buttons"],0,2);
            var_272.height = Util.getLowestPoint(var_272);
            var_272.visible = true;
         }
         else
         {
            var_272.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_365.active = true;
         this.var_202.active = false;
         this.var_273.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1067.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1067.height = NaN;
         var_1315.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1315.height = NaN;
         Util.moveChildrenToColumn(var_747,["public_space_name","public_space_desc"],var_1067.y,0);
         var_747.visible = true;
         var_747.height = Math.max(86,Util.getLowestPoint(var_747));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "TradingItemListEvent";
         if(_loc1_ && true && true && true)
         {
            var_897.visible = true;
            var_1068.text = this.getEmbedData();
         }
         else
         {
            var_897.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_202.load(param1);
         this.var_202.active = true;
         this.var_365.active = false;
         this.var_273.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_202.active = false;
         this.var_365.active = false;
         this.var_273.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_74,false);
         _window.setParamFlag(HabboWindowParam.const_1395,true);
         _window.visible = false;
         var_317 = IWindowContainer(find("room_info"));
         var_366 = IWindowContainer(find("room_details"));
         var_747 = IWindowContainer(find("public_space_details"));
         var_2012 = IWindowContainer(find("owner_name_cont"));
         var_2014 = IWindowContainer(find("rating_cont"));
         var_1312 = IWindowContainer(find("room_buttons"));
         var_673 = ITextWindow(find("room_name"));
         var_1067 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_899 = ITextWindow(find("room_desc"));
         var_1315 = ITextWindow(find("public_space_desc"));
         var_1069 = ITextWindow(find("owner_caption"));
         var_898 = ITextWindow(find("rating_caption"));
         var_2011 = ITextWindow(find("rate_caption"));
         var_1550 = ITextWindow(find("rating_txt"));
         var_272 = IWindowContainer(find("event_info"));
         var_900 = IWindowContainer(find("event_details"));
         var_1547 = IWindowContainer(find("event_buttons"));
         var_2013 = ITextWindow(find("event_name"));
         var_746 = ITextWindow(find("event_desc"));
         var_1314 = IContainerButtonWindow(find("add_favourite_button"));
         var_1313 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1309 = IContainerButtonWindow(find("make_home_button"));
         var_1311 = IContainerButtonWindow(find("unmake_home_button"));
         var_1546 = IButtonWindow(find("room_settings_button"));
         var_1548 = IButtonWindow(find("create_event_button"));
         var_1549 = IButtonWindow(find("edit_event_button"));
         var_897 = IWindowContainer(find("embed_info"));
         var_1310 = ITextWindow(find("embed_info_txt"));
         var_1068 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1314,onAddFavouriteClick);
         Util.setProcDirectly(var_1313,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1546,onRoomSettingsClick);
         Util.setProcDirectly(var_1309,onMakeHomeClick);
         Util.setProcDirectly(var_1311,onUnmakeHomeClick);
         Util.setProcDirectly(var_1548,onEventSettingsClick);
         Util.setProcDirectly(var_1549,onEventSettingsClick);
         Util.setProcDirectly(var_1068,onEmbedSrcClick);
         _navigator.refreshButton(var_1314,"favourite",true,null,0);
         _navigator.refreshButton(var_1313,"favourite",true,null,0);
         _navigator.refreshButton(var_1309,"home",true,null,0);
         _navigator.refreshButton(var_1311,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_317,onHover);
         Util.setProcDirectly(var_272,onHover);
         var_1069.width = var_1069.textWidth;
         Util.moveChildrenToRow(var_2012,["owner_caption","owner_name"],var_1069.x,var_1069.y,3);
         var_898.width = var_898.textWidth;
         Util.moveChildrenToRow(var_2014,["rating_caption","rating_txt"],var_898.x,var_898.y,3);
         var_1310.height = NaN;
         Util.moveChildrenToColumn(var_897,["embed_info_txt","embed_src_txt"],var_1310.y,2);
         var_897.height = Util.getLowestPoint(var_897) + 5;
         var_2356 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2013.text = param1.eventName;
         var_746.text = param1.eventDescription;
         var_805.refreshTags(var_900,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_746.visible = false;
         if(param1.eventDescription != "")
         {
            var_746.height = NaN;
            var_746.y = Util.getLowestPoint(var_900) + 2;
            var_746.visible = true;
         }
         var_900.visible = true;
         var_900.height = Util.getLowestPoint(var_900);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_992,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
