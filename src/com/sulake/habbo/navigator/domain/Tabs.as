package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_590:int = 6;
      
      public static const const_246:int = 5;
      
      public static const const_652:int = 2;
      
      public static const const_329:int = 9;
      
      public static const const_317:int = 4;
      
      public static const const_274:int = 2;
      
      public static const const_676:int = 4;
      
      public static const const_221:int = 8;
      
      public static const const_531:int = 7;
      
      public static const const_252:int = 3;
      
      public static const const_332:int = 1;
      
      public static const const_210:int = 5;
      
      public static const const_500:int = 12;
      
      public static const const_320:int = 1;
      
      public static const const_566:int = 11;
      
      public static const const_551:int = 3;
      
      public static const const_1642:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_452:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_452 = new Array();
         var_452.push(new Tab(_navigator,const_332,const_500,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_427));
         var_452.push(new Tab(_navigator,const_274,const_320,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_427));
         var_452.push(new Tab(_navigator,const_317,const_566,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_912));
         var_452.push(new Tab(_navigator,const_252,const_246,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_427));
         var_452.push(new Tab(_navigator,const_210,const_221,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_594));
         setSelectedTab(const_332);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_452)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_452)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_452)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_317;
      }
      
      public function get tabs() : Array
      {
         return var_452;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
