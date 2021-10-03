package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_527;
         param1["bitmap"] = const_630;
         param1["border"] = const_680;
         param1["border_notify"] = const_1174;
         param1["button"] = const_485;
         param1["button_thick"] = const_679;
         param1["button_icon"] = const_1269;
         param1["button_group_left"] = const_671;
         param1["button_group_center"] = const_668;
         param1["button_group_right"] = const_752;
         param1["canvas"] = const_595;
         param1["checkbox"] = const_740;
         param1["closebutton"] = const_934;
         param1["container"] = const_331;
         param1["container_button"] = const_714;
         param1["display_object_wrapper"] = const_600;
         param1["dropmenu"] = const_400;
         param1["dropmenu_item"] = const_396;
         param1["frame"] = const_351;
         param1["frame_notify"] = const_1191;
         param1["header"] = const_525;
         param1["icon"] = const_954;
         param1["itemgrid"] = const_906;
         param1["itemgrid_horizontal"] = const_441;
         param1["itemgrid_vertical"] = const_589;
         param1["itemlist"] = const_867;
         param1["itemlist_horizontal"] = const_306;
         param1["itemlist_vertical"] = const_310;
         param1["maximizebox"] = const_1285;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1181;
         param1["submenu"] = const_1032;
         param1["minimizebox"] = const_1340;
         param1["notify"] = const_1177;
         param1["null"] = const_711;
         param1["password"] = const_706;
         param1["radiobutton"] = const_713;
         param1["region"] = const_477;
         param1["restorebox"] = const_1394;
         param1["scaler"] = const_582;
         param1["scaler_horizontal"] = const_1196;
         param1["scaler_vertical"] = const_1210;
         param1["scrollbar_horizontal"] = const_404;
         param1["scrollbar_vertical"] = const_696;
         param1["scrollbar_slider_button_up"] = const_1046;
         param1["scrollbar_slider_button_down"] = const_961;
         param1["scrollbar_slider_button_left"] = const_945;
         param1["scrollbar_slider_button_right"] = const_1048;
         param1["scrollbar_slider_bar_horizontal"] = const_900;
         param1["scrollbar_slider_bar_vertical"] = const_887;
         param1["scrollbar_slider_track_horizontal"] = const_989;
         param1["scrollbar_slider_track_vertical"] = const_1011;
         param1["scrollable_itemlist"] = const_1180;
         param1["scrollable_itemlist_vertical"] = const_454;
         param1["scrollable_itemlist_horizontal"] = const_948;
         param1["selector"] = const_757;
         param1["selector_list"] = const_726;
         param1["submenu"] = const_1032;
         param1["tab_button"] = const_659;
         param1["tab_container_button"] = const_1016;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_1042;
         param1["tab_selector"] = const_536;
         param1["text"] = const_653;
         param1["input"] = const_638;
         param1["toolbar"] = const_1360;
         param1["tooltip"] = const_325;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
