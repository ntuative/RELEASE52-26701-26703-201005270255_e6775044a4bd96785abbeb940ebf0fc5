package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1473:int = 10;
       
      
      private var var_1581:NavigatorSettingsMessageParser;
      
      private var var_1354:int;
      
      private var var_2129:int;
      
      private var var_2131:Boolean;
      
      private var var_1089:Array;
      
      private var var_921:Dictionary;
      
      private var var_1088:Array;
      
      private var var_2360:int;
      
      private var var_2130:int;
      
      private var var_1902:int;
      
      private var var_2132:int;
      
      private var var_627:PublicRoomShortData;
      
      private var var_435:RoomEventData;
      
      private var var_138:MsgWithRequestId;
      
      private var var_2128:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2133:Boolean;
      
      private var var_206:GuestRoomData;
      
      private var var_763:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1089 = new Array();
         var_1088 = new Array();
         var_921 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2129;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2133;
      }
      
      public function startLoading() : void
      {
         this.var_763 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2133 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_435 != null)
         {
            var_435.dispose();
         }
         var_435 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_138 != null && var_138 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_138 != null && var_138 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_138 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_206;
      }
      
      public function get allCategories() : Array
      {
         return var_1089;
      }
      
      public function onRoomExit() : void
      {
         if(var_435 != null)
         {
            var_435.dispose();
            var_435 = null;
         }
         if(var_627 != null)
         {
            var_627.dispose();
            var_627 = null;
         }
         if(var_206 != null)
         {
            var_206.dispose();
            var_206 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_138 = param1;
         var_763 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1581;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_138 = param1;
         var_763 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_627 = null;
         var_206 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_627 = param1.publicSpace;
            var_435 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2360 = param1.limit;
         this.var_1354 = param1.favouriteRoomIds.length;
         this.var_921 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_921[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_138 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_627;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2131;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_138 = param1;
         var_763 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1902 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_206 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_763;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1088;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1089 = param1;
         var_1088 = new Array();
         for each(_loc2_ in var_1089)
         {
            if(_loc2_.visible)
            {
               var_1088.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2130;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2132;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1581 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_138 == null)
         {
            return;
         }
         var_138.dispose();
         var_138 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_435;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_921[param1] = !!param2 ? "yes" : null;
         var_1354 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_138 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1902;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_138 != null && var_138 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2131 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2130 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2128 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_206 != null)
         {
            var_206.dispose();
         }
         var_206 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_206 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1581.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1354 >= var_2360;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2132 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2128;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_206 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2129 = param1;
      }
   }
}
