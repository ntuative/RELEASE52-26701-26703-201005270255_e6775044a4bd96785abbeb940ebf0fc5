package com.sulake.habbo.catalog.recycler
{
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   
   public class PrizeContainer extends PrizeGridItem
   {
       
      
      private var var_1770:String;
      
      private var var_2388:PrizeGridItem;
      
      private var var_1771:int;
      
      private var _furnitureData:IFurnitureData;
      
      private var var_1466:int;
      
      public function PrizeContainer(param1:String, param2:int, param3:IFurnitureData, param4:int)
      {
         super();
         var_1770 = param1;
         var_1466 = param2;
         _furnitureData = param3;
         var_1771 = param4;
      }
      
      public function get oddsLevelId() : int
      {
         return var_1771;
      }
      
      public function get productItemType() : String
      {
         return var_1770;
      }
      
      public function get title() : String
      {
         if(_furnitureData == null)
         {
            return "";
         }
         return _furnitureData.title;
      }
      
      public function get gridItem() : PrizeGridItem
      {
         return var_2388;
      }
      
      public function setIcon(param1:IRoomEngine) : void
      {
         initProductIcon(param1,_furnitureData.type,var_1466);
      }
      
      public function get productItemTypeId() : int
      {
         return var_1466;
      }
   }
}
