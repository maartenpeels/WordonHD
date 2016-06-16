package nl.hbgames.data
{
   import flash.events.EventDispatcher;
   import nl.hbgames.WordOn;
   import nl.hbgames.events.ChatEvent;
   import nl.hbgames.managers.NotificationBar;
   
   public class ChatSessionData extends EventDispatcher
   {
       
      private var _ID:String;
      
      private var _ChatLines:Vector.<UserChatData>;
      
      private var _NewBadgeAmount:int = 0;
      
      public function ChatSessionData(param1:String, param2:Object = null)
      {
         super();
         _ID = param1;
         _ChatLines = new Vector.<UserChatData>();
         if(param2 != null)
         {
            Merge(param2);
         }
      }
      
      public function get NewChatAmount() : int
      {
         return _NewBadgeAmount;
      }
      
      public function AddChatData(param1:UserChatData, param2:Boolean = false) : void
      {
         _ChatLines.push(param1);
         if(param2)
         {
            _ChatLines.sort(OnTimeSort);
         }
      }
      
      public function Merge(param1:Object) : void
      {
         var _loc7_:* = 0;
         var _loc5_:* = null;
         var _loc3_:Vector.<UserChatData> = new Vector.<UserChatData>();
         var _loc2_:Array = param1.usr;
         var _loc4_:Array = param1.sys;
         var _loc6_:UserChatData = null;
         if(param1.unseen)
         {
            _NewBadgeAmount = param1.unseen;
         }
         else
         {
            _NewBadgeAmount = 0;
         }
         if(_loc2_ != null)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_.length)
            {
               _loc3_.push(new UserChatData(_loc2_[_loc7_]));
               _loc7_++;
            }
         }
         if(_loc4_ != null)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               _loc3_.push(new SysChatData(_loc4_[_loc7_]));
               _loc7_++;
            }
         }
         if(_loc3_.length > 0)
         {
            WordOn.Instance.Audio.Play("sfxChatReceive");
            _loc6_ = _loc3_[_loc3_.length - 1];
            _ChatLines = _ChatLines.concat(_loc3_);
            _ChatLines.sort(OnTimeSort);
            _loc3_.sort(OnTimeSort);
            this.dispatchEvent(new ChatEvent("ChatSessionUpdated",_ID,_loc3_,_NewBadgeAmount));
            if(!(_loc6_ is SysChatData) && ClientData.Instance.CurrentGameSession == null || _ID != ClientData.Instance.CurrentGameSession.GameID)
            {
               _loc5_ = ClientData.Instance.GameListData.GetGameByID(_ID);
               if(_loc5_ != null)
               {
                  NotificationBar.Instance.Show(2,_loc5_.OpponentName + ": " + _loc6_.Message,_loc5_);
               }
            }
         }
      }
      
      public function GetChats(param1:int) : Vector.<UserChatData>
      {
         _NewBadgeAmount = 0;
         if(_ChatLines == null || _ChatLines.length == 0 || param1 == 0)
         {
            return null;
         }
         var _loc2_:int = _ChatLines.length - param1;
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         return _ChatLines.slice(_loc2_);
      }
      
      public function GetChatByID(param1:String) : UserChatData
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < _ChatLines.length)
         {
            if(_ChatLines[_loc2_].ID == param1)
            {
               return _ChatLines[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function UpdateChatTimestamp(param1:String, param2:Number) : Boolean
      {
         var _loc3_:* = 0;
         if(param1 && param2 >= 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _ChatLines.length)
            {
               if(_ChatLines[_loc3_].ID == param1)
               {
                  _ChatLines[_loc3_].UpdateTimestamp(param2);
                  _ChatLines.sort(OnTimeSort);
                  return true;
               }
               _loc3_++;
            }
         }
         return false;
      }
      
      public function GetAllChats(param1:Boolean = true) : Vector.<UserChatData>
      {
         if(param1)
         {
            _NewBadgeAmount = 0;
         }
         return _ChatLines.slice();
      }
      
      private function OnTimeSort(param1:UserChatData, param2:UserChatData) : Number
      {
         if(param1.Timestamp < param2.Timestamp)
         {
            return -1;
         }
         if(param1.Timestamp == param2.Timestamp)
         {
            return 0;
         }
         return 1;
      }
      
      private function OnRawChatSort(param1:Array, param2:Array) : Number
      {
         if(param1[0] < param2[0])
         {
            return -1;
         }
         if(param1[0] == param2[0])
         {
            return 0;
         }
         return 1;
      }
      
      public function Dispose() : void
      {
         var _loc1_:* = 0;
         _ID = null;
         _loc1_ = 0;
         while(_loc1_ < _ChatLines.length)
         {
            _ChatLines[_loc1_].Dispose();
            _ChatLines[_loc1_] = null;
            _loc1_++;
         }
         _ChatLines = null;
      }
   }
}
