package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class SpacesCatalogWidget extends CatalogWidget implements ICatalogWidget, IGetImageListener
   {
      
      private static const const_91:String = "landscape";
      
      private static const const_198:String = "floor";
      
      private static const const_197:String = "wallpaper";
       
      
      private var var_1157:String = "HabboNavigatorCom_rico_top10_png";
      
      private var var_1304:Array;
      
      private var var_269:BitmapData = null;
      
      private var var_237:int = 0;
      
      private var var_743:int = 0;
      
      private var var_1155:String = "1.1";
      
      private var var_1305:int = -1;
      
      private var var_1306:int = -1;
      
      private var var_894:Array;
      
      private var var_742:int = 0;
      
      private var var_268:BitmapData = null;
      
      private var var_314:int = 0;
      
      private var var_741:int = 0;
      
      private var var_315:int = 0;
      
      private var var_267:int = 0;
      
      private var var_893:Array;
      
      private var _floorType:String = "HabboNavigatorCom_rico_top10_png";
      
      private var _activeFloorPatterns:Array;
      
      private var var_1303:Array;
      
      private var var_270:int = 0;
      
      private var var_151:XML;
      
      private var var_1307:Array;
      
      private var var_316:int = 0;
      
      public function SpacesCatalogWidget(param1:IWindowContainer)
      {
         var_1307 = [];
         var_893 = [];
         var_1304 = [];
         _activeFloorPatterns = [];
         var_1303 = [];
         var_894 = [];
         super(param1);
      }
      
      private function setRoomImage(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param1 != null && param2 != null && true)
         {
            _loc3_ = new Point(param1.width / 2 + 4 + 19,param1.height / 2 - param2.height / 2 - 24 + 10);
            _loc4_ = new BitmapData(param1.width,param1.height,param1.transparent);
            _loc4_.copyPixels(param1,param1.rect,new Point(0,0),null,null,true);
            _loc4_.copyPixels(param2,param2.rect,_loc3_,null,null,true);
            _loc5_ = window.getChildByName("catalog_floor_preview_example") as IBitmapWrapperWindow;
            if(_loc5_ != null)
            {
               if(_loc5_.bitmap == null)
               {
                  _loc5_.bitmap = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
               }
               _loc5_.bitmap.fillRect(_loc5_.bitmap.rect,16777215);
               _loc6_ = (_loc5_.width - _loc4_.width) / 2;
               _loc7_ = (_loc5_.height - _loc4_.height) / 2;
               _loc5_.bitmap.copyPixels(_loc4_,_loc4_.rect,new Point(_loc6_,_loc7_),null,null,true);
               _loc5_.invalidate();
            }
            _loc4_.dispose();
         }
      }
      
      private function changeColor(param1:String, param2:int) : void
      {
         switch(param1)
         {
            case const_197:
               var_237 += param2;
               if(var_237 < 0)
               {
                  if(var_741 > 0)
                  {
                     var_237 = var_741 - 1;
                  }
                  else
                  {
                     var_237 = 0;
                  }
               }
               if(var_237 >= var_741)
               {
                  var_237 = 0;
               }
               break;
            case const_198:
               var_267 += param2;
               if(var_267 < 0)
               {
                  if(var_742 > 0)
                  {
                     var_267 = var_742 - 1;
                  }
                  else
                  {
                     var_267 = 0;
                  }
               }
               if(var_267 >= var_742)
               {
                  var_267 = 0;
               }
               break;
            case const_91:
               var_270 += param2;
               if(var_270 < 0)
               {
                  if(var_743 > 0)
                  {
                     var_270 = var_743 - 1;
                  }
                  else
                  {
                     var_270 = 0;
                  }
               }
               if(var_270 >= var_743)
               {
                  var_270 = 0;
               }
         }
      }
      
      override public function init() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         super.init();
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("configuration_catalog_spaces") as XmlAsset;
         if(_loc1_ != null)
         {
            var_151 = _loc1_.content as XML;
            for each(_loc2_ in page.offers)
            {
               _loc4_ = _loc2_.productContainer.firstProduct;
               _loc5_ = _loc2_.localizationId;
               _loc6_ = _loc5_.split(" ")[0];
               _loc7_ = _loc5_.split(" ")[1];
               _loc8_ = false;
               switch(_loc4_.furnitureData.name)
               {
                  case "floor":
                     for each(_loc9_ in var_151.floors.pattern)
                     {
                        _activeFloorPatterns.push(String(_loc9_.@id));
                        var_1304.push(_loc2_);
                     }
                     break;
                  case "wallpaper":
                     for each(_loc10_ in var_151.walls.pattern)
                     {
                        if(_loc10_.@id == _loc7_)
                        {
                           var_893.push(_loc7_);
                           _loc8_ = true;
                        }
                     }
                     if(_loc8_)
                     {
                        var_1307.push(_loc2_);
                     }
                     else
                     {
                        Logger.log("[SpacesCatalogWidget] Could not find wallpaper pattern configuration! " + [_loc2_.localizationId,_loc4_.furnitureData.name]);
                     }
                     break;
                  case "landscape":
                     for each(_loc11_ in var_151.landscapes.pattern)
                     {
                        if(_loc11_.@id == _loc7_)
                        {
                           var_894.push(_loc7_);
                           _loc8_ = true;
                        }
                     }
                     if(_loc8_)
                     {
                        var_1303.push(_loc2_);
                     }
                     else
                     {
                        Logger.log("[SpacesCatalogWidget] Could not find landscape pattern configuration! " + [_loc2_.localizationId,_loc4_.furnitureData.name]);
                     }
                     break;
                  default:
                     Logger.log("[SpacesCatalogWidget] : " + _loc4_.furnitureData.name);
                     break;
               }
            }
            _loc3_ = 0;
            while(_loc3_ < _window.numChildren)
            {
               _loc12_ = _window.getChildAt(_loc3_);
               if(_loc12_ is IButtonWindow)
               {
                  _loc12_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onClick);
               }
               _loc3_++;
            }
            changePattern(const_197,0);
            changePattern(const_91,0);
            changePattern(const_198,0);
            updateConfiguration();
            retrieveSpacesPreview();
            return;
         }
      }
      
      override public function dispose() : void
      {
         if(var_269 != null)
         {
            var_269.dispose();
            var_269 = null;
         }
         if(var_268 != null)
         {
            var_268.dispose();
            var_268 = null;
         }
         super.dispose();
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         switch(param1)
         {
            case var_1306:
               var_1306 = 0;
               if(var_269 != null)
               {
                  var_269.dispose();
               }
               var_269 = param2;
               break;
            case var_1305:
               var_1305 = 0;
               if(var_268 != null)
               {
                  var_268.dispose();
               }
               var_268 = param2;
         }
         if(var_269 != null && var_268 != null)
         {
            setRoomImage(var_269,var_268);
         }
      }
      
      private function updateConfiguration() : void
      {
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc2_:String = "null";
         for each(_loc1_ in var_151.walls.pattern)
         {
            if(_loc1_.@id == _loc2_)
            {
               if(var_237 >= 0)
               {
                  _loc9_ = _loc1_.children()[var_237];
                  if(_loc9_ != null)
                  {
                     var_1157 = _loc9_.@id;
                  }
               }
            }
         }
         _loc3_ = var_1307[var_314];
         _loc4_ = (page.viewer.catalog as HabboCatalog).localization;
         if(_loc3_ != null)
         {
            _loc10_ = _window.findChildByName("ctlg_wall_price") as ITextWindow;
            if(_loc10_ != null)
            {
               _loc10_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc3_.priceInCredits));
            }
         }
         var _loc5_:String = "null";
         for each(_loc1_ in var_151.floors.pattern)
         {
            if(_loc1_.@id == _loc5_)
            {
               _loc11_ = _loc1_.children()[var_267];
               if(_loc11_ != null)
               {
                  _floorType = _loc11_.@id;
               }
            }
         }
         _loc6_ = var_1304[var_315];
         if(_loc6_ != null)
         {
            _loc12_ = _window.findChildByName("ctlg_floor_price") as ITextWindow;
            if(_loc12_ != null)
            {
               _loc12_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc6_.priceInCredits));
            }
         }
         var _loc7_:String = "null";
         for each(_loc1_ in var_151.landscapes.pattern)
         {
            if(_loc1_.@id == _loc7_)
            {
               _loc13_ = _loc1_.children()[var_270];
               if(_loc13_ != null)
               {
                  var_1155 = _loc13_.@id;
               }
            }
         }
         _loc8_ = var_1303[var_316];
         if(_loc8_ != null)
         {
            _loc14_ = _window.findChildByName("ctlg_landscape_price") as ITextWindow;
            if(_loc14_ != null)
            {
               _loc14_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc8_.priceInCredits));
            }
         }
      }
      
      private function changePattern(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         switch(param1)
         {
            case const_197:
               var_314 += param2;
               if(var_314 < 0)
               {
                  var_314 = -1;
               }
               if(var_314 == var_893.length)
               {
                  var_314 = 0;
               }
               var_237 = 0;
               var_741 = 0;
               _loc5_ = "null";
               for each(_loc8_ in var_151.walls.pattern)
               {
                  if(_loc8_.@id == _loc5_)
                  {
                     var_741 = _loc8_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_wall_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_wall_color_next") as IButtonWindow;
               if(var_741 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_198:
               var_315 += param2;
               if(var_315 < 0)
               {
                  var_315 = -1;
               }
               if(var_315 >= _activeFloorPatterns.length)
               {
                  var_315 = 0;
               }
               var_267 = 0;
               var_742 = 0;
               _loc6_ = "null";
               for each(_loc9_ in var_151.floors.pattern)
               {
                  if(_loc9_.@id == _loc6_)
                  {
                     var_742 = _loc9_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_floor_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_floor_color_next") as IButtonWindow;
               if(var_742 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_91:
               var_316 += param2;
               if(var_316 < 0)
               {
                  var_316 = -1;
               }
               if(var_316 >= var_894.length)
               {
                  var_316 = 0;
               }
               var_270 = 0;
               var_743 = 0;
               _loc7_ = "null";
               for each(_loc10_ in var_151.landscapes.pattern)
               {
                  if(_loc10_.@id == _loc7_)
                  {
                     var_743 = _loc10_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_landscape_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_landscape_color_next") as IButtonWindow;
               if(var_743 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
         }
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:IWindow = param1.target as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         switch(_loc2_.name)
         {
            case "ctlg_wall_pattern_prev":
               changePattern(const_197,-1);
               break;
            case "ctlg_wall_pattern_next":
               changePattern(const_197,1);
               break;
            case "ctlg_wall_color_prev":
               changeColor(const_197,-1);
               break;
            case "ctlg_wall_color_next":
               changeColor(const_197,1);
               break;
            case "ctlg_buy_wall":
               _loc3_ = var_1307[var_314];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page,var_1157);
               }
               break;
            case "ctlg_floor_pattern_prev":
               changePattern(const_198,-1);
               break;
            case "ctlg_floor_pattern_next":
               changePattern(const_198,1);
               break;
            case "ctlg_floor_color_prev":
               changeColor(const_198,-1);
               break;
            case "ctlg_floor_color_next":
               changeColor(const_198,1);
               break;
            case "ctlg_buy_floor":
               _loc3_ = var_1304[var_315];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page,_floorType);
               }
               break;
            case "ctlg_landscape_pattern_next":
               changePattern(const_91,-1);
               break;
            case "ctlg_landscape_pattern_prev":
               changePattern(const_91,1);
               break;
            case "ctlg_landscape_color_prev":
               changeColor(const_91,-1);
               break;
            case "ctlg_landscape_color_next":
               changeColor(const_91,1);
               break;
            case "ctlg_buy_landscape":
               _loc3_ = var_1303[var_316];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page,var_1155);
               }
               break;
            default:
               Logger.log("Spaces, unknown button: " + _loc2_.name);
         }
         updateConfiguration();
         retrieveSpacesPreview();
      }
      
      private function retrieveSpacesPreview() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:ImageResult = page.viewer.roomEngine.getRoomImage(_floorType,var_1157,var_1155,64,this,"window_romantic_wide");
         var _loc3_:ImageResult = page.viewer.roomEngine.getGenericRoomObjectImage("window_romantic_wide","",new Vector3d(180,0,0),64,this,"window_romantic_wide");
         if(_loc2_ != null && _loc3_ != null)
         {
            var_1306 = _loc2_.id;
            var_1305 = _loc3_.id;
            _loc4_ = _loc2_.data as BitmapData;
            _loc5_ = _loc3_.data as BitmapData;
            if(var_269 != null)
            {
               var_269.dispose();
            }
            if(var_268 != null)
            {
               var_268.dispose();
            }
            var_269 = _loc4_;
            var_268 = _loc5_;
            setRoomImage(_loc4_,_loc5_);
         }
      }
   }
}
