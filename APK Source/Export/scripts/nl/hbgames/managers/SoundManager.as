package nl.hbgames.managers
{
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   import flash.media.Sound;
   import flash.net.URLRequest;
   import flash.media.SoundChannel;
   import nl.hbgames.data.AppData;
   import com.greensock.TweenLite;
   
   public class SoundManager extends Object
   {
      
      private static var _Instance:SoundManager = null;
      
      private static var _GlobalVolume:Number;
      
      private static var _GlobalMuted:Boolean;
       
      private var _Sounds:Dictionary;
      
      private var _Muted:Boolean;
      
      public function SoundManager()
      {
         super();
         _Instance = this;
         _Sounds = new Dictionary(true);
         _Muted = false;
         _GlobalVolume = SoundManager.GetVolume();
         _GlobalMuted = false;
         SoundMixer.audioPlaybackMode = "ambient";
      }
      
      public static function Mute() : void
      {
         _GlobalMuted = true;
         SoundManager.SetVolume(0);
      }
      
      public static function UnMute() : void
      {
         _GlobalMuted = false;
         SoundManager.SetVolume(_GlobalVolume);
      }
      
      public static function ToggleMute() : void
      {
         _GlobalMuted = !_GlobalMuted;
         if(_GlobalMuted)
         {
            Mute();
         }
         else
         {
            UnMute();
         }
      }
      
      public static function IsMuted() : Boolean
      {
         return _GlobalMuted;
      }
      
      public static function GetVolume() : Number
      {
         return SoundMixer.soundTransform.volume;
      }
      
      public static function SetVolume(param1:Number) : void
      {
         var _loc2_:SoundTransform = new SoundTransform(param1);
         SoundMixer.soundTransform = _loc2_;
      }
      
      public function get Instance() : SoundManager
      {
         return _Instance;
      }
      
      public function Load(param1:String, param2:String) : Boolean
      {
         var _loc3_:Sound = new Sound(new URLRequest(param1));
         return Add(_loc3_,param2);
      }
      
      public function Add(param1:Sound, param2:String) : Boolean
      {
         if(_Sounds[param2] != undefined)
         {
            return false;
         }
         var _loc3_:Object = {};
         _loc3_.name = param2;
         _loc3_.sound = param1;
         _loc3_.channel = new SoundChannel();
         _loc3_.position = 0;
         _loc3_.volume = 1;
         _loc3_.pan = 0;
         _loc3_.loops = 0;
         _loc3_.paused = true;
         _Sounds[param2] = _loc3_;
         return true;
      }
      
      public function Remove(param1:String) : Boolean
      {
         if(_Sounds[param1] == undefined)
         {
            return false;
         }
         delete _Sounds[param1];
         return true;
      }
      
      public function Play(param1:String, param2:Number = 1.0, param3:Number = 0.0, param4:int = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = true, param8:Function = null, param9:Boolean = false) : Boolean
      {
         if(!AppData.Instance.Audio)
         {
            return false;
         }
         if(_Sounds[param1] == undefined || param6 && param7 && !_Sounds[param1].paused)
         {
            return false;
         }
         var _loc10_:Object = _Sounds[param1];
         if(param6 && !_loc10_.paused)
         {
            Stop(param1);
         }
         _loc10_.volume = param2;
         _loc10_.pan = param3;
         _loc10_.loops = param4;
         if(_loc10_.paused)
         {
            _loc10_.channel = _loc10_.sound.play(param9?param5:_loc10_.position,_loc10_.loops,new SoundTransform(_loc10_.volume,_loc10_.pan));
         }
         else
         {
            _loc10_.channel = _loc10_.sound.play(param5,_loc10_.loops,new SoundTransform(_loc10_.volume,_loc10_.pan));
         }
         if(_loc10_.channel == null)
         {
            return false;
         }
         if(param8 != null)
         {
            if(!SoundChannel(_loc10_.channel).hasEventListener("soundComplete"))
            {
               _loc10_.channel.addEventListener("soundComplete",param8);
            }
         }
         _loc10_.paused = false;
         return true;
      }
      
      public function Fade(param1:String, param2:Number = 0, param3:Number = 1, param4:Function = null) : Boolean
      {
         name = param1;
         targetVolume = param2;
         length = param3;
         callback = param4;
         if(_Sounds[name] == undefined)
         {
            return false;
         }
         TweenLite.to(_Sounds[name],length,{
            "volume":targetVolume,
            "onUpdate":function():void
            {
               var _loc1_:Object = _Sounds[name];
               SetVolume(name,_loc1_.volume);
            },
            "onComplete":function():void
            {
               if(callback != null)
               {
                  callback();
               }
            }
         });
         return true;
      }
      
      public function Stop(param1:String) : Boolean
      {
         if(_Sounds[param1] == undefined)
         {
            return false;
         }
         var _loc2_:Object = _Sounds[param1];
         _loc2_.paused = true;
         if(_loc2_.channel != null)
         {
            _loc2_.channel.stop();
            _loc2_.position = _loc2_.channel.position;
         }
         return true;
      }
      
      public function Pause(param1:String) : Boolean
      {
         if(_Sounds[param1] == undefined)
         {
            return false;
         }
         var _loc2_:Object = _Sounds[param1];
         _loc2_.paused = true;
         _loc2_.position = _loc2_.channel.position;
         _loc2_.channel.stop();
         return true;
      }
      
      public function Mute() : void
      {
         _Muted = true;
         var _loc3_:* = 0;
         var _loc2_:* = _Sounds;
         for(var _loc1_ in _Sounds)
         {
            SetVolume(_loc1_,0);
         }
      }
      
      public function UnMute() : void
      {
         _Muted = false;
         var _loc3_:* = 0;
         var _loc2_:* = _Sounds;
         for(var _loc1_ in _Sounds)
         {
            SetVolume(_loc1_,_Sounds[_loc1_].volume);
         }
      }
      
      public function ToggleMute() : void
      {
         _Muted = !_Muted;
         if(_Muted)
         {
            Mute();
         }
         else
         {
            UnMute();
         }
      }
      
      public function IsMuted() : Boolean
      {
         return _Muted;
      }
      
      public function IsPaused(param1:String) : Boolean
      {
         return _Sounds[param1].paused;
      }
      
      public function RemoveAll() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = _Sounds;
         for(var _loc1_ in _Sounds)
         {
            delete _Sounds[_loc1_];
         }
      }
      
      public function PlayAll() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = _Sounds;
         for(var _loc1_ in _Sounds)
         {
            Play(_loc1_);
         }
      }
      
      public function PauseAll() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = _Sounds;
         for(var _loc1_ in _Sounds)
         {
            Pause(_loc1_);
         }
      }
      
      public function StopAll() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = _Sounds;
         for(var _loc1_ in _Sounds)
         {
            Stop(_loc1_);
         }
      }
      
      public function SetVolume(param1:String, param2:Number) : Boolean
      {
         if(_Sounds[param1] == undefined)
         {
            return false;
         }
         var _loc4_:Object = _Sounds[param1];
         var _loc3_:SoundTransform = _loc4_.channel.soundTransform;
         _loc3_.volume = param2;
         _loc4_.channel.soundTransform = _loc3_;
         return true;
      }
      
      public function GetVolume(param1:String) : Number
      {
         if(_Sounds[param1] == undefined)
         {
            return -1;
         }
         return _Sounds[param1].channel.soundTransform.volume;
      }
      
      public function SetPosition(param1:String, param2:Number) : Boolean
      {
         if(_Sounds[param1] == undefined)
         {
            return false;
         }
         var _loc3_:Object = _Sounds[param1];
         _loc3_.channel.position = param2;
         return true;
      }
      
      public function GetPosition(param1:String) : Number
      {
         if(_Sounds[param1] == undefined)
         {
            return -1;
         }
         return _Sounds[param1].channel.position;
      }
      
      public function GetDuration(param1:String) : Number
      {
         if(_Sounds[param1] == undefined)
         {
            return -1;
         }
         return _Sounds[param1].sound.length;
      }
      
      public function GetSound(param1:String) : Sound
      {
         if(_Sounds[param1] == undefined)
         {
            return null;
         }
         return _Sounds[param1];
      }
      
      public function Dispose() : void
      {
         RemoveAll();
         _Sounds = null;
         _Instance = null;
      }
   }
}
