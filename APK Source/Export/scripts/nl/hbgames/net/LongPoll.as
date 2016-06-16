package nl.hbgames.net
{
   import flash.net.Socket;
   import flash.utils.Timer;
   import flash.utils.ByteArray;
   import nl.hbgames.utils.Debugger;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.data.GameSessionData;
   import nl.hbgames.data.ChatSessionData;
   import flash.events.ProgressEvent;
   import nl.hbgames.data.GameInfoData;
   import nl.hbgames.managers.NotificationBar;
   import nl.hbgames.data.Localization;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.logic.game.BaseGame;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.managers.PanelManager;
   import flash.events.SecurityErrorEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.setTimeout;
   import nl.hbgames.managers.PopupManager;
   import nl.hbgames.logic.game.PlayerGameLogic;
   import nl.hbgames.config.Settings;
   
   public class LongPoll extends Object
   {
      
      public static var Instance:LongPoll;
       
      private const CONTENT_LENGTH_MATCH:RegExp = new RegExp("Content-Length: ([0-9]+)");
      
      private const MAX_TIMEOUT_RECONNECT_ATTEMPTS:uint = 3;
      
      private const SOCKET_TIME_OUT:int = 15000;
      
      private const RETRY_DELAY:int = 3000;
      
      private const RECOVER_DELAY:int = 20000;
      
      private const MAX_CONN_LIFETIME:int = 150000;
      
      private const IP:String = Settings.NODEJS_IP;
      
      private const PORT:int = Settings.NODEJS_PORT;
      
      private var _TimeOutHits:int = 0;
      
      private var _IsConnected:Boolean = false;
      
      private var _IsRecovering:Boolean = false;
      
      private var _ConnectionStartTime:Number;
      
      private var _Socket:Socket;
      
      private var _RetryTimer:Timer;
      
      private var _ConnTimer:Timer;
      
      private var _SleepMode:Boolean;
      
      private var _WakingUp:Boolean;
      
      private var _RawData:String;
      
      private var _RawByteData:ByteArray;
      
      private var _ContentLength:int;
      
      public function LongPoll()
      {
         super();
         Instance = this;
         _IsConnected = false;
         _SleepMode = false;
         _WakingUp = false;
         _ConnectionStartTime = 0;
         _RetryTimer = new Timer(3000,1);
         _RetryTimer.addEventListener("timer",OnRetryTimer);
         _RetryTimer.stop();
      }
      
      public function get IsConnected() : Boolean
      {
         return _IsConnected;
      }
      
      public function get IsRecovering() : Boolean
      {
         return _IsRecovering;
      }
      
      public function Connect(param1:Boolean = false) : void
      {
         if(!param1 && _SleepMode)
         {
            Debugger.Instance.Write("[LongPoll::Connect] New connection halted, still in sleep mode.",false,false);
            return;
         }
         _WakingUp = param1;
         if(_SleepMode)
         {
            Debugger.Instance.Write("[LongPoll::Connect] Waking up from sleep mode.",false,false);
            EnableRecoverMode(false);
         }
         _SleepMode = false;
         _RawData = "";
         _ContentLength = 0;
         _ConnectionStartTime = new Date().getTime();
         CreateSocket();
      }
      
      private function CreateSocket() : void
      {
         Disconnect();
         try
         {
            if(_Socket == null)
            {
               Debugger.Instance.Write("[LongPoll::CreateSocket] Creating socket object.",false,false);
               _Socket = new Socket();
               _Socket.addEventListener("connect",OnSocketConnected);
               _Socket.addEventListener("socketData",OnSocketData);
               _Socket.addEventListener("ioError",OnSocketIOError);
               _Socket.addEventListener("securityError",OnSocketSecurityError);
               _Socket.addEventListener("close",OnSocketClose);
               _Socket.endian = "bigEndian";
               _Socket.timeout = 15000;
            }
            else
            {
               Debugger.Instance.Write("[LongPoll::CreateSocket] Re-using existing socket object.",false,false);
            }
            _RawByteData = new ByteArray();
            _Socket.connect(IP,PORT);
            return;
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[LongPoll::CreateSocket] Error creating socket connection: " + e,true,false);
            DelayedConnect(true);
            return;
         }
      }
      
      public function Disconnect(param1:Boolean = false, param2:Boolean = false) : void
      {
         _SleepMode = param1;
         ClearConnectionTimer();
         if(_Socket != null)
         {
            Debugger.Instance.Write("[LongPoll::Disconnect] Closing socket connection.",false,false);
            if(_Socket.connected)
            {
               _Socket.close();
            }
            if(param2)
            {
               _Socket.removeEventListener("connect",OnSocketConnected);
               _Socket.removeEventListener("socketData",OnSocketData);
               _Socket.removeEventListener("ioError",OnSocketIOError);
               _Socket.removeEventListener("securityError",OnSocketSecurityError);
               _Socket.removeEventListener("close",OnSocketClose);
               _Socket = null;
               Debugger.Instance.Write("[LongPoll::Disconnect] Socket object disposed.",false,false);
            }
            _RawByteData = null;
            _IsConnected = false;
         }
         if(_SleepMode)
         {
            Debugger.Instance.Write("[LongPoll::Disconnect] Entering sleep mode. Waiting for wake up call through Connect()",false,false);
            _RetryTimer.stop();
         }
      }
      
      private function DelayedConnect(param1:Boolean = false) : void
      {
         if(_SleepMode)
         {
            Debugger.Instance.Write("[LongPoll:DelayedConnect] New connection halted, still in sleep mode.",false,false);
            return;
         }
         if(param1 || new Date().getTime() < _ConnectionStartTime + 3000)
         {
            Debugger.Instance.Write("[LongPoll::DelayedConnect] Delaying connect handling.",false,false);
            _RetryTimer.reset();
            _RetryTimer.start();
         }
         else
         {
            Connect();
         }
      }
      
      private function OnRetryTimer(param1:TimerEvent) : void
      {
         _RetryTimer.stop();
         Connect();
      }
      
      private function OnSocketConnected(param1:Event) : void
      {
         var _loc6_:* = null;
         var _loc4_:* = 0;
         var _loc5_:String = ClientData.Instance.AuthToken;
         if(_loc5_ == null || _loc5_ == "")
         {
            Debugger.Instance.Write("[LongPoll::OnSocketConnected] Missing ClientData.AuthToken (is the player logged in?)",true,false);
            return;
         }
         _IsConnected = true;
         EnableRecoverMode(false);
         _TimeOutHits = 0;
         CreateConnectionTimer();
         Debugger.Instance.Write("[LongPoll::OnSocketConnected] Connection opened to NodeJS backend",false,false);
         var _loc2_:int = LogicManager.Instance.DetermineScreenID();
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes("authToken=" + _loc5_);
         var _loc8_:GameSessionData = ClientData.Instance.CurrentGameSession;
         _loc3_.writeUTFBytes("&sid=" + _loc2_);
         if(_loc8_ != null && _loc8_.Type == 0)
         {
            _loc3_.writeUTFBytes("&gid=" + _loc8_.GameID);
            _loc3_.writeUTFBytes("&cycle=" + _loc8_.CycleNum);
            _loc6_ = ClientData.Instance.ChatHistory.CurrentChatSession;
            if(_loc6_)
            {
               _loc4_ = _loc2_ != 11?_loc6_.NewChatAmount:_WakingUp?-1:0.0;
               _loc3_.writeUTFBytes("&newchats=" + _loc4_);
            }
         }
         else
         {
            _loc3_.writeUTFBytes("&overviewId=" + ClientData.Instance.GameListData.OverviewID);
            Debugger.Instance.Write("[LongPoll::OnSocketConnected] OverviewID = " + ClientData.Instance.GameListData.OverviewID,false,false);
         }
         _loc3_.position = 0;
         var _loc7_:String = "";
         _loc7_ = _loc7_ + ("POST http://" + IP + "/listen HTTP/1.1\r\n");
         _loc7_ = _loc7_ + "Content-Type: application/x-www-form-urlencoded\r\n";
         _loc7_ = _loc7_ + ("Content-Length: " + _loc3_.length + "\r\n");
         _loc7_ = _loc7_ + ("Host: " + IP + "\r\n");
         _loc7_ = _loc7_ + "Connection: Keep-Alive\r\n";
         _loc7_ = _loc7_ + "Pragma: no-cache\r\n\r\n";
         _Socket.writeUTFBytes(_loc7_);
         _Socket.writeBytes(_loc3_,0,_loc3_.length);
         _Socket.flush();
      }
      
      private function CreateConnectionTimer() : void
      {
         if(_ConnTimer != null)
         {
            ClearConnectionTimer();
         }
         _ConnTimer = new Timer(150000,1);
         _ConnTimer.addEventListener("timerComplete",OnMaxConnTime);
         _ConnTimer.start();
      }
      
      private function ClearConnectionTimer() : void
      {
         if(_ConnTimer != null)
         {
            _ConnTimer.stop();
            _ConnTimer.removeEventListener("timerComplete",OnMaxConnTime);
            _ConnTimer = null;
         }
      }
      
      private function OnMaxConnTime(param1:TimerEvent) : void
      {
         Debugger.Instance.Write("[LongPoll::OnMaxConnTime] Maximum idle connection time detected hit (150 secs)");
         Connect();
      }
      
      private function OnSocketData(param1:ProgressEvent) : void
      {
         var _loc5_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         _WakingUp = false;
         _IsConnected = false;
         var _loc2_:Object = null;
         Debugger.Instance.Write("[LongPoll::OnSocketData] Data returned from the NodeJS backend",false,false);
         try
         {
            _loc5_ = _Socket.readUTFBytes(_Socket.bytesAvailable);
            _RawData = §§dup()._RawData + _loc5_;
            _loc3_ = _RawData.indexOf("\r\n\r\n");
            if(_ContentLength == 0 && _loc3_ != -1)
            {
               _loc4_ = CONTENT_LENGTH_MATCH.exec(_RawData);
               if(_loc4_ != null)
               {
                  _ContentLength = _loc4_[1];
               }
               _RawData = _RawData.substr(_loc3_ + 4);
               _RawByteData.writeUTFBytes(_RawData);
            }
            else if(_ContentLength > 0)
            {
               _RawByteData.writeUTFBytes(_loc5_);
            }
            if(_ContentLength > 0 && _RawByteData.length == _ContentLength)
            {
               _RawByteData.position = 0;
               _loc2_ = JSON.parse(_RawByteData.readUTFBytes(_RawByteData.bytesAvailable));
            }
         }
         catch(err:Error)
         {
            Debugger.Instance.Write("[LongPoll::OnSocketData] Socket data error. Result not processed: " + err,true,false);
            DelayedConnect();
         }
         if(_loc2_)
         {
            ProcessResult(_loc2_);
         }
      }
      
      private function ProcessResult(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1.result == ":)")
         {
            if(param1.chat != null)
            {
               ClientData.Instance.ChatHistory.ProcessData(param1.chat);
            }
            if(param1.game != null)
            {
               if(param1.game.id == ClientData.Instance.CurrentGameSession.GameID)
               {
                  if(param1.game.cycle < ClientData.Instance.CurrentGameSession.CycleNum)
                  {
                     Debugger.Instance.Write("[LongPoll::ProcessResult] Incoming cycle (" + param1.game.cycle + ") is lower than expected. Data update blocked!",true,false);
                     SWRVETracker.Instance.TrackCustomEvent("warning.cycle.node");
                  }
                  else
                  {
                     ClientData.Instance.CurrentGameSession.Set(param1.game);
                     _loc2_ = new GameInfoData();
                     if(_loc2_.CreateFromSession(ClientData.Instance.CurrentGameSession))
                     {
                        ClientData.Instance.GameListData.Merge(param1.overviewId,_loc2_,true,false);
                     }
                  }
               }
            }
            if(param1.gameList != null)
            {
               ClientData.Instance.GameListData.Set(param1,true);
            }
            if(param1.gameOverview != null)
            {
               _loc3_ = new GameInfoData(param1.gameOverview);
               if(_loc3_.IsFinished)
               {
                  if(_loc3_.IsResigned)
                  {
                     NotificationBar.Instance.Show(1,Localization.Get("notifybar_game_resigned",_loc3_.OpponentName),_loc3_);
                  }
                  else
                  {
                     NotificationBar.Instance.Show(1,Localization.Get("notifybar_game_finished",_loc3_.OpponentName),_loc3_);
                  }
               }
               else if(_loc3_.Cycle == 1)
               {
                  NotificationBar.Instance.Show(1,Localization.Get("notifybar_game_started",_loc3_.OpponentName),_loc3_);
               }
               else if(_loc3_.LastWord.length > 1)
               {
                  NotificationBar.Instance.Show(1,Localization.Get("notifybar_word_played",_loc3_.OpponentName,_loc3_.LastWord.toUpperCase(),_loc3_.LastWordScore),_loc3_);
               }
               else if(_loc3_.Passes == 0)
               {
                  NotificationBar.Instance.Show(1,Localization.Get("notifybar_swapped",_loc3_.OpponentName,_loc3_.LastWordScore),_loc3_);
               }
               else
               {
                  NotificationBar.Instance.Show(1,Localization.Get("notifybar_passed",_loc3_.OpponentName,_loc3_.LastWordScore),_loc3_);
               }
               ClientData.Instance.GameListData.Merge(param1.overviewId,_loc3_,true,true);
            }
            if(param1.invite != null)
            {
               ClientData.Instance.ProcessInviteData(null,[{
                  "id":param1.invite.invId,
                  "displayname":param1.invite.name,
                  "userId":param1.invite.uid,
                  "dictionaryId":param1.invite.dictId,
                  "tilesetId":param1.invite.tilesetId,
                  "border":param1.invite.border
               }]);
            }
            if(param1.alert != null)
            {
               HandleAlert(param1.alert);
            }
            Connect();
         }
         else if(param1.code == 238)
         {
            ClientData.Instance.Logout(true);
         }
         else if(param1.code == 237)
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("invalid_game_joined"),true);
            if(BaseGame.Instance != null)
            {
               WaitBox.Hide();
               BaseGame.Instance.OnBackClick();
            }
         }
         else if(param1.timeout != null && param1.timeout == 1)
         {
            Connect();
         }
         else
         {
            DelayedConnect();
         }
      }
      
      private function HandleAlert(param1:Object) : void
      {
         data = param1;
         switch(data.id - 1)
         {
            case 0:
               new MessageBox(Localization.Get("sorry"),Localization.Get("max_game_limit_reached"),true,true,function():void
               {
                  LogicManager.Instance.SetState("ShopOverview");
                  PanelManager.Instance.CloseAll();
               },true);
               break;
            case 1:
               if(ClientData.Instance.CurrentGameSession && ClientData.Instance.CurrentGameSession.GameID == data.gid)
               {
                  new MessageBox(Localization.Get("look_out"),Localization.Get("opponent_has_sneak_peeked",ClientData.Instance.CurrentGameSession.Opponent.Name),false);
                  break;
               }
               break;
         }
      }
      
      private function OnSocketSecurityError(param1:SecurityErrorEvent) : void
      {
         _IsConnected = false;
         Debugger.Instance.Write("[LongPoll::OnSocketSecurityError] Security error detected: " + param1,true,false);
         DelayedConnect();
      }
      
      private function OnSocketIOError(param1:IOErrorEvent) : void
      {
         if(_IsConnected)
         {
            Debugger.Instance.Write("[LongPoll::OnIOError] Connection closed by server: " + param1,false,false);
            _IsConnected = false;
            DelayedConnect();
         }
         else
         {
            Debugger.Instance.Write("[LongPoll::OnIOError] Connection error: " + param1,false,false);
            TimeOutDetected();
         }
      }
      
      private function OnSocketClose(param1:Event) : void
      {
         if(_IsConnected)
         {
            Debugger.Instance.Write("[LongPoll::OnSocketClose] Connection closed by server.",false,false);
            _IsConnected = false;
            setTimeout(DelayedConnect,0);
         }
         else
         {
            TimeOutDetected();
         }
      }
      
      private function TimeOutDetected() : void
      {
         if(!_IsRecovering)
         {
            _TimeOutHits = _TimeOutHits + 1;
            Debugger.Instance.Write("[LongPoll::TimeOutDetected] Connection time-out detected! (Total tries: " + _TimeOutHits + ")",true,false);
            if(_TimeOutHits >= 3)
            {
               ShowDisconnectMessage();
               _TimeOutHits = 0;
               EnableRecoverMode(true);
               DelayedConnect(true);
            }
            else
            {
               Disconnect();
               DelayedConnect(true);
            }
         }
         else
         {
            Debugger.Instance.Write("[LongPoll::TimeOutDetected] No connection detected, still in recovery mode.",true,false);
            ShowDisconnectMessage();
            DelayedConnect(true);
         }
      }
      
      private function ShowDisconnectMessage() : void
      {
         var _loc1_:* = null;
         if(!PopupManager.Instance.ContainsType(MessageBox,"offline"))
         {
            _loc1_ = new MessageBox(Localization.Get("sorry"),Localization.Get("connection_time_out"),true);
            _loc1_.Descriptor = "offline";
         }
         if(BaseGame.Instance != null && LogicManager.Instance.CurLogic is PlayerGameLogic)
         {
            WaitBox.Hide();
            PanelManager.Instance.CloseAll();
            BaseGame.Instance.OnBackClick();
         }
      }
      
      private function EnableRecoverMode(param1:Boolean) : void
      {
         if(_IsRecovering != param1)
         {
            _IsRecovering = param1;
            if(param1)
            {
               Debugger.Instance.Write("[LongPoll::EnableRecoverMode] Switching to network recovery mode (checking every 20000s)",true,false);
               _RetryTimer.delay = 20000;
            }
            else
            {
               Debugger.Instance.Write("[LongPoll::EnableRecoverMode] Switching back to normal network mode",false,false);
               _RetryTimer.delay = 3000;
            }
         }
      }
      
      public function Dispose() : void
      {
         Disconnect(false,true);
         if(_RetryTimer != null)
         {
            _RetryTimer.removeEventListener("timer",OnRetryTimer);
            _RetryTimer.stop();
            _RetryTimer = null;
         }
      }
   }
}
