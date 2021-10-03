package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.FriendRequestsView;
   import com.sulake.habbo.friendlist.FriendsView;
   import com.sulake.habbo.friendlist.SearchView;
   
   public class FriendListTabs
   {
       
      
      private var var_1841:int = 200;
      
      private var var_713:int = 200;
      
      private var var_405:IFriendListTabsDeps;
      
      private var var_452:Array;
      
      private var var_1492:FriendListTab;
      
      private var var_1491:int = 200;
      
      public function FriendListTabs(param1:IFriendListTabsDeps)
      {
         var_452 = new Array();
         super();
         var_405 = param1;
         var_452.push(new FriendListTab(var_405.getFriendList(),FriendListTab.const_93,new FriendsView(),"${friendlist.friends}","friends_footer","hdr_friends"));
         var_452.push(new FriendListTab(var_405.getFriendList(),FriendListTab.const_88,new FriendRequestsView(),"${friendlist.tab.friendrequests}","friend_requests_footer","hdr_friend_requests"));
         var_452.push(new FriendListTab(var_405.getFriendList(),FriendListTab.const_303,new SearchView(),"${generic.search}","search_footer","hdr_search"));
         toggleSelected(null);
      }
      
      public function findSelectedTab() : FriendListTab
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
      
      public function get tabContentWidth() : int
      {
         return var_1491 - 2;
      }
      
      public function toggleSelected(param1:FriendListTab) : void
      {
         var _loc2_:FriendListTab = findSelectedTab();
         if(_loc2_ == null)
         {
            var_713 = var_1841;
            setSelected(determineDisplayedTab(param1),true);
         }
         else if(_loc2_ == param1 || param1 == null)
         {
            var_1841 = var_713;
            var_713 = 0;
            clearSelections();
         }
         else
         {
            setSelected(determineDisplayedTab(param1),true);
         }
      }
      
      public function clearSelections() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_452)
         {
            _loc1_.setSelected(false);
         }
      }
      
      public function set tabContentHeight(param1:int) : void
      {
         var_713 = param1;
      }
      
      public function findTab(param1:int) : FriendListTab
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
      
      private function setSelected(param1:FriendListTab, param2:Boolean) : void
      {
         var _loc3_:FriendListTab = findSelectedTab();
         clearSelections();
         param1.setSelected(param2);
         if(param2)
         {
            var_1492 = param1;
         }
      }
      
      private function determineDisplayedTab(param1:FriendListTab) : FriendListTab
      {
         if(param1 != null)
         {
            return param1;
         }
         if(var_1492 != null)
         {
            return var_1492;
         }
         return var_452[0];
      }
      
      public function get tabContentHeight() : int
      {
         return var_713;
      }
      
      public function set windowWidth(param1:int) : void
      {
         var_1491 = param1;
      }
      
      public function getTabs() : Array
      {
         return var_452;
      }
      
      public function get windowWidth() : int
      {
         return var_1491;
      }
   }
}
