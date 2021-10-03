package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1328:String = "F";
      
      public static const const_882:String = "M";
       
      
      private var var_83:Number = 0;
      
      private var var_303:String = "";
      
      private var var_2079:int = 0;
      
      private var var_1718:String = "";
      
      private var var_1719:int = 0;
      
      private var var_1717:int = 0;
      
      private var var_1720:String = "";
      
      private var var_581:String = "";
      
      private var _id:int = 0;
      
      private var var_205:Boolean = false;
      
      private var var_225:int = 0;
      
      private var var_2080:String = "";
      
      private var _name:String = "";
      
      private var var_1716:int = 0;
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_225;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_205)
         {
            var_225 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_205)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2079;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_205)
         {
            var_1719 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2080;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_205)
         {
            var_1720 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_205)
         {
            var_2080 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_205)
         {
            var_1717 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_205)
         {
            var_303 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_205)
         {
            var_2079 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_205)
         {
            var_581 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1719;
      }
      
      public function get groupID() : String
      {
         return var_1720;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_205)
         {
            var_1716 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_205)
         {
            var_1718 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_205 = true;
      }
      
      public function get sex() : String
      {
         return var_581;
      }
      
      public function get figure() : String
      {
         return var_303;
      }
      
      public function get webID() : int
      {
         return var_1716;
      }
      
      public function get custom() : String
      {
         return var_1718;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_205)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_205)
         {
            var_84 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_205)
         {
            var_83 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1717;
      }
   }
}
