package nl.hbgames.data.tutorial
{
   import nl.hbgames.data.Localization;
   
   public class TutorialDataItalian extends BaseTutorialData
   {
       
      public function TutorialDataItalian()
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
                                                         _loc3_.session.otherWordons = "!N,!D";
                                                         _loc3_.session.yourLetters = "I,G,V,E,D,H,U";
                                                         _loc3_.session.yourScore = 68;
                                                         _loc3_.session.yourGrid = [0,1,0,3,3,0,4];
                                                         _loc3_.session.otherScore = 7;
                                                         _loc3_.session.otherGrid = [0,3,3,0,0,1,4];
                                                         _loc3_.session.lastScore = 68;
                                                         _loc3_.session.lastWord = "T,E,S,T,O,N,I";
                                                         _loc3_.session.lastGrid = [0,1,0,3,3,0,4];
                                                         _loc3_.session.coinsWon = 5;
                                                         _loc3_.session.tiles = 5;
                                                         _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_15"),5,0,-100);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      delete _loc3_.session;
                                                      _loc3_.actions.requiredWord = "TESTONI";
                                                      _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_14",46,5),0.3,0,-150);
                                                   }
                                                }
                                                else
                                                {
                                                   delete _loc3_.session;
                                                   _loc3_.actions.requiredWord = "TESTONI";
                                                   _loc3_.actions.checkBeforePlay = true;
                                                   _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_13",_loc3_.actions.requiredWord),0.3,0,-150);
                                                }
                                             }
                                             else
                                             {
                                                delete _loc3_.session;
                                                _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_12","TINTE"),0.3,0,-150);
                                             }
                                          }
                                          else
                                          {
                                             delete _loc3_.session;
                                             _loc3_.actions.requiredWord = "TINTE";
                                             _loc3_.actions.checkBeforePlay = true;
                                             _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_11",_loc3_.actions.requiredWord),0.3,0,-100);
                                          }
                                       }
                                       else
                                       {
                                          delete _loc3_.session;
                                          _loc3_.actions.needsClearedTable = true;
                                          _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_10",5),0.3,0,-100);
                                       }
                                    }
                                    else
                                    {
                                       delete _loc3_.session;
                                       _loc3_.actions.requiredWord = "ASTE";
                                       _loc3_.actions.checkBeforePlay = true;
                                       _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_9","T",_loc3_.actions.requiredWord),0.3,0,-100);
                                    }
                                 }
                                 else
                                 {
                                    _loc3_.session.yourWordons = "!N,!E";
                                    _loc3_.session.yourLetters = "A,S,H,O,T,I,T";
                                    _loc3_.session.yourScore = 12;
                                    _loc3_.session.yourGrid = [0,1,0,3,3,0,4];
                                    _loc3_.session.otherScore = 7;
                                    _loc3_.session.otherGrid = [3,0,0,3,0,1,4];
                                    _loc3_.session.lastScore = 7;
                                    _loc3_.session.lastWord = "N,E,V,E";
                                    _loc3_.session.lastGrid = [0,3,3,0,0,1,4];
                                    _loc3_.session.tiles = 12;
                                    _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_8","NEVE",7),1,0,-100);
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
                           _loc3_.session.otherWordons = "!C,!O";
                           _loc3_.session.yourLetters = "A,S,H,O,T,I,T";
                           _loc3_.session.yourScore = 12;
                           _loc3_.session.yourGrid = [0,1,0,3,3,0,4];
                           _loc3_.session.otherScore = 0;
                           _loc3_.session.otherGrid = [3,0,0,3,0,1,4];
                           _loc3_.session.lastScore = 12;
                           _loc3_.session.lastWord = "C,I,A,O";
                           _loc3_.session.lastGrid = [3,0,1,3,0,0,4];
                           _loc3_.session.coinsWon = 2;
                           _loc3_.session.tiles = 16;
                           _loc3_.actions.message = CreateMessage(2,Localization.Get("tutorial_step_6","O","C"),4.5,0,100);
                        }
                     }
                     else
                     {
                        delete _loc3_.session;
                        _loc3_.actions.requiredWord = "CIAO";
                        _loc3_.actions.message = CreateMessage(1,Localization.Get("tutorial_step_5"),0.3,0,-100);
                     }
                  }
                  else
                  {
                     delete _loc3_.session;
                     _loc3_.actions.requiredWord = "CIAO";
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
            _loc3_.session.yourLetters = "C,I,H,O,I,T,A";
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
