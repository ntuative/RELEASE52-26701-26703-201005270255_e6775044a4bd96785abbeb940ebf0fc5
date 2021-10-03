package com.sulake.habbo.avatar.legs
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.common.CategoryBaseModel;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   
   public class LegsModel extends CategoryBaseModel implements IAvatarEditorCategoryModel
   {
       
      
      public function LegsModel(param1:HabboAvatarEditor)
      {
         super(param1);
      }
      
      override protected function init() : void
      {
         super.init();
         initCategory(FigureData.const_186);
         initCategory(FigureData.const_171);
         initCategory(FigureData.const_193);
         var_165 = true;
         if(!_view)
         {
            _view = new LegsView(this,controller.windowManager,controller.assets);
            if(_view)
            {
               _view.init();
            }
         }
      }
   }
}
