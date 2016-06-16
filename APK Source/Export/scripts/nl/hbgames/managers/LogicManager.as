package nl.hbgames.managers
{
   import flash.display.Sprite;
   import nl.hbgames.logic.Logic;
   import flash.display.Bitmap;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.data.AppData;
   import flash.display.BitmapData;
   import nl.hbgames.config.Settings;
   import flash.geom.Matrix;
   import nl.hbgames.logic.menu.GameOverviewLogic;
   import nl.hbgames.logic.menu.WelcomeLogic;
   import nl.hbgames.WordOn;
   import nl.hbgames.logic.game.BaseGame;
   import nl.hbgames.ui.panels.SettingsPanel;
   import nl.hbgames.logic.menu.SplashLogic;
   import nl.hbgames.logic.menu.AutoLoginRetry;
   import nl.hbgames.logic.menu.PromoshareLogic;
   import nl.hbgames.logic.menu.PromoredeemLogic;
   import nl.hbgames.logic.menu.LoginByEmailLogic;
   import nl.hbgames.logic.menu.NewGameLogic;
   import nl.hbgames.logic.menu.GameSettingsLogic;
   import nl.hbgames.logic.menu.ShopOverviewLogic;
   import nl.hbgames.data.GameSessionCacheList;
   import nl.hbgames.logic.game.PlayerGameLogic;
   import nl.hbgames.logic.game.AIGameLogic;
   import nl.hbgames.logic.game.TutorialGameLogic;
   import nl.hbgames.logic.menu.EmailFriendsLogic;
   import nl.hbgames.logic.menu.FacebookFriendsLogic;
   import nl.hbgames.logic.menu.SearchPlayerLogic;
   import flash.geom.Point;
   import com.greensock.TweenLite;
   
   public class LogicManager extends Sprite
   {
      
      private static var _Instance:LogicManager;
       
      private const TRANSITION_TIME_FRAMES:uint = 20;
      
      private var _Logic:Logic;
      
      private var _LogicData:Object;
      
      private var _PrevState:String;
      
      private var _PrevLogicData:Object;
      
      private var _StorePrevLogicData:Boolean;
      
      private var _State:String;
      
      private var _Snapshot:Bitmap;
      
      private var _InTransition:Boolean;
      
      private var _MovementType:String;
      
      private var _HasFocus:Boolean;
      
      private var _TransitionQueue:Array;
      
      public function LogicManager()
      {
         super();
         _Instance = this;
         _Logic = null;
         _Snapshot = null;
         _State = "None";
         _PrevState = "None";
         _PrevLogicData = §§dup(null);
         _LogicData = null;
         _InTransition = false;
         _MovementType = "AnimNone";
         _TransitionQueue = [];
         _HasFocus = true;
         _StorePrevLogicData = true;
      }
      
      public static function get Instance() : LogicManager
      {
         return _Instance;
      }
      
      public function get State() : String
      {
         return _State;
      }
      
      public function get PrevState() : String
      {
         return _PrevState;
      }
      
      public function get PrevData() : Object
      {
         return _PrevLogicData;
      }
      
      public function get CurLogic() : Logic
      {
         return _Logic;
      }
      
      public function get HasFocus() : Boolean
      {
         return _HasFocus;
      }
      
      public function AddEvents() : void
      {
         PanelManager.Instance.addEventListener("PanelAddedEvent",CheckFocusState);
         PanelManager.Instance.addEventListener("AllPanelsClosedEvent",CheckFocusState);
         PopupManager.Instance.addEventListener("PopupAddedEvent",CheckFocusState);
         PopupManager.Instance.addEventListener("AllPopupsClosedEvent",CheckFocusState);
         PopupManager.Instance.addEventListener("PopupClosedEvent",CheckFocusState);
         WaitBox.Instance.addEventListener("WaitBoxShow",CheckFocusState);
         WaitBox.Instance.addEventListener("WaitBoxHide",CheckFocusState);
      }
      
      public function SetState(param1:String, param2:Object = null, param3:String = "AnimLeft", param4:Boolean = false, param5:Boolean = true) : void
      {
         if(_State == param1 && !param4)
         {
            Debugger.Instance.Write("[LogicManager::SetState] State \'" + param1 + "\' already set");
            return;
         }
         if(_InTransition)
         {
            _TransitionQueue.push({
               "state":param1,
               "data":param2,
               "movementType":param3,
               "force":param4
            });
            Debugger.Instance.Write("[LogicManager::SetState] In transition, stashing request. Queue length is now: " + _TransitionQueue.length);
            return;
         }
         _PrevState = _State;
         _PrevLogicData = _StorePrevLogicData?_LogicData:null;
         _State = param1;
         _MovementType = param3;
         _LogicData = param2;
         _StorePrevLogicData = param5;
         if(_Logic != null)
         {
            _InTransition = true;
            _Snapshot = CreateSnapshot();
            this.addChild(_Snapshot);
         }
         ProcessNewState();
      }
      
      public function SwitchGame(param1:Object) : void
      {
         if(_State != "GameVsPlayer")
         {
            Debugger.Instance.Write("[LogicManager::SwitchGame] Currently not in a game, forwarding to SetState.");
            SetState("GameVsPlayer",param1);
         }
         else if(param1.gameID != null && ClientData.Instance.CurrentGameSession.GameID != param1.gameID)
         {
            Debugger.Instance.Write("[LogicManager::SwitchGame] Exiting current game and stepping into new one.");
            SetState("GameVsPlayer",param1,"AnimLeft",true);
            AppData.Instance.ShouldShowAd = true;
         }
      }
      
      private function CreateSnapshot() : Bitmap
      {
         var _loc2_:BitmapData = new BitmapData(Settings.SCREEN_WIDTH / 2,(Settings.SCREEN_HEIGHT + AssetManager.OverdrawY) / 2,true,0);
         var _loc3_:Matrix = new Matrix();
         _loc3_.scale(0.5,0.5);
         _loc2_.draw(this,_loc3_);
         var _loc1_:Bitmap = new Bitmap(_loc2_);
         _loc1_.width = Settings.SCREEN_WIDTH;
         _loc1_.height = Settings.SCREEN_HEIGHT + AssetManager.OverdrawY;
         return _loc1_;
      }
      
      public function OnBackButtonPressed() : void
      {
         if(PopupManager.Instance.PopupCount > 0)
         {
            PopupManager.Instance.ActivePopup.OnBackHandler();
            return;
         }
         if(!WaitBox.IsVisible)
         {
            if(PanelManager.Instance.IsActive)
            {
               PanelManager.Instance.CloseActive();
               return;
            }
            if(_Logic != null)
            {
               if(!(_Logic is GameOverviewLogic) && !(_Logic is WelcomeLogic))
               {
                  _Logic.OnBackClick();
                  return;
               }
            }
            WordOn.Instance.Exit();
         }
      }
      
      public function OnMenuButtonPressed() : void
      {
         if(PopupManager.Instance.PopupCount > 0 || WaitBox.IsVisible || _Logic is BaseGame)
         {
            return;
         }
         if(ClientData.Instance.IsLoggedIn)
         {
            new SettingsPanel();
         }
      }
      
      private function Clear() : void
      {
         if(_Logic != null)
         {
            _Logic.Dispose();
            this.removeChild(_Logic);
            _Logic = null;
         }
      }
      
      private function ProcessNewState() : void
      {
         var _loc1_:* = null;
         Clear();
         Debugger.Instance.Write("[LogicManager::ProcessNewState] Processing new state: " + _State);
         var _loc2_:* = _State;
         if("Splash" !== _loc2_)
         {
            if("Welcome" !== _loc2_)
            {
               if("AutoLoginFail" !== _loc2_)
               {
                  if("Promoshare" !== _loc2_)
                  {
                     if("Promoredeem" !== _loc2_)
                     {
                        if("EmailLogin" !== _loc2_)
                        {
                           if("GameOverview" !== _loc2_)
                           {
                              if("NewGame" !== _loc2_)
                              {
                                 if("NewGameSettings" !== _loc2_)
                                 {
                                    if("ShopOverview" !== _loc2_)
                                    {
                                       if("GameVsPlayer" !== _loc2_)
                                       {
                                          if("GameVsCPU" !== _loc2_)
                                          {
                                             if("GameTutorial" !== _loc2_)
                                             {
                                                if("EmailFriends" !== _loc2_)
                                                {
                                                   if("FBFriends" !== _loc2_)
                                                   {
                                                      if("SearchPlayer" !== _loc2_)
                                                      {
                                                         Debugger.Instance.Write("[LogicManager::ProcessNewState] Invalid state set: " + _State,true);
                                                         return;
                                                      }
                                                      _Logic = new SearchPlayerLogic();
                                                   }
                                                   else
                                                   {
                                                      _Logic = new FacebookFriendsLogic();
                                                   }
                                                }
                                                else
                                                {
                                                   _Logic = new EmailFriendsLogic();
                                                }
                                             }
                                             else
                                             {
                                                _Logic = new TutorialGameLogic();
                                             }
                                          }
                                          else
                                          {
                                             _Logic = new AIGameLogic();
                                          }
                                       }
                                       else
                                       {
                                          if(!GameSessionCacheList.IsCached(_LogicData.gameID))
                                          {
                                             WaitBox.Show();
                                          }
                                          _Logic = new PlayerGameLogic();
                                       }
                                    }
                                    else
                                    {
                                       _Logic = new ShopOverviewLogic();
                                    }
                                 }
                                 else
                                 {
                                    _Logic = new GameSettingsLogic();
                                 }
                              }
                              else
                              {
                                 _Logic = new NewGameLogic();
                              }
                           }
                           else
                           {
                              _Logic = new GameOverviewLogic();
                           }
                        }
                        else
                        {
                           _Logic = new LoginByEmailLogic();
                        }
                     }
                     else
                     {
                        _Logic = new PromoredeemLogic();
                     }
                  }
                  else
                  {
                     _Logic = new PromoshareLogic();
                  }
               }
               else
               {
                  _Logic = new AutoLoginRetry();
               }
            }
            else
            {
               _Logic = new WelcomeLogic();
            }
         }
         else
         {
            _Logic = new SplashLogic();
         }
         this.addChildAt(_Logic,0);
         if(_Snapshot != null)
         {
            _loc1_ = new Point(0,0);
            _loc2_ = _MovementType;
            if("AnimDown" !== _loc2_)
            {
               if("AnimUp" !== _loc2_)
               {
                  if("AnimLeft" !== _loc2_)
                  {
                     if("AnimRight" === _loc2_)
                     {
                        _Logic.x = -Settings.SCREEN_WIDTH;
                        _loc1_.x = Settings.SCREEN_WIDTH;
                        _loc1_.y = 0;
                     }
                  }
                  else
                  {
                     _Logic.x = Settings.SCREEN_WIDTH;
                     _loc1_.x = -Settings.SCREEN_WIDTH;
                     _loc1_.y = 0;
                  }
               }
               else
               {
                  _Logic.y = Settings.SCREEN_HEIGHT;
                  _loc1_.x = 0;
                  _loc1_.y = -Settings.SCREEN_HEIGHT;
               }
            }
            else
            {
               _Logic.y = -Settings.SCREEN_HEIGHT;
               _loc1_.x = 0;
               _loc1_.y = Settings.SCREEN_HEIGHT;
            }
            TweenLite.to(_Snapshot,20,{
               "x":_loc1_.x,
               "y":_loc1_.y,
               "onComplete":OnTransitionDone,
               "useFrames":true
            });
            TweenLite.to(_Logic,20,{
               "x":0,
               "y":0,
               "useFrames":true
            });
         }
         else
         {
            Finish();
         }
      }
      
      private function OnTransitionDone() : void
      {
         if(_Snapshot != null)
         {
            this.removeChild(_Snapshot);
            _Snapshot.bitmapData.dispose();
            _Snapshot = null;
         }
         _Logic.x = 0;
         _Logic.y = 0;
         _InTransition = false;
         Finish();
      }
      
      private function Finish() : void
      {
         var _loc1_:* = null;
         _Logic.OnFocus(_LogicData);
         if(_TransitionQueue.length > 0)
         {
            _loc1_ = _TransitionQueue.shift();
            SetState(_loc1_.state,_loc1_.data,_loc1_.movementType,_loc1_.force);
         }
      }
      
      public function Update() : void
      {
         if(_Logic != null)
         {
            _Logic.Update();
         }
      }
      
      private function CheckFocusState(param1:*) : void
      {
         if(PanelManager.Instance.IsActive || PopupManager.Instance.IsBlocking || WaitBox.IsVisible)
         {
            _HasFocus = false;
         }
         else
         {
            _HasFocus = true;
         }
         var _loc2_:* = _HasFocus;
         this.mouseChildren = _loc2_;
         this.mouseEnabled = _loc2_;
      }
      
      public function DetermineScreenID() : int
      {
         if(PanelManager.Instance.IsActive)
         {
            return PanelManager.Instance.DetermineScreenID();
         }
         var _loc1_:* = _State;
         if("Splash" !== _loc1_)
         {
            if("Welcome" !== _loc1_)
            {
               if("AutoLoginFail" !== _loc1_)
               {
                  if("Promoshare" !== _loc1_)
                  {
                     if("Promoredeem" !== _loc1_)
                     {
                        if("EmailLogin" !== _loc1_)
                        {
                           if("GameOverview" !== _loc1_)
                           {
                              if("NewGame" !== _loc1_)
                              {
                                 if("NewGameSettings" !== _loc1_)
                                 {
                                    if("ShopOverview" !== _loc1_)
                                    {
                                       if("GameVsPlayer" !== _loc1_)
                                       {
                                          if("GameVsCPU" !== _loc1_)
                                          {
                                             if("GameTutorial" !== _loc1_)
                                             {
                                                if("EmailFriends" !== _loc1_)
                                                {
                                                   if("FBFriends" !== _loc1_)
                                                   {
                                                      if("SearchPlayer" !== _loc1_)
                                                      {
                                                         return 0;
                                                      }
                                                      return 15;
                                                   }
                                                   return 7;
                                                }
                                                return 6;
                                             }
                                             return 14;
                                          }
                                          return 13;
                                       }
                                       return 9;
                                    }
                                    return 8;
                                 }
                                 return 19;
                              }
                              return 5;
                           }
                           return 4;
                        }
                        return 3;
                     }
                     return 20;
                  }
                  return 18;
               }
               return 17;
            }
            return 2;
         }
         return 1;
      }
      
      public function Dispose() : void
      {
         Clear();
         PanelManager.Instance.removeEventListener("PanelAddedEvent",CheckFocusState);
         PanelManager.Instance.removeEventListener("AllPanelsClosedEvent",CheckFocusState);
         PopupManager.Instance.removeEventListener("PopupAddedEvent",CheckFocusState);
         PopupManager.Instance.removeEventListener("PopupClosedEvent",CheckFocusState);
         PopupManager.Instance.removeEventListener("AllPopupsClosedEvent",CheckFocusState);
         WaitBox.Instance.removeEventListener("WaitBoxShow",CheckFocusState);
         WaitBox.Instance.removeEventListener("WaitBoxHide",CheckFocusState);
         _Instance = null;
      }
   }
}
