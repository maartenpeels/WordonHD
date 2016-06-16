package nl.hbgames.logic.game.overlay
{
   import nl.hbgames.logic.game.board.BaseTable;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import nl.hbgames.data.LetterDictionary;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.logic.game.board.BaseBlock;
   import nl.hbgames.data.AppData;
   import nl.hbgames.logic.game.board.BlockSlot;
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.Glossary;
   import nl.hbgames.WordOn;
   import flash.events.TimerEvent;
   import nl.hbgames.logic.game.BaseGame;
   import nl.hbgames.managers.AssetManager;
   
   public class WordAnalyzer extends libWordStrength
   {
       
      private const MIN_LETTERS_NEEDED:int = 2;
      
      private const ANIMATION_DELAY:int = 250;
      
      private const NORMAL_TXT_COLOR:int = 1059941;
      
      private const BONUS_TXT_COLOR:int = 13255424;
      
      private var _IsValidWord:Boolean;
      
      private var _IsDoubleWordValue:Boolean;
      
      private var _WordValue:int;
      
      private var _MinWordValue:int;
      
      private var _MaxWordValue:int;
      
      private var _WordStrength:int;
      
      private var _BonusCoins:int;
      
      private var _Table:BaseTable;
      
      private var _QuestionMark:MovieClip;
      
      private var _Sparks:MovieClip;
      
      private var _RewardAnimTimer:Timer;
      
      public function WordAnalyzer(param1:BaseTable)
      {
         super();
         _Table = param1;
         _IsValidWord = false;
         _IsDoubleWordValue = false;
         _WordValue = 0;
         _WordStrength = 0;
         this.lblValue.text = "0";
         this.mouseChildren = false;
         this.visible = false;
         this.scaleX = this.scaleX * AssetManager.ContentScaleFactor;
         this.scaleY = this.scaleY * AssetManager.ContentScaleFactor;
         this.gotoAndStop(1);
      }
      
      public function get IsValid() : Boolean
      {
         return _IsValidWord;
      }
      
      public function get IsDoubleWordValue() : Boolean
      {
         return _IsDoubleWordValue;
      }
      
      public function DetermineMinWordValue(param1:Array) : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc2_ - LetterDictionary.GetValue(ClientData.Instance.CurrentGameSession.DictionaryLanguage,WordParser.RemoveTagsFromString(param1[_loc3_],false));
            _loc3_++;
         }
         _MinWordValue = _loc2_;
      }
      
      public function SetMaxWordValue(param1:int) : void
      {
         _MaxWordValue = param1;
      }
      
      public function AnalyzeTable() : void
      {
         var _loc2_:* = 0;
         var _loc6_:* = 0;
         var _loc3_:* = null;
         var _loc4_:Vector.<BaseBlock> = _Table.GetBlocks(true);
         var _loc1_:* = false;
         var _loc5_:* = false;
         _loc6_ = 0;
         while(_loc6_ < _loc4_.length)
         {
            _loc3_ = _loc4_[_loc6_];
            if(_loc3_ != null)
            {
               if(_loc1_)
               {
                  _loc5_ = false;
                  break;
               }
               _loc2_ = _loc6_;
               _loc5_ = true;
            }
            else
            {
               _loc1_ = true;
            }
            _loc6_++;
         }
         _IsValidWord = _loc2_ >= 2 - 1?_loc5_:false;
         if(_IsValidWord)
         {
            _WordValue = CalculateValue(_Table.GetBlocks(false),_Table.GetBlocks(false,true));
            _WordStrength = CalculateStrength(_WordValue);
            Show(_loc4_[_loc2_]);
         }
         else
         {
            Hide();
         }
      }
      
      public function GetWord(param1:Boolean = true, param2:Boolean = false) : String
      {
         var _loc4_:* = undefined;
         var _loc6_:* = 0;
         var _loc3_:* = null;
         var _loc5_:String = "";
         if(_IsValidWord)
         {
            _loc4_ = _Table.GetBlocks();
            _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               _loc3_ = _loc4_[_loc6_];
               _loc5_ = _loc5_ + _loc3_.GetLetter(param1,param2);
               _loc6_++;
            }
         }
         return _loc5_;
      }
      
      private function CalculateValue(param1:Vector.<BaseBlock>, param2:Vector.<BaseBlock>) : int
      {
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc4_:* = 0;
         var _loc3_:* = 0;
         _loc6_ = 0;
         while(_loc6_ < param1.length)
         {
            _loc5_ = param1[_loc6_];
            _loc4_ = _loc4_ + _loc5_.GetValue(true);
            _loc6_++;
         }
         if(param2.length == 0 && ClientData.Instance.CurrentGameSession.IsMyTurn)
         {
            _loc4_ = _loc4_ * 2;
            _IsDoubleWordValue = true;
         }
         else
         {
            _loc6_ = 0;
            while(_loc6_ < param2.length)
            {
               _loc4_ = _loc4_ - param2[_loc6_].GetValue();
               _loc6_++;
            }
            _IsDoubleWordValue = false;
         }
         return _loc4_;
      }
      
      private function CalculateStrength(param1:int) : int
      {
         var _loc5_:* = 0;
         if(_MaxWordValue == 2147483647)
         {
            return 0;
         }
         var param1:int = param1 + Math.abs(_MinWordValue);
         var _loc6_:int = _MaxWordValue + Math.abs(_MinWordValue);
         var _loc3_:Number = _MinWordValue == 0 && _loc6_ == 0?1:param1 / _loc6_;
         var _loc4_:* = 1;
         var _loc2_:Array = AppData.Instance.StarRating;
         _loc5_ = 0;
         while(_loc5_ < _loc2_.length)
         {
            if(_loc2_[_loc5_] > _loc3_ || _loc5_ == _loc2_.length - 1)
            {
               _loc4_ = _loc5_;
               break;
            }
            _loc5_++;
         }
         if(_loc4_ >= _loc2_.length - 1)
         {
            _loc4_ = _loc2_.length - 1;
         }
         return _loc4_;
      }
      
      private function Show(param1:BaseBlock) : void
      {
         var _loc5_:* = false;
         var _loc6_:BlockSlot = param1.Slot;
         var _loc3_:Boolean = ClientData.Instance.CurrentGameSession.IsStrengthMeterEnabled;
         var _loc4_:Number = this.width >> 1;
         var _loc2_:Number = _loc6_.x - _loc4_;
         if(_loc2_ < 0)
         {
            _loc2_ = 0.0;
         }
         else if(_loc2_ + this.width > Settings.SCREEN_WIDTH)
         {
            _loc2_ = Settings.SCREEN_WIDTH - this.width;
         }
         this.x = _loc2_;
         this.mcPointer.x = (_loc6_.x - _loc2_) / this.scaleX;
         this.visible = true;
         this.mcCheckMark.visible = false;
         this.mcCheckMark.gotoAndStop(1);
         RemoveSparks();
         if(_loc3_)
         {
            RemoveQuestionMark();
            this.lblValue.text = _WordValue.toString();
            this.lblValue.textColor = _IsDoubleWordValue?13255424:1059941;
            this.mcPointer.gotoAndStop(_IsDoubleWordValue?2:1.0);
            this.mcBackground.gotoAndStop(_IsDoubleWordValue?2:1.0);
            _loc5_ = Glossary.Instance.Exists(ClientData.Instance.CurrentGameSession.DictionaryLanguage,GetWord(false,true));
            this.mcCheckMark.visible = true;
            if(_loc5_)
            {
               this.gotoAndStop(_WordStrength + 1);
               this.mcCheckMark.gotoAndStop(1);
               if(_WordValue == _MaxWordValue)
               {
                  ShowSparks();
               }
               if(_WordStrength == 5)
               {
                  WordOn.Instance.Audio.Play("sfxWordalyzer2");
               }
               else
               {
                  WordOn.Instance.Audio.Play("sfxWordalyzer1");
               }
            }
            else
            {
               this.gotoAndStop(1);
               this.mcCheckMark.gotoAndStop(2);
            }
         }
         else
         {
            this.gotoAndStop(1);
            ShowQuestionMark();
            this.lblValue.text = "";
            _QuestionMark.gotoAndPlay(2);
            this.mcPointer.gotoAndStop(3);
            this.mcBackground.gotoAndStop(3);
         }
      }
      
      public function ShowReward(param1:int, param2:int = 0) : void
      {
         _WordStrength = param1 - param2;
         _BonusCoins = param2;
         this.gotoAndStop(_WordStrength + 1);
         _RewardAnimTimer = new Timer(250,_WordStrength + _BonusCoins + 1);
         _RewardAnimTimer.addEventListener("timer",OnSpawnCoin);
         _RewardAnimTimer.start();
         this.mcBlink.gotoAndPlay(2);
         this.visible = true;
      }
      
      private function OnSpawnCoin(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(_WordStrength > 0)
         {
            _loc2_ = ["sfxCoinReward5","sfxCoinReward4","sfxCoinReward3","sfxCoinReward2","sfxCoinReward1"];
            WordOn.Instance.Audio.Play(_loc2_[_WordStrength - 1]);
            _WordStrength = _WordStrength - 1;
            BaseGame.Instance.SpawnCoinParticle(false);
            this.gotoAndStop(_WordStrength + 1);
         }
         else if(_BonusCoins > 0)
         {
            WordOn.Instance.Audio.Play("sfxCoinReward1");
            _BonusCoins = _BonusCoins - 1;
            BaseGame.Instance.SpawnCoinParticle(true);
         }
         if(_RewardAnimTimer.currentCount == _RewardAnimTimer.repeatCount)
         {
            _RewardAnimTimer.stop();
            _RewardAnimTimer.removeEventListener("timer",OnSpawnCoin);
            _RewardAnimTimer = null;
            BaseGame.Instance.FinishWord();
            Hide();
         }
      }
      
      public function Hide() : void
      {
         this.gotoAndStop(1);
         this.visible = false;
         this.lblValue.text = "0";
         _IsValidWord = false;
      }
      
      private function ShowQuestionMark() : void
      {
         if(_QuestionMark == null)
         {
            _QuestionMark = AssetManager.GetDefinition("libQuestionMark",false);
            _QuestionMark.x = 48;
            _QuestionMark.y = 32;
            this.addChild(_QuestionMark);
         }
      }
      
      private function RemoveQuestionMark() : void
      {
         if(_QuestionMark != null)
         {
            if(this.contains(_QuestionMark))
            {
               this.removeChild(_QuestionMark);
            }
            _QuestionMark = null;
         }
      }
      
      private function ShowSparks() : void
      {
         if(_Sparks == null)
         {
            _Sparks = AssetManager.GetDefinition("libStrengthBarSparks",false);
            this.addChild(_Sparks);
         }
      }
      
      private function RemoveSparks() : void
      {
         if(_Sparks != null)
         {
            if(this.contains(_Sparks))
            {
               this.removeChild(_Sparks);
            }
            _Sparks = null;
         }
      }
      
      public function Dispose() : void
      {
         RemoveQuestionMark();
         if(_RewardAnimTimer != null)
         {
            _RewardAnimTimer.stop();
            _RewardAnimTimer.removeEventListener("timer",OnSpawnCoin);
            _RewardAnimTimer = null;
         }
         _Table = null;
      }
   }
}
