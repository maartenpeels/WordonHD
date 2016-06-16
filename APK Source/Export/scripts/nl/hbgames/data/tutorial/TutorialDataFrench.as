package nl.hbgames.data.tutorial
{
   import nl.hbgames.data.Localization;
   
   public class TutorialDataFrench extends BaseTutorialData
   {
       
      public function TutorialDataFrench()
      {
         super();
      }
      
      override public function Get(param1:int) : Object
      {
         var _loc3_:Object = super.Get(param1);
         var _loc2_:* = 0;
         var _loc4_:* = param1;
         _loc2_++;
         if(_loc2_ !== _loc4_)
         {
            _loc2_++;
            if(_loc2_ !== _loc4_)
            {
               _loc2_++;
               if(_loc2_ !== _loc4_)
               {
                  _loc2_++;
                  if(_loc2_ !== _loc4_)
                  {
                     _loc2_++;
                     if(_loc2_ !== _loc4_)
                     {
                        _loc2_++;
                        if(_loc2_ !== _loc4_)
                        {
                           _loc2_++;
                           if(_loc2_ !== _loc4_)
                           {
                              _loc2_++;
                              if(_loc2_ !== _loc4_)
                              {
                                 _loc2_++;
                                 if(_loc2_ !== _loc4_)
                                 {
                                    _loc2_++;
                                    if(_loc2_ !== _loc4_)
                                    {
                                       _loc2_++;
                                       if(_loc2_ !== _loc4_)
                                       {
                                          _loc2_++;
                                          if(_loc2_ !== _loc4_)
                                          {
                                             _loc2_++;
                                             if(_loc2_ !== _loc4_)
                                             {
                                                _loc2_++;
                                                if(_loc2_ !== _loc4_)
                                                {
                                                   _loc2_++;
                                                   if(_loc2_ !== _loc4_)
                                                   {
                                                      _loc2_++;
                                                      if(_loc2_ !== _loc4_)
                                                      {
                                                         _loc2_++;
                                                         if(_loc2_ !== _loc4_)
                                                         {
                                                            _loc2_++;
                                                            if(_loc2_ !== _loc4_)
                                                            {
                                                               _loc2_++;
                                                               if(_loc2_ !== _loc4_)
                                                               {
                                                                  _loc2_++;
                                                                  if(_loc2_ !== _loc4_)
                                                                  {
                                                                     _loc2_++;
                                                                     if(_loc2_ !== _loc4_)
                                                                     {
                                                                        _loc2_++;
                                                                        if(_loc2_ !== _loc4_)
                                                                        {
                                                                           _loc2_++;
                                                                           if(_loc2_ !== _loc4_)
                                                                           {
                                                                              _loc2_++;
                                                                              if(_loc2_ !== _loc4_)
                                                                              {
                                                                                 _loc2_++;
                                                                                 if(_loc2_ === _loc4_)
                                                                                 {
                                                                                    delete _loc3_.session;
                                                                                    _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_22"),0.5,0,0,true);
                                                                                    _loc3_.actions.isEnd = true;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 delete _loc3_.session;
                                                                                 _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_21"),0.5,0);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              delete _loc3_.session;
                                                                              _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_20"),0.5,0,-50);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           delete _loc3_.session;
                                                                           _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_19"),0.5,0,-50);
                                                                           _loc3_.actions.canHint = true;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        delete _loc3_.session;
                                                                        _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_18b"),0.5);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     delete _loc3_.session;
                                                                     _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_18"),0.5);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  delete _loc3_.session;
                                                                  _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_17"),0.3,0,50);
                                                                  _loc3_.actions.canPeek = true;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               delete _loc3_.session;
                                                               _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_16"),0.3,0,-50);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            delete _loc3_.session;
                                                            _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_15b"),0.3,0,-50);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc3_.session.otherWordons = "!A,!B";
                                                         _loc3_.session.yourLetters = "I,G,X,E,D,H,U";
                                                         _loc3_.session.yourScore = 74;
                                                         _loc3_.session.yourGrid = [0,1,0,3,3,0,4];
                                                         _loc3_.session.otherScore = -6;
                                                         _loc3_.session.otherGrid = [0,3,3,0,0,1,4];
                                                         _loc3_.session.lastScore = 42;
                                                         _loc3_.session.lastWord = "D,U,R,A,B,L,E";
                                                         _loc3_.session.lastGrid = [0,1,0,3,3,0,4];
                                                         _loc3_.session.coinsWon = 5;
                                                         _loc3_.session.tiles = 4;
                                                         _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_15"),5,0,-100);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      delete _loc3_.session;
                                                      _loc3_.actions.requiredWord = "DURABLE";
                                                      _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_14",42,5),0.3,0,-150);
                                                   }
                                                }
                                                else
                                                {
                                                   delete _loc3_.session;
                                                   _loc3_.actions.requiredWord = "DURABLE";
                                                   _loc3_.actions.checkBeforePlay = true;
                                                   _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_13",_loc3_.actions.requiredWord),0.3,0,-150);
                                                }
                                             }
                                             else
                                             {
                                                delete _loc3_.session;
                                                _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_12","SABORD"),0.3,0,-150);
                                             }
                                          }
                                          else
                                          {
                                             delete _loc3_.session;
                                             _loc3_.actions.requiredWord = "SABORD";
                                             _loc3_.actions.checkBeforePlay = true;
                                             _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_11",_loc3_.actions.requiredWord),0.3,0,-100);
                                          }
                                       }
                                       else
                                       {
                                          delete _loc3_.session;
                                          _loc3_.actions.needsClearedTable = true;
                                          _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_10",6),0.3,0,-100);
                                       }
                                    }
                                    else
                                    {
                                       delete _loc3_.session;
                                       _loc3_.actions.requiredWord = "ORBE";
                                       _loc3_.actions.checkBeforePlay = true;
                                       _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_9","R",_loc3_.actions.requiredWord),0.3,0,-100);
                                    }
                                 }
                                 else
                                 {
                                    _loc3_.session.yourWordons = "!A,!R";
                                    _loc3_.session.yourLetters = "E,O,U,L,B,D,S";
                                    _loc3_.session.yourScore = 32;
                                    _loc3_.session.yourGrid = [0,1,0,3,3,0,4];
                                    _loc3_.session.otherScore = -8;
                                    _loc3_.session.otherGrid = [3,0,0,3,0,1,4];
                                    _loc3_.session.lastScore = -8;
                                    _loc3_.session.lastWord = "A,L,O,R,S";
                                    _loc3_.session.lastGrid = [0,3,3,0,0,1,4];
                                    _loc3_.session.tiles = 11;
                                    _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_8","ALORS",-8),1,0,-100);
                                 }
                              }
                              else
                              {
                                 delete _loc3_.session;
                                 _loc3_.actions.wait = 1;
                              }
                           }
                           else
                           {
                              delete _loc3_.session;
                              _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_7"),0.3);
                           }
                        }
                        else
                        {
                           _loc3_.session.otherWordons = "!B,!K";
                           _loc3_.session.yourLetters = "E,O,U,L,B,D,S";
                           _loc3_.session.yourScore = 32;
                           _loc3_.session.yourGrid = [0,1,0,3,3,0,4];
                           _loc3_.session.otherScore = 0;
                           _loc3_.session.otherGrid = [3,0,0,3,0,1,4];
                           _loc3_.session.lastScore = 32;
                           _loc3_.session.lastWord = "B,R,I,K";
                           _loc3_.session.lastGrid = [3,0,1,3,0,0,4];
                           _loc3_.session.coinsWon = 5;
                           _loc3_.session.tiles = 16;
                           _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_6","K","B"),4.5,0,100);
                        }
                     }
                     else
                     {
                        delete _loc3_.session;
                        _loc3_.actions.requiredWord = "BRIK";
                        _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_5"),0.3,0,-100);
                     }
                  }
                  else
                  {
                     delete _loc3_.session;
                     _loc3_.actions.requiredWord = "BRIK";
                     _loc3_.actions.checkBeforePlay = true;
                     _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_4",_loc3_.actions.requiredWord),0.3,0,-100);
                  }
               }
               else
               {
                  delete _loc3_.session;
                  _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_3"),0.3,0,-100);
               }
            }
            else
            {
               delete _loc3_.session;
               _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_2"),0.3,0,-100);
            }
         }
         else
         {
            _loc3_.session.yourWordons = "";
            _loc3_.session.yourLetters = "B,I,K,O,R,U,L";
            _loc3_.session.yourScore = 0;
            _loc3_.session.yourGrid = [3,0,1,3,0,0,4];
            _loc3_.session.otherScore = 0;
            _loc3_.session.otherGrid = [0,3,3,0,0,1,4];
            _loc3_.session.lastScore = 0;
            _loc3_.session.lastWord = null;
            _loc3_.session.lastGrid = null;
            _loc3_.session.coinsWon = 0;
            _loc3_.session.playerOptions = 1;
            _loc3_.session.tiles = 20;
            _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_1"),0.3,0,-100);
         }
         return _loc3_;
      }
      
      override public function Dispose() : void
      {
      }
   }
}
