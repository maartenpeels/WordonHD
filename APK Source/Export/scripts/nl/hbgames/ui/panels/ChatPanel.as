package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.IconButton;
   import nl.hbgames.ui.buttons.ChatButton;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.TextfieldUtil;
   import nl.hbgames.net.PHPWrapper;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import nl.hbgames.config.Settings;
   import nl.hbgames.events.ChatEvent;
   import nl.hbgames.data.UserChatData;
   import nl.hbgames.utils.Emoticons;
   import nl.hbgames.utils.StringUtil;
   import nl.hbgames.ui.list.BaseChatListItem;
   import nl.hbgames.data.SysChatData;
   import nl.hbgames.utils.WordParser;
   import nl.hbgames.ui.list.ChatNoteListItem;
   import nl.hbgames.ui.list.ChatSpeechListItem;
   import nl.hbgames.WordOn;
   import nl.hbgames.data.ChatSessionData;
   import nl.hbgames.ui.popups.MessageBox;
   
   public class ChatPanel extends BasePanel
   {
       
      private const MAX_INTERVAL_BEFORE_LABEL:Number = 600000.0;
      
      private var _BtnEmoticons:IconButton;
      
      private var _BtnChat:ChatButton;
      
      private var _DefaultInputText:String;
      
      private var _LastMsgTime:Number = 0;
      
      public function ChatPanel()
      {
         super(new libChatScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblName.text = ClientData.Instance.CurrentGameSession.Opponent.Name;
         _BtnEmoticons = new IconButton(_Content.btnEmoticons,2,OnShowEmoticons);
         _BtnChat = new ChatButton(_Content.btnChat,OnChatClick,Localization.Get("general_button_chat"));
         _DefaultInputText = Localization.Get("chat_type_message_here");
         _Content.txtInput.text = _DefaultInputText;
         TextfieldUtil.Register(_Content.txtInput,"default",true,false,null,true,"sentence","go",OnKeyUp);
         ProcessChatData(ClientData.Instance.ChatHistory.CurrentChatSession.GetAllChats());
         ClientData.Instance.ChatHistory.CurrentChatSession.addEventListener("ChatSessionUpdated",OnChatReceived);
         PHPWrapper.ChatSeen(null,ClientData.Instance.CurrentGameSession.GameID);
      }
      
      private function OnChatClick(param1:MouseEvent) : void
      {
         SendMessage(_Content.txtInput.text);
      }
      
      private function OnKeyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13 || param1.keyCode == 16777230)
         {
            SendMessage(param1.target.text);
            param1.target.text = "";
            if(Settings.IS_ANDROID)
            {
               _Content.stage.focus = null;
            }
         }
      }
      
      private function OnChatReceived(param1:ChatEvent) : void
      {
         if(ClientData.Instance.ChatHistory.CurrentChatSession)
         {
            ProcessChatData(param1.Messages);
         }
      }
      
      private function ProcessChatData(param1:Vector.<UserChatData>) : void
      {
         var _loc2_:* = 0;
         if(param1 != null)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.length)
            {
               ShowMessage(param1[_loc2_]);
               _loc2_++;
            }
            _List.JumpToBottom();
         }
      }
      
      private function SendMessage(param1:String) : Boolean
      {
         var _loc2_:* = null;
         var param1:String = Emoticons.convertEmoji(StringUtil.Trim(param1));
         if(param1.length > 0 && param1 != _DefaultInputText && param1.length > 0)
         {
            _loc2_ = new UserChatData([_LastMsgTime + 1,1,param1]);
            ClientData.Instance.ChatHistory.CurrentChatSession.AddChatData(_loc2_);
            ShowMessage(_loc2_);
            _List.JumpToBottom();
            PHPWrapper.Chat(OnChatSent,_loc2_.ID,param1,ClientData.Instance.CurrentGameSession.GameID);
            _Content.txtInput.text = _DefaultInputText;
            return true;
         }
         return false;
      }
      
      private function ShowMessage(param1:UserChatData) : void
      {
         var _loc4_:* = null;
         var _loc10_:* = null;
         var _loc5_:* = null;
         var _loc7_:* = 0;
         var _loc6_:* = false;
         var _loc9_:* = null;
         var _loc8_:* = null;
         var _loc2_:* = null;
         var _loc11_:* = 0;
         var _loc3_:Vector.<BaseChatListItem> = new Vector.<BaseChatListItem>();
         if(param1 is SysChatData)
         {
            _loc4_ = "";
            _loc10_ = WordParser.RemoveTagsFromString(SysChatData(param1).Message);
            _loc5_ = param1.IsMyMessage?ClientData.Instance.Player.Name:ClientData.Instance.CurrentGameSession.Opponent.Name;
            _loc7_ = SysChatData(param1).WordScore;
            if(_loc10_ == "1")
            {
               _loc4_ = Localization.Get("chat_swapped",_loc5_,_loc7_);
            }
            else if(_loc10_ == "2")
            {
               _loc4_ = Localization.Get("chat_passed",_loc5_,_loc7_);
            }
            else
            {
               _loc4_ = Localization.Get("chat_played_word",_loc5_,_loc10_,_loc7_);
            }
            _loc3_.push(new ChatNoteListItem(param1.ID,param1.Timestamp,param1.IsMyMessage,_loc4_));
         }
         else
         {
            _loc6_ = _LastMsgTime == 0 || param1.Timestamp - _LastMsgTime > 600000;
            if(_loc6_ || _List.Items.length == 0)
            {
               if(param1.Timestamp > 10)
               {
                  _loc9_ = new Date(param1.Timestamp);
                  _loc8_ = _loc9_.toDateString().substr(3) + "  " + _loc9_.toTimeString().substr(0,8);
                  _loc2_ = new SysChatData([_loc9_,param1.IsMyMessage,_loc8_,0,0]);
                  _loc3_.push(new ChatNoteListItem(_loc2_.ID,_loc2_.Timestamp,_loc2_.IsMyMessage,_loc2_.Message,0));
               }
            }
            _loc3_.push(new ChatSpeechListItem(param1));
            _LastMsgTime = param1.Timestamp;
         }
         _loc11_ = 0;
         while(_loc11_ < _loc3_.length)
         {
            _List.Add(_loc3_[_loc11_]);
            _loc11_++;
         }
      }
      
      private function OnChatSent(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc2_:* = null;
         if(param1.result == ":)")
         {
            WordOn.Instance.Audio.Play("sfxChatSend");
            if(param1.msgid != null && param1.chatid != null)
            {
               _loc3_ = ClientData.Instance.ChatHistory.CurrentChatSession;
               if(_loc3_)
               {
                  _loc3_.UpdateChatTimestamp(param1.msgid,param1.chatid);
               }
               if(_List != null)
               {
                  _loc4_ = 0;
                  while(_loc4_ < _List.Items.length)
                  {
                     if(_List.Items[_loc4_] is BaseChatListItem)
                     {
                        _loc2_ = _List.Items[_loc4_] as BaseChatListItem;
                        if(_loc2_.MessageID == param1.msgid)
                        {
                           _loc2_.UpdateTimestamp(param1.chatid);
                           break;
                        }
                     }
                     _loc4_++;
                  }
               }
            }
            if(param1.chat)
            {
               ClientData.Instance.ChatHistory.ProcessData(param1.chat);
               if(_List != null)
               {
                  _List.SortOn("Timestamp");
               }
            }
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("chat_send_failed"),false);
         }
      }
      
      private function OnShowEmoticons(param1:MouseEvent) : void
      {
      }
      
      override public function Close() : void
      {
         super.Close();
         var _loc1_:ChatSessionData = ClientData.Instance.ChatHistory.CurrentChatSession;
         if(_loc1_)
         {
            _loc1_.removeEventListener("ChatSessionUpdated",OnChatReceived);
         }
         ClientData.Instance.GameListData.GetGameByID(ClientData.Instance.CurrentGameSession.GameID).ResetUnseenChats();
      }
      
      override public function Dispose() : void
      {
         TextfieldUtil.Unregister(_Content.txtInput);
         _Content.txtInput.removeEventListener("keyUp",OnKeyUp);
         _BtnEmoticons.Dispose();
         _BtnEmoticons = null;
         _BtnChat.Dispose();
         _BtnChat = null;
         super.Dispose();
      }
   }
}
