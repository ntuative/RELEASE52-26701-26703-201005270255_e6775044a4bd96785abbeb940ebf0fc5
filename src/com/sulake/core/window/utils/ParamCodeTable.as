package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_119;
         param1["bound_to_parent_rect"] = const_92;
         param1["child_window"] = const_956;
         param1["embedded_controller"] = const_319;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_627;
         param1["mouse_dragging_target"] = const_218;
         param1["mouse_dragging_trigger"] = const_314;
         param1["mouse_scaling_target"] = const_266;
         param1["mouse_scaling_trigger"] = const_502;
         param1["horizontal_mouse_scaling_trigger"] = const_216;
         param1["vertical_mouse_scaling_trigger"] = const_223;
         param1["observe_parent_input_events"] = const_877;
         param1["optimize_region_to_layout_size"] = const_466;
         param1["parent_window"] = const_927;
         param1["relative_horizontal_scale_center"] = const_166;
         param1["relative_horizontal_scale_fixed"] = const_118;
         param1["relative_horizontal_scale_move"] = const_327;
         param1["relative_horizontal_scale_strech"] = const_283;
         param1["relative_scale_center"] = const_1012;
         param1["relative_scale_fixed"] = const_723;
         param1["relative_scale_move"] = const_1008;
         param1["relative_scale_strech"] = const_1035;
         param1["relative_vertical_scale_center"] = const_162;
         param1["relative_vertical_scale_fixed"] = const_141;
         param1["relative_vertical_scale_move"] = const_326;
         param1["relative_vertical_scale_strech"] = const_262;
         param1["on_resize_align_left"] = const_621;
         param1["on_resize_align_right"] = const_414;
         param1["on_resize_align_center"] = const_430;
         param1["on_resize_align_top"] = const_745;
         param1["on_resize_align_bottom"] = const_371;
         param1["on_resize_align_middle"] = const_384;
         param1["on_accommodate_align_left"] = const_825;
         param1["on_accommodate_align_right"] = const_374;
         param1["on_accommodate_align_center"] = const_580;
         param1["on_accommodate_align_top"] = const_920;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_645;
         param1["route_input_events_to_parent"] = const_417;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_1009;
         param1["scalable_with_mouse"] = const_830;
         param1["reflect_horizontal_resize_to_parent"] = const_433;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_258;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
