package nl.hbgames.data
{
   import flash.events.EventDispatcher;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.net.PHPWrapper;
   import flash.events.Event;
   import nl.hbgames.managers.MessageManager;
   import nl.hbgames.ui.popups.MessageBox;
   
   public class OverviewData extends EventDispatcher
   {
       
      private var _TotalList:Vector.<GameInfoData>;
      
      private var _PendingList:Vector.<PendingInviteData>;
      
      private var _OverviewID:String;
      
      public function OverviewData()
      {
         super();
         _TotalList = new Vector.<GameInfoData>();
         _PendingList = new Vector.<PendingInviteData>();
         _OverviewID = "0";
      }
      
      public function get IsInitialized() : Boolean
      {
         return _OverviewID != "0";
      }
      
      public function get OverviewID() : String
      {
         return _OverviewID;
      }
      
      public function get ActiveAmount() : int
      {
         var _loc2_:* = 0;
         var _loc1_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _TotalList.length)
         {
            if(_TotalList[_loc2_].IsTurn)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function ResetOverviewID() : void
      {
         _OverviewID = "0";
      }
      
      public function GetLists() : Object
      {
         var _loc4_:* = 0;
         var _loc2_:* = null;
         var _loc5_:Vector.<GameInfoData> = new Vector.<GameInfoData>();
         var _loc3_:Vector.<GameInfoData> = new Vector.<GameInfoData>();
         var _loc1_:Vector.<GameInfoData> = new Vector.<GameInfoData>();
         _loc4_ = 0;
         while(_loc4_ < _TotalList.length)
         {
            _loc2_ = _TotalList[_loc4_];
            if(_loc2_.IsFinished)
            {
               _loc1_.push(_loc2_);
            }
            else if(_loc2_.IsMyTurn)
            {
               _loc5_.push(_loc2_);
            }
            else
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         _loc5_.sort(OnTimeSort);
         _loc3_.sort(OnTimeSort);
         return {
            "yours":_loc5_,
            "theirs":_loc3_,
            "pending":_PendingList,
            "finished":_loc1_
         };
      }
      
      public function Set(param1:Object, param2:Boolean = false) : void
      {
         var _loc6_:* = 0;
         var _loc5_:* = null;
         Debugger.Instance.Write("[OverviewData::Set] Data received to create the game overview list");
         var _loc4_:* = false;
         _OverviewID = param1.overviewId;
         _TotalList = new Vector.<GameInfoData>();
         var _loc3_:Array = param1.gameList;
         if(_loc3_ != null)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc3_.length)
            {
               _loc5_ = new GameInfoData(_loc3_[_loc6_]);
               if(_loc5_.TimeLeftInSeconds <= 0 && !_loc5_.IsFinished)
               {
                  _loc4_ = true;
               }
               GameSessionCacheList.RemoveSessionByID(_loc5_.GameID);
               _TotalList.push(_loc5_);
               _loc6_++;
            }
         }
         UpdateBadge();
         if(param2 && _loc4_)
         {
            PHPWrapper.GetGameList(Set);
         }
         else
         {
            this.dispatchEvent(new Event("change"));
            MessageManager.instance.releasePushData();
         }
      }
      
      public function SetPending(param1:Array) : void
      {
         var _loc2_:* = 0;
         _PendingList = new Vector.<PendingInviteData>();
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            _PendingList.push(new PendingInviteData(param1[_loc2_].id,param1[_loc2_].fbId));
            _loc2_++;
         }
      }
      
      public function AddPending(param1:PendingInviteData) : void
      {
         _PendingList.push(param1);
      }
      
      public function RemovePending(param1:String) : void
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _PendingList.length)
         {
            if(_PendingList[_loc2_].UserID == param1)
            {
               _PendingList.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function GetUserInvited(param1:String) : Boolean
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _PendingList.length)
         {
            if(_PendingList[_loc2_].UserID == param1 || _PendingList[_loc2_].FacebookID == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function GetGameByID(param1:String) : GameInfoData
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _TotalList.length)
         {
            if(_TotalList[_loc2_].GameID == param1)
            {
               return _TotalList[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function Merge(param1:String, param2:GameInfoData, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc6_:* = 0;
         Debugger.Instance.Write("[OverviewData::Merge] Data received to merge with the game overview list");
         var _loc5_:* = false;
         _loc6_ = 0;
         while(_loc6_ < _TotalList.length)
         {
            if(_TotalList[_loc6_].GameID == param2.GameID)
            {
               _TotalList[_loc6_].Dispose();
               _TotalList[_loc6_] = param2;
               if(param4)
               {
                  GameSessionCacheList.RemoveSessionByID(param2.GameID);
               }
               _loc5_ = true;
               break;
            }
            _loc6_++;
         }
         if(!_loc5_)
         {
            _loc6_ = 0;
            while(_loc6_ < _PendingList.length)
            {
               if(_PendingList[_loc6_].UserID == param2.OpponentID)
               {
                  _PendingList.splice(_loc6_,1);
                  break;
               }
               _loc6_++;
            }
            _TotalList.push(param2);
         }
         if(param1 == null || param1 == "")
         {
            Debugger.Instance.Write("[OverviewData::Merge] Missing or invalid overviewID received!",true);
            ResetOverviewID();
         }
         else
         {
            _OverviewID = param1;
         }
         UpdateBadge();
         if(param3)
         {
            this.dispatchEvent(new Event("change"));
         }
      }
      
      public function Remove(param1:String) : void
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _TotalList.length)
         {
            if(_TotalList[_loc2_].GameID == param1)
            {
               _TotalList[_loc2_].Dispose();
               _TotalList.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      private function OnTimeSort(param1:GameInfoData, param2:GameInfoData) : Number
      {
         if(param1.TimeLeftInSeconds < param2.TimeLeftInSeconds)
         {
            return -1;
         }
         if(param1.TimeLeftInSeconds == param2.TimeLeftInSeconds)
         {
            return 0;
         }
         return 1;
      }
      
      private function UpdateBadge() : void
      {
         var _loc3_:* = 0;
         var _loc2_:* = null;
         var _loc1_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < _TotalList.length)
         {
            _loc2_ = _TotalList[_loc3_];
            if(!_loc2_.IsFinished && _loc2_.IsMyTurn)
            {
               _loc1_++;
            }
            _loc3_++;
         }
         MessageManager.instance.setBadgeValue(_loc1_);
      }
      
      public function Synch() : void
      {
         PHPWrapper.GetGameList(OnSynchResult);
      }
      
      private function OnSynchResult(param1:Object) : void
      {
         if(param1.result == ":)")
         {
            ClientData.Instance.GameListData.Set(param1);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_get_game_list"),false);
         }
      }
      
      public function Dispose() : void
      {
         var _loc1_:* = 0;
         if(_TotalList != null)
         {
            _loc1_ = 0;
            while(_loc1_ < _TotalList.length)
            {
               _TotalList[_loc1_].Dispose();
               _loc1_++;
            }
         }
         if(_PendingList != null)
         {
            _loc1_ = 0;
            while(_loc1_ < _PendingList.length)
            {
               _PendingList[_loc1_].Dispose();
               _loc1_++;
            }
         }
         _PendingList = null;
         _TotalList = null;
      }
   }
}
