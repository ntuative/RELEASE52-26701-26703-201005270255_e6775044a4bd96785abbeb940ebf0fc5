package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_303:String;
      
      private var var_2365:String;
      
      private var var_2364:int;
      
      private var var_2363:int;
      
      private var var_581:String;
      
      private var var_1320:String;
      
      private var _name:String;
      
      private var var_528:int;
      
      private var var_927:int;
      
      private var var_2362:int;
      
      private var _respectTotal:int;
      
      private var var_2361:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2363;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1320;
      }
      
      public function get customData() : String
      {
         return this.var_2365;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_528;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2364;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2361;
      }
      
      public function get figure() : String
      {
         return this.var_303;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_581;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_303 = param1.readString();
         this.var_581 = param1.readString();
         this.var_2365 = param1.readString();
         this.var_1320 = param1.readString();
         this.var_2362 = param1.readInteger();
         this.var_2361 = param1.readString();
         this.var_2364 = param1.readInteger();
         this.var_2363 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_927 = param1.readInteger();
         this.var_528 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2362;
      }
      
      public function get respectLeft() : int
      {
         return this.var_927;
      }
   }
}
