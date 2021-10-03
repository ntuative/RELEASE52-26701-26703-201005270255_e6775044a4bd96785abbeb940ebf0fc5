package com.sulake.habbo.room
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.AssetLibrary;
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.LibraryLoader;
   import com.sulake.core.utils.LibraryLoaderEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.room.object.RoomObjectLogicEnum;
   import com.sulake.habbo.room.object.RoomObjectVisualizationEnum;
   import com.sulake.habbo.room.utils.PublicRoomData;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.furniture.IFurniDataListener;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.room.IRoomContentLoader;
   import com.sulake.room.events.RoomContentLoadedEvent;
   import com.sulake.room.object.IRoomObjectVisualizationFactory;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.net.URLRequest;
   
   public class RoomContentLoader implements IRoomContentLoader, IFurniDataListener, IDisposable
   {
      
      private static const const_793:String = "selection_arrow";
      
      private static const const_795:String = "tile_cursor";
      
      private static const const_293:String = "RCL_PUBLICROOM_";
      
      private static const const_511:String = "wall_place_holder";
      
      private static const const_1123:int = 2;
      
      private static const const_362:String = "place_holder";
      
      private static const const_1122:String = const_362;
      
      private static const const_1464:int = 0;
      
      private static const const_794:int = 1;
      
      private static const ROOM_CONTENT:String = "room";
      
      public static const const_708:String = "RCL_LOADER_READY";
       
      
      private var _isDisposed:Boolean = false;
      
      private var var_507:Map = null;
      
      private var _libraries:Map = null;
      
      private var var_1966:String;
      
      private var var_428:IRoomObjectVisualizationFactory = null;
      
      private var var_504:Array;
      
      private var _events:Map = null;
      
      private var var_418:Map = null;
      
      private var var_1059:IEventDispatcher = null;
      
      private var var_1294:Map = null;
      
      private var var_506:Map = null;
      
      private var var_1293:Boolean = false;
      
      private var var_505:Map = null;
      
      private var var_611:Map = null;
      
      private var _assetLibrary:AssetLibrary = null;
      
      private var var_1965:Boolean = false;
      
      private var var_35:int = 0;
      
      private var _wallItems:Array;
      
      private var var_1969:String;
      
      private var var_1964:Array;
      
      private var var_419:Map = null;
      
      private var var_1970:String;
      
      private var var_368:ISessionDataManager;
      
      private var var_1968:String;
      
      private var var_610:Map = null;
      
      private var var_1967:Array;
      
      private var var_362:Map = null;
      
      private var var_181:PublicRoomData = null;
      
      public function RoomContentLoader()
      {
         var_504 = [];
         _wallItems = [];
         var_1967 = ["hh_people_pool","hh_people_pool_calippo","hh_paalu","hh_people_paalu"];
         var_1964 = ["room_public","room_public_park","room_public_pool"];
         super();
         _libraries = new Map();
         _events = new Map();
         _assetLibrary = new AssetLibrary("room_engine");
         var_507 = new Map();
         var_505 = new Map();
         var_611 = new Map();
         var_506 = new Map();
         var_419 = new Map();
         var_418 = new Map();
         var_362 = new Map();
         var_610 = new Map();
         var_1294 = new Map();
      }
      
      public function insertObjectContent(param1:int, param2:int, param3:IAssetLibrary) : Boolean
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc4_:String = getAssetLibraryType(param3);
         switch(param2)
         {
            case RoomObjectCategoryEnum.const_34:
               var_507[param1] = _loc4_;
               break;
            case RoomObjectCategoryEnum.const_32:
               var_505[param1] = _loc4_;
               break;
            default:
               throw new Error("Registering content library for unsupported category " + param2 + "!");
         }
         var _loc5_:AssetLibraryCollection = addAssetLibraryCollection(_loc4_,null) as AssetLibraryCollection;
         if(_loc5_)
         {
            _loc5_.addAssetLibrary(param3);
            if(initializeGraphicAssetCollection(_loc4_,param3))
            {
               switch(param2)
               {
                  case RoomObjectCategoryEnum.const_34:
                     if(var_504.indexOf(_loc4_) == -1)
                     {
                        var_504.push(_loc4_);
                     }
                     break;
                  case RoomObjectCategoryEnum.const_32:
                     if(_wallItems.indexOf(_loc4_) == -1)
                     {
                        _wallItems.push(_loc4_);
                     }
                     break;
                  default:
                     throw new Error("Registering content library for unsupported category " + param2 + "!");
               }
               _loc6_ = new RoomContentLoadedEvent(RoomContentLoadedEvent.const_348,_loc4_);
               _loc7_ = getAssetLibraryEventDispatcher(_loc4_,true);
               if(_loc7_)
               {
                  _loc7_.dispatchEvent(_loc6_);
               }
               return true;
            }
         }
         return false;
      }
      
      public function getWallItemColorIndex(param1:int) : int
      {
         var _loc2_:String = var_505.getValue(param1) as String;
         return getObjectColorIndex(_loc2_);
      }
      
      public function hasInternalContent(param1:String) : Boolean
      {
         if(param1 == RoomObjectVisualizationEnum.const_135 || param1 == RoomObjectVisualizationEnum.PET || param1 == RoomObjectVisualizationEnum.BOT)
         {
            return true;
         }
         return false;
      }
      
      private function getAssetLibraryType(param1:IAssetLibrary) : String
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:IAsset = param1.getAssetByName("index");
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:XML = _loc2_.content as XML;
         if(_loc3_ == null)
         {
            return null;
         }
         return _loc3_.@type;
      }
      
      private function getRoomObjectOriginalName(param1:String) : String
      {
         var _loc2_:* = null;
         if(var_418 != null)
         {
            _loc2_ = var_418.getValue(param1) as String;
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1;
         }
         return _loc2_;
      }
      
      private function getObjectType(param1:String) : String
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:int = param1.indexOf("*");
         if(_loc2_ >= 0)
         {
            param1 = param1.substr(0,_loc2_);
         }
         return param1;
      }
      
      private function extractPublicRoomFromXML(param1:String, param2:XML) : PublicRoomData
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc3_:XMLList = param2.layoutData;
         var _loc4_:PublicRoomData = new PublicRoomData(param1);
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length())
         {
            _loc6_ = _loc3_[_loc5_];
            _loc7_ = const_293 + String(_loc6_.@name);
            _loc8_ = 32;
            _loc9_ = 1;
            if(String(_loc6_.@size) != "")
            {
               _loc8_ = Number(parseInt(_loc6_.@size));
            }
            if(String(_loc6_.@heightScale) != "")
            {
               _loc9_ = Number(parseFloat(_loc6_.@heightScale));
            }
            _loc4_.addWorld(_loc7_,_loc8_,_loc9_);
            _loc5_++;
         }
         return _loc4_;
      }
      
      private function initFurniData() : void
      {
         if(var_368 == null)
         {
            var_1293 = true;
            return;
         }
         var _loc1_:Array = var_368.getFurniData(this);
         if(_loc1_ == null)
         {
            return;
         }
         populateFurniData(_loc1_);
         var_1965 = true;
         continueInitilization();
      }
      
      public function getPublicRoomContentType(param1:String) : String
      {
         if(var_181 != null && var_181.hasWorldType(const_293 + param1))
         {
            return var_181.type;
         }
         return param1;
      }
      
      public function getContentType(param1:String) : String
      {
         if(param1.indexOf("@shadow") > -1)
         {
            if(param1.indexOf("@shadow") == param1.length - 7)
            {
               param1 = param1.substr(0,param1.length - 7);
            }
         }
         return param1;
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_libraries != null)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _libraries.getWithIndex(_loc2_) as AssetLibrary;
               if(_loc3_ != null)
               {
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            _libraries.dispose();
            _libraries = null;
         }
         if(_events != null)
         {
            _events.dispose();
            _events = null;
         }
         if(var_507 != null)
         {
            var_507.dispose();
            var_507 = null;
         }
         if(var_505 != null)
         {
            var_505.dispose();
            var_505 = null;
         }
         if(_assetLibrary != null)
         {
            _assetLibrary.dispose();
            _assetLibrary = null;
         }
         if(var_506 != null)
         {
            var_506.dispose();
            var_506 = null;
         }
         if(var_419 != null)
         {
            var_419.dispose();
            var_419 = null;
         }
         if(var_418 != null)
         {
            var_418.dispose();
            var_418 = null;
         }
         if(var_611 != null)
         {
            var_611.dispose();
            var_611 = null;
         }
         if(var_362 != null)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc4_ = var_362.getWithIndex(_loc2_) as IGraphicAssetCollection;
               if(_loc4_ != null)
               {
                  _loc4_.dispose();
               }
               _loc2_++;
            }
            var_362.dispose();
            var_362 = null;
         }
         if(var_610 != null)
         {
            var_610.dispose();
            var_610 = null;
         }
         var_504 = [];
         _wallItems = [];
         var_1059 = null;
         var_368 = null;
         _isDisposed = true;
      }
      
      private function getAssetLibrary(param1:String) : IAssetLibrary
      {
         var _loc4_:* = null;
         var _loc2_:String = getContentType(param1);
         _loc2_ = getRoomObjectOriginalName(_loc2_);
         var _loc3_:IAssetLibrary = _libraries.getValue(getAssetLibraryName(_loc2_)) as IAssetLibrary;
         if(_loc3_ == null)
         {
            _loc4_ = var_610.getValue(_loc2_);
            if(_loc4_ != null)
            {
               _loc2_ = getContentType(_loc4_);
               _loc3_ = _libraries.getValue(getAssetLibraryName(_loc2_)) as IAssetLibrary;
            }
         }
         return _loc3_;
      }
      
      public function getPlaceHolderTypes() : Array
      {
         return [const_362,const_511,ROOM_CONTENT,const_795,const_793];
      }
      
      public function addGraphicAsset(param1:String, param2:String, param3:BitmapData, param4:Boolean) : Boolean
      {
         var _loc5_:IGraphicAssetCollection = getGraphicAssetCollection(param1);
         if(_loc5_ != null)
         {
            return _loc5_.addAsset(param2,param3,param4);
         }
         return false;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function getObjectRevision(param1:String) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = getObjectCategory(param1);
         if(_loc2_ == RoomObjectCategoryEnum.const_34 || _loc2_ == RoomObjectCategoryEnum.const_32)
         {
            if(param1.indexOf("poster") == 0)
            {
               param1 = "poster";
            }
            return int(var_506.getValue(param1));
         }
         return 0;
      }
      
      public function loadLegacyContent(param1:String, param2:IEventDispatcher) : Array
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:Array = param1.split(",");
         var _loc4_:Array = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(_loc3_[_loc5_].toString().length > 0 && var_1967.indexOf(_loc3_[_loc5_]) == -1)
            {
               _loc6_ = _loc3_[_loc5_].toString();
               while(_loc6_.indexOf(" ") >= 0)
               {
                  if(_loc6_.indexOf(" ") == 0)
                  {
                     _loc6_ = _loc6_.substr(1,_loc6_.length - 1);
                  }
                  else if(_loc6_.indexOf(" ") == _loc6_.length - 1)
                  {
                     _loc6_ = _loc6_.substr(0,_loc6_.length - 2);
                  }
               }
               _loc4_.push(_loc6_);
            }
            _loc5_++;
         }
         if(_loc4_.length > 0)
         {
            _loc7_ = _loc4_[0];
            _loc5_ = 1;
            while(_loc5_ < _loc4_.length)
            {
               _loc7_ += ",";
               _loc7_ += _loc4_[_loc5_];
               _loc5_++;
            }
            if(loadObjectContent(_loc7_,param2))
            {
               return [_loc4_[0]];
            }
         }
         return [];
      }
      
      public function getPlaceHolderType(param1:String) : String
      {
         if(var_504.indexOf(param1) >= 0)
         {
            return const_362;
         }
         if(_wallItems.indexOf(param1) >= 0)
         {
            return const_511;
         }
         if(var_181 != null && (var_181.type == param1 || var_181.hasWorldType(param1)))
         {
            return ROOM_CONTENT;
         }
         return const_1122;
      }
      
      public function extractObjectContent(param1:String, param2:String) : Boolean
      {
         var _loc3_:IAssetLibrary = getAssetLibrary(param1);
         var_610.add(param2,param1);
         if(initializeGraphicAssetCollection(param2,_loc3_))
         {
            return true;
         }
         var_610.remove(param2);
         return false;
      }
      
      public function getLogicType(param1:String) : String
      {
         var _loc6_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:IAssetLibrary = getAssetLibrary(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:IAsset = _loc2_.getAssetByName(param1 + "_index");
         if(_loc3_ == null)
         {
            _loc3_ = _loc2_.getAssetByName("index");
         }
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:XML = _loc3_.content as XML;
         if(_loc4_ == null)
         {
            return null;
         }
         var _loc5_:String = _loc4_.@logic;
         if(_loc5_ != RoomObjectLogicEnum.const_185 && _loc5_ != RoomObjectLogicEnum.const_135)
         {
            _loc6_ = "@shadow";
            if(param1.indexOf(_loc6_) > -1)
            {
               if(param1.indexOf(_loc6_) == param1.length - _loc6_.length)
               {
                  _loc5_ = "null";
               }
            }
         }
         return _loc5_;
      }
      
      public function getActiveObjectType(param1:int) : String
      {
         var _loc2_:String = var_507.getValue(param1) as String;
         return getObjectType(_loc2_);
      }
      
      public function furniDataReady() : void
      {
         initFurniData();
      }
      
      public function getRoomObjectAdURL(param1:String) : String
      {
         if(var_611.getValue(param1) != null)
         {
            return var_611.getValue(param1);
         }
         return "";
      }
      
      private function getObjectColorIndex(param1:String) : int
      {
         if(param1 == null)
         {
            return -1;
         }
         var _loc2_:int = 0;
         var _loc3_:int = param1.indexOf("*");
         if(_loc3_ >= 0)
         {
            _loc2_ = int(param1.substr(_loc3_ + 1));
         }
         return _loc2_;
      }
      
      private function onContentLoaded(param1:Event) : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc2_:IAssetLibrary = param1.target as IAssetLibrary;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:* = null;
         var _loc4_:Boolean = false;
         var _loc5_:String = getAssetLibraryType(_loc2_);
         _loc5_ = getRoomObjectOriginalName(_loc5_);
         if(_loc5_ != null)
         {
            _loc4_ = initializeGraphicAssetCollection(_loc5_,_loc2_);
         }
         if(_loc4_)
         {
            if(var_1964.indexOf(getVisualizationType(_loc5_)) >= 0)
            {
               _loc7_ = getVisualizationXML(_loc5_);
               _loc8_ = extractPublicRoomFromXML(_loc5_,_loc7_);
               var_1294.add(_loc5_,_loc8_);
               var_181 = _loc8_;
               extractPublicRoomFurnitures(_loc5_,_loc2_);
            }
            _loc3_ = new RoomContentLoadedEvent(RoomContentLoadedEvent.const_348,_loc5_);
         }
         else
         {
            _loc3_ = new RoomContentLoadedEvent(RoomContentLoadedEvent.const_436,_loc5_);
         }
         var _loc6_:IEventDispatcher = getAssetLibraryEventDispatcher(_loc5_,true);
         if(_loc6_ != null && _loc3_ != null)
         {
            _loc6_.dispatchEvent(_loc3_);
         }
      }
      
      private function getRoomObjectAlias(param1:String) : String
      {
         var _loc2_:* = null;
         if(var_419 != null)
         {
            _loc2_ = var_419.getValue(param1) as String;
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1;
         }
         return _loc2_;
      }
      
      private function onContentLoadError(param1:Event) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:LibraryLoader = LibraryLoader(param1.target);
         var _loc3_:Array = getPlaceHolderTypes();
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = getObjectContentURLs(_loc4_);
            if(_loc5_.length > 0 && _loc5_[0] == _loc2_.url)
            {
               Core.crash("Failed to load asset: " + _loc2_.url,Core.const_1426);
               return;
            }
         }
      }
      
      private function getAssetLibraryName(param1:String) : String
      {
         return "RoomContentLoader " + param1;
      }
      
      public function getWallItemType(param1:int, param2:String = null) : String
      {
         var _loc3_:String = var_505.getValue(param1) as String;
         if(_loc3_ == "poster" && param2 != null)
         {
            _loc3_ += param2;
         }
         return getObjectType(_loc3_);
      }
      
      public function getLogicXML(param1:String) : XML
      {
         return getXML(param1,"_logic");
      }
      
      public function getObjectCategory(param1:String) : int
      {
         if(param1 == null)
         {
            return RoomObjectCategoryEnum.const_228;
         }
         if(var_504.indexOf(param1) >= 0)
         {
            return RoomObjectCategoryEnum.const_34;
         }
         if(_wallItems.indexOf(param1) >= 0)
         {
            return RoomObjectCategoryEnum.const_32;
         }
         if(param1.indexOf("poster") == 0)
         {
            return RoomObjectCategoryEnum.const_32;
         }
         if(var_181 != null && (var_181.type == param1 || var_181.hasWorldType(param1)))
         {
            return RoomObjectCategoryEnum.const_67;
         }
         if(param1 == "room")
         {
            return RoomObjectCategoryEnum.const_67;
         }
         if(param1 == "user")
         {
            return RoomObjectCategoryEnum.const_38;
         }
         if(param1 == "pet")
         {
            return RoomObjectCategoryEnum.const_38;
         }
         if(param1 == "bot")
         {
            return RoomObjectCategoryEnum.const_38;
         }
         if(param1 == "tile_cursor" || param1 == "selection_arrow")
         {
            return RoomObjectCategoryEnum.const_279;
         }
         return RoomObjectCategoryEnum.const_228;
      }
      
      private function initializeGraphicAssetCollection(param1:String, param2:IAssetLibrary) : Boolean
      {
         var _loc5_:* = null;
         if(param1 == null || param2 == null)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         var _loc4_:IGraphicAssetCollection = createGraphicAssetCollection(param1,param2);
         if(_loc4_ != null)
         {
            _loc5_ = getAssetXML(param1);
            if(_loc4_.define(_loc5_))
            {
               _loc3_ = true;
            }
            else
            {
               disposeGraphicAssetCollection(param1);
            }
         }
         return _loc3_;
      }
      
      public function set sessionDataManager(param1:ISessionDataManager) : void
      {
         var_368 = param1;
         if(var_1293)
         {
            var_1293 = false;
            initFurniData();
         }
      }
      
      private function continueInitilization() : void
      {
         if(var_1965)
         {
            var_35 = const_1123;
            if(var_1059 != null)
            {
               var_1059.dispatchEvent(new Event(const_708));
            }
         }
      }
      
      public function getPublicRoomWorldHeightScale(param1:String) : Number
      {
         if(var_181 != null)
         {
            return var_181.getWorldHeightScale(const_293 + param1);
         }
         return 1;
      }
      
      private function populateFurniData(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc3_ = _loc2_.id;
            _loc4_ = _loc2_.name;
            if(_loc2_.colourIndex > 0)
            {
               _loc4_ = _loc4_ + "*" + _loc2_.colourIndex;
            }
            _loc5_ = _loc2_.revision;
            _loc6_ = _loc2_.adUrl;
            if(_loc6_.length > 0)
            {
               var_611.add(_loc4_,_loc6_);
            }
            _loc7_ = _loc2_.name;
            if(_loc2_.type == "s")
            {
               var_507.add(_loc3_,_loc4_);
               if(var_504.indexOf(_loc7_) < 0)
               {
                  var_504.push(_loc7_);
               }
            }
            else if(_loc2_.type == "i")
            {
               if(_loc4_ == "post.it")
               {
                  _loc4_ = "post_it";
                  _loc7_ = "post_it";
               }
               if(_loc4_ == "post.it.vd")
               {
                  _loc4_ = "post_it_vd";
                  _loc7_ = "post_it_vd";
               }
               var_505.add(_loc3_,_loc4_);
               if(_wallItems.indexOf(_loc7_) < 0)
               {
                  _wallItems.push(_loc7_);
               }
            }
            _loc8_ = var_506.getValue(_loc7_);
            if(_loc5_ > _loc8_)
            {
               var_506.remove(_loc7_);
               var_506.add(_loc7_,_loc5_);
            }
         }
      }
      
      public function getAssetXML(param1:String) : XML
      {
         return getXML(param1,"_assets");
      }
      
      private function getAssetLibraryEventDispatcher(param1:String, param2:Boolean = false) : IEventDispatcher
      {
         var _loc3_:String = getContentType(param1);
         if(!param2)
         {
            return _events.getValue(_loc3_);
         }
         return _events.remove(_loc3_);
      }
      
      private function getObjectContentURLs(param1:String) : Array
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         _loc2_ = getContentType(param1);
         Logger.log("Getting content URL for object type: " + param1);
         switch(_loc2_)
         {
            case const_362:
               return ["PlaceHolderFurniture.swf"];
            case const_511:
               return ["PlaceHolderWallItem.swf"];
            case ROOM_CONTENT:
               return ["HabboRoomContent.swf"];
            case const_795:
               return ["TileCursor.swf"];
            case const_793:
               return ["SelectionArrow.swf"];
            default:
               _loc3_ = getObjectCategory(_loc2_);
               if(_loc3_ == RoomObjectCategoryEnum.const_34 || _loc3_ == RoomObjectCategoryEnum.const_32)
               {
                  _loc4_ = getRoomObjectAlias(_loc2_);
                  _loc5_ = var_1970;
                  _loc5_ = _loc5_.replace(/%typeid%/,_loc4_);
                  _loc6_ = getObjectRevision(_loc2_);
                  _loc5_ = _loc5_.replace(/%revision%/,_loc6_);
                  return [var_1966 + _loc5_];
               }
               _loc7_ = _loc2_.split(",");
               _loc8_ = [];
               _loc9_ = 0;
               while(_loc9_ < _loc7_.length)
               {
                  _loc10_ = var_1968;
                  _loc10_ = _loc10_.replace(/%typeid%/,_loc7_[_loc9_]);
                  _loc8_.push(var_1969 + _loc10_);
                  _loc9_++;
               }
               return _loc8_;
         }
      }
      
      public function set visualizationFactory(param1:IRoomObjectVisualizationFactory) : void
      {
         var_428 = param1;
      }
      
      public function initialize(param1:IEventDispatcher, param2:IHabboConfigurationManager) : void
      {
         if(var_35 >= const_794)
         {
            return;
         }
         var_1059 = param1;
         var_1966 = param2.getKey("flash.dynamic.download.url","furniture/");
         var_1970 = param2.getKey("flash.dynamic.download.name.template","%typeid%.swf");
         var_1969 = param2.getKey("public.room.dynamic.download.url","");
         var_1968 = param2.getKey("public.room.dynamic.download.name.template","%typeid%.swf");
         var_35 = const_794;
         initFurniData();
      }
      
      public function getGraphicAssetCollection(param1:String) : IGraphicAssetCollection
      {
         var _loc2_:String = getContentType(param1);
         return var_362.getValue(_loc2_) as IGraphicAssetCollection;
      }
      
      private function disposeGraphicAssetCollection(param1:String) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:String = getContentType(param1);
         if(false)
         {
            _loc3_ = var_362.remove(_loc2_);
            if(_loc3_ != null)
            {
               _loc3_.dispose();
            }
            return true;
         }
         return false;
      }
      
      private function addAssetLibraryCollection(param1:String, param2:IEventDispatcher) : IAssetLibrary
      {
         var _loc3_:String = getContentType(param1);
         var _loc4_:IAssetLibrary = getAssetLibrary(param1);
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         var _loc5_:String = getAssetLibraryName(_loc3_);
         _loc4_ = new AssetLibraryCollection(_loc5_);
         _libraries.add(_loc5_,_loc4_);
         if(param2 != null && getAssetLibraryEventDispatcher(param1) == null)
         {
            _events.add(_loc3_,param2);
         }
         return _loc4_;
      }
      
      public function setRoomObjectAlias(param1:String, param2:String) : void
      {
         if(var_419 != null)
         {
            var_419.remove(param1);
            var_419.add(param1,param2);
         }
         if(var_418 != null)
         {
            var_418.remove(param2);
            var_418.add(param2,param1);
         }
      }
      
      public function getVisualizationXML(param1:String) : XML
      {
         return getXML(param1,"_visualization");
      }
      
      public function getVisualizationType(param1:String) : String
      {
         var _loc6_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:IAssetLibrary = getAssetLibrary(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:IAsset = _loc2_.getAssetByName(param1 + "_index");
         if(_loc3_ == null)
         {
            _loc3_ = _loc2_.getAssetByName("index");
         }
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:XML = _loc3_.content as XML;
         if(_loc4_ == null)
         {
            return null;
         }
         var _loc5_:String = _loc4_.@visualization;
         if(_loc5_ != RoomObjectVisualizationEnum.const_185 && _loc5_ != RoomObjectVisualizationEnum.const_135)
         {
            _loc6_ = "@shadow";
            if(param1.indexOf(_loc6_) > -1)
            {
               if(param1.indexOf(_loc6_) == param1.length - _loc6_.length)
               {
                  _loc5_ = "null";
               }
            }
         }
         return _loc5_;
      }
      
      private function createGraphicAssetCollection(param1:String, param2:IAssetLibrary) : IGraphicAssetCollection
      {
         var _loc3_:IGraphicAssetCollection = getGraphicAssetCollection(param1);
         if(_loc3_ != null)
         {
            return _loc3_;
         }
         if(param2 == null)
         {
            return null;
         }
         _loc3_ = var_428.createGraphicAssetCollection();
         if(_loc3_ != null)
         {
            _loc3_.assetLibrary = param2;
            var_362.add(param1,_loc3_);
         }
         return _loc3_;
      }
      
      public function isPublicRoomWorldType(param1:String) : Boolean
      {
         if(getObjectCategory(const_293 + param1) == RoomObjectCategoryEnum.const_67)
         {
            return true;
         }
         return false;
      }
      
      private function extractPublicRoomFurnitures(param1:String, param2:IAssetLibrary) : int
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(param2 == null)
         {
            return 0;
         }
         var _loc3_:Array = param2.nameArray;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            _loc6_ = _loc3_[_loc5_];
            if(_loc6_.indexOf("_index") > 0)
            {
               _loc7_ = _loc6_.slice(0,_loc6_.indexOf("_index"));
               if(extractObjectContent(param1,_loc7_))
               {
                  _loc4_++;
               }
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      private function getXML(param1:String, param2:String) : XML
      {
         var _loc3_:IAssetLibrary = getAssetLibrary(param1);
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:String = getContentType(param1);
         var _loc5_:String = getRoomObjectAlias(_loc4_);
         var _loc6_:IAsset = _loc3_.getAssetByName(_loc5_ + param2);
         if(_loc6_ == null)
         {
            return null;
         }
         var _loc7_:XML = _loc6_.content as XML;
         if(_loc7_ == null)
         {
            return null;
         }
         return _loc7_;
      }
      
      public function getActiveObjectColorIndex(param1:int) : int
      {
         var _loc2_:String = var_507.getValue(param1) as String;
         return getObjectColorIndex(_loc2_);
      }
      
      public function loadObjectContent(param1:String, param2:IEventDispatcher) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc3_:* = null;
         if(param1.indexOf(",") >= 0)
         {
            _loc3_ = param1;
            param1 = _loc3_.split(",")[0];
         }
         if(var_1294.getValue(param1) != null)
         {
            var_181 = var_1294.getValue(param1) as PublicRoomData;
         }
         if(getAssetLibrary(param1) != null || getAssetLibraryEventDispatcher(param1) != null)
         {
            return false;
         }
         var _loc4_:AssetLibraryCollection = addAssetLibraryCollection(param1,param2) as AssetLibraryCollection;
         if(_loc4_ == null)
         {
            return false;
         }
         if(_loc3_ != null)
         {
            _loc5_ = getObjectContentURLs(_loc3_);
         }
         else
         {
            _loc5_ = getObjectContentURLs(param1);
         }
         if(_loc5_ != null && _loc5_.length > 0)
         {
            _loc4_.addEventListener(AssetLibrary.const_402,onContentLoaded);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc7_ = new LibraryLoader();
               _loc7_.load(new URLRequest(_loc5_[_loc6_]));
               _loc4_.loadFromFile(_loc7_,true);
               _loc7_.addEventListener(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,onContentLoadError);
               _loc6_++;
            }
            return true;
         }
         return false;
      }
      
      public function getPublicRoomWorldSize(param1:String) : int
      {
         if(var_181 != null)
         {
            return var_181.getWorldScale(const_293 + param1);
         }
         return 32;
      }
   }
}
