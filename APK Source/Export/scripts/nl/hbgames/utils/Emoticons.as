package nl.hbgames.utils
{
   import flash.display.Bitmap;
   
   public class Emoticons extends Object
   {
      
      public static const ICON_HAPPY:String = ":)";
      
      public static const ICON_CONFUSED:String = ":S";
      
      public static const ICON_SHOCKED:String = ":O";
      
      public static const ICON_SILENCE:String = ":|";
      
      public static const ICON_LAUGH_TEETH:String = ":D";
      
      public static const ICON_WINK:String = ";)";
      
      public static const ICON_SAD:String = ":/";
      
      public static const ICON_COIN:String = "($)";
      
      public static const ICON_STAR:String = "(*)";
      
      public static const ICON_ANGEL:String = "(A)";
      
      public static const ICON_ANGRY:String = ":@";
      
      public static const ICON_AWE:String = ":0";
      
      public static const ICON_TONGUE:String = ":P";
      
      public static const ICON_CRYING:String = ":\'(";
      
      public static const ICON_DEAD:String = "x|";
      
      public static const ICON_DOWN:String = ":(";
      
      public static const ICON_DEVILISH:String = "(6)";
      
      public static const ICON_FLIRT:String = ":x";
      
      public static const ICON_GRUMPY:String = ">(";
      
      public static const ICON_BLUSH:String = ":$";
      
      public static const ICON_HEART:String = "<3";
      
      public static const ICON_LOVE_EYES:String = "(L)";
      
      public static const ICON_LIPS:String = "(K)";
      
      public static const ICON_WINK_NAUGHTY:String = ";P";
      
      public static const ICON_COIN_BONUS:String = "(+)";
      
      public static const LIST_ICONS:Array = [":)",":S",":O",":|",":D",";)",":/","($)","(*)","(A)",":@",":0",":P",":\'(","x|",":(","(6)",":x",">(",":$","<3","(L)","(K)",";P","(+)"];
      
      private static const LIST_GFX_CLASSES:Array = [gfxEmoBasicHappy,gfxEmoBasicConfused,gfxEmoBasicShocked,gfxEmoBasicSilence,gfxEmoBasicLaughingTeeth,gfxEmoBasicWinking,gfxEmoBasicSad,gfxEmoReservedCoin,gfxEmoReservedStar,gfxEmoBasicAngel,gfxEmoBasicAngryRed,gfxEmoBasicAwe,gfxEmoBasicCrazy,gfxEmoBasicCrying,gfxEmoBasicDead,gfxEmoBasicDefeated,gfxEmoBasicDevil,gfxEmoBasicFlirt,gfxEmoBasicGrumpy,gfxEmoBasicBlush,gfxEmoBasicHeart,gfxEmoBasicLove,gfxEmoBasicKiss,gfxEmoBasicNaughtyWink,gfxEmoReservedCoinBonus];
      
      private static const LIST_EMOJI_CODES:Array = [{
         "t":":)",
         "cc":[[55357,56832],[55357,56835]]
      },{
         "t":":S",
         "cc":[[55357,56854]]
      },{
         "t":":O",
         "cc":[[55357,56881],[55357,56883],[55357,56878],[55357,56879]]
      },{
         "t":":|",
         "cc":[[55357,56848],[55357,56849]]
      },{
         "t":":D",
         "cc":[[55357,56836],[55357,56834]]
      },{
         "t":";)",
         "cc":[[55357,56841]]
      },{
         "t":":/",
         "cc":[[55357,56863],[55357,56853],[55357,56880]]
      },{
         "t":"(A)",
         "cc":[[55357,56839]]
      },{
         "t":":@",
         "cc":[[55357,56865]]
      },{
         "t":":0",
         "cc":[[55357,56871],[55357,56872]]
      },{
         "t":":P",
         "cc":[[55357,56861],[55357,56843],[55357,56859]]
      },{
         "t":":\'(",
         "cc":[[55357,56866],[55357,56869],[55357,56877]]
      },{
         "t":"x|",
         "cc":[[55357,56885],[55357,56882]]
      },{
         "t":":(",
         "cc":[[55357,56862],[55357,56867],[55357,56873],[55357,56875]]
      },{
         "t":"(6)",
         "cc":[[55357,56833],[55357,56876],[55357,56441],[55357,56442]]
      },{
         "t":":x",
         "cc":[[55357,56856]]
      },{
         "t":">(",
         "cc":[[55357,56864],[55357,56868]]
      },{
         "t":":$",
         "cc":[[9786],[55357,56858]]
      },{
         "t":"<3",
         "cc":[[10084],[55357,56467],[55357,56469],[55357,56470],[55357,56471],[55357,56472],[55357,56473],[55357,56474],[55357,56475],[55357,56476],[55357,56477],[55357,56479]]
      },{
         "t":"(L)",
         "cc":[[55357,56845]]
      },{
         "t":"(K)",
         "cc":[[55357,56459],[55357,56463],[55357,56388]]
      },{
         "t":";P",
         "cc":[[55357,56860]]
      },{
         "t":"($)",
         "cc":[[55357,56496],[55357,56501]]
      },{
         "t":"(+)",
         "cc":[[55357,56504]]
      },{
         "t":"(*)",
         "cc":[[11088],[55356,57119]]
      }];
       
      public function Emoticons()
      {
         super();
      }
      
      public static function convertEmoji(param1:String) : String
      {
         var _loc9_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:* = null;
         var _loc8_:* = null;
         var _loc7_:* = 0;
         var _loc5_:* = false;
         var _loc4_:* = 0;
         var _loc3_:* = null;
         _loc9_ = 0;
         while(_loc9_ < param1.length)
         {
            if(param1.charCodeAt(_loc9_) > 9500)
            {
               _loc6_ = 0;
               while(_loc6_ < LIST_EMOJI_CODES.length)
               {
                  _loc2_ = LIST_EMOJI_CODES[_loc6_];
                  _loc8_ = _loc2_.cc;
                  _loc7_ = 0;
                  while(_loc7_ < _loc8_.length)
                  {
                     _loc5_ = true;
                     _loc4_ = 0;
                     while(_loc4_ < _loc8_[_loc7_].length)
                     {
                        if(_loc2_.cc[_loc7_][_loc4_] != param1.charCodeAt(_loc9_ + _loc4_))
                        {
                           _loc5_ = false;
                           break;
                        }
                        _loc4_++;
                     }
                     if(_loc5_)
                     {
                        _loc3_ = param1.substr(0,_loc9_) + _loc2_.t;
                        var param1:String = _loc3_ + param1.substr(_loc9_ + 2);
                        break;
                     }
                     _loc7_++;
                  }
                  _loc6_++;
               }
            }
            _loc9_++;
         }
         return param1;
      }
      
      public static function getBitmapIconByIndex(param1:int) : Bitmap
      {
         if(param1 >= 0 && param1 < LIST_GFX_CLASSES.length)
         {
            return new Bitmap(new LIST_GFX_CLASSES[param1]());
         }
         return null;
      }
   }
}
