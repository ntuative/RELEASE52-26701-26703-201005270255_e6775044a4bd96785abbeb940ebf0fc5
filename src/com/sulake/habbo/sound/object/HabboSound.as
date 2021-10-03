package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1024:SoundChannel = null;
      
      private var var_848:Boolean;
      
      private var var_1023:Sound = null;
      
      private var var_745:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1023 = param1;
         var_1023.addEventListener(Event.COMPLETE,onComplete);
         var_745 = 1;
         var_848 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_848;
      }
      
      public function stop() : Boolean
      {
         var_1024.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_848 = false;
         var_1024 = var_1023.play(0);
         this.volume = var_745;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_745;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1024.position;
      }
      
      public function get length() : Number
      {
         return var_1023.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_745 = param1;
         if(var_1024 != null)
         {
            var_1024.soundTransform = new SoundTransform(var_745);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_848 = true;
      }
   }
}
