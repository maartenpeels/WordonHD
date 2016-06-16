package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.buttons.BigButton;
   import nl.hbgames.ui.buttons.TextButton;
   import nl.hbgames.data.Localization;
   import nl.hbgames.utils.TextfieldUtil;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.utils.RegularExpression;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.data.ClientData;
   import nl.hbgames.net.PHPWrapper;
   
   public class NewUserPanel extends BasePanel
   {
       
      private var _BtnContinue:BigButton;
      
      private var _BtnHaveAccount:TextButton;
      
      private var _CallbackParam:int = 0;
      
      private var _SuccessCallback:Function;
      
      private var _DefaultName:String;
      
      public function NewUserPanel(param1:Function)
      {
         _SuccessCallback = param1;
         super(new libNewUserScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         var _loc1_:* = Localization.Get("new_user_welcome");
         _Content.lblWelcomeBottom.text = _loc1_;
         _Content.lblWelcomeTop.htmlText = _loc1_;
         _DefaultName = Localization.Get("new_user_player_name");
         _Content.txtEmail1.text = Localization.Get("new_user_email");
         _Content.txtEmail2.text = Localization.Get("new_user_email_repeat");
         _Content.txtPlayerName.htmlText = _DefaultName;
         _Content.txtPlayerName.restrict = null;
         _Content.txtPlayerName.maxChars = 12;
         _loc1_ = null;
         _Content.txtEmail2.restrict = _loc1_;
         _Content.txtEmail1.restrict = _loc1_;
         _loc1_ = 255;
         _Content.txtEmail2.maxChars = _loc1_;
         _Content.txtEmail1.maxChars = _loc1_;
         _BtnContinue = new BigButton(_Content.btnContinue,OnContinueClick,Localization.Get("new_user_create_account"));
         _BtnHaveAccount = new TextButton(_Content.btnAlreadyAccount,function():void
         {
            _CallbackParam = 1;
            OnBackClick();
         },"<u>" + Localization.Get("new_user_already_have_account") + "</u>");
         TextfieldUtil.Register(_Content.txtPlayerName,"default",true);
         TextfieldUtil.Register(_Content.txtEmail1,"email",true);
         TextfieldUtil.Register(_Content.txtEmail2,"email",true);
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         super.OnBackClick(param1);
         _BtnContinue.Disable();
         _BtnHaveAccount.Disable();
      }
      
      private function OnContinueClick(param1:MouseEvent) : void
      {
         e = param1;
         var name:String = _Content.txtPlayerName.text;
         var email1:String = _Content.txtEmail1.text;
         var email2:String = _Content.txtEmail2.text;
         if(name == _DefaultName || name.length < 2 || name.length > 12)
         {
            return;
            §§push(new MessageBox(Localization.Get("attention"),Localization.Get("account_form_invalid_name",2,12),false,true,function():void
            {
               _Content.mcAttention1.gotoAndPlay(2);
            }));
         }
         else if(!RegularExpression.EMAIL.test(email1))
         {
            return;
            §§push(new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_email"),false,true,function():void
            {
               _Content.mcAttention2.gotoAndPlay(2);
            }));
         }
         else if(!RegularExpression.EMAIL.test(email2))
         {
            return;
            §§push(new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_email"),false,true,function():void
            {
               _Content.mcAttention3.gotoAndPlay(2);
            }));
         }
         else if(email1 != email2)
         {
            return;
            §§push(new MessageBox(Localization.Get("title_try_again"),Localization.Get("email_mismatch"),false,true,function():void
            {
               _Content.mcAttention2.gotoAndPlay(2);
               _Content.mcAttention3.gotoAndPlay(2);
            }));
         }
         else
         {
            WaitBox.Show();
            ClientData.Instance.Player.Email = email1;
            PHPWrapper.Register(OnUserRegisterResult,name,email1);
            return;
         }
      }
      
      private function OnUserRegisterResult(param1:Object) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.result == ":)")
         {
            ClientData.Instance.Login(function():void
            {
               _CallbackParam = 2;
               Close();
            },response);
         }
         else if(response.error == 11)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("username_already_exists"),false,true,function():void
            {
               _Content.mcAttention1.gotoAndPlay(2);
            });
         }
         else if(response.error == 6)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("email_already_exists"),false,true,function():void
            {
               _Content.mcAttention2.gotoAndPlay(2);
               _Content.mcAttention3.gotoAndPlay(2);
            });
         }
         else if(response.error == 4)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_username"),false,true,function():void
            {
               _Content.mcAttention1.gotoAndPlay(2);
            });
         }
         else if(response.error == 5)
         {
            new MessageBox(Localization.Get("title_try_again"),Localization.Get("invalid_email"),false,true,function():void
            {
               _Content.mcAttention2.gotoAndPlay(2);
            });
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("new_user_reg_failed"),true);
         }
      }
      
      override protected function OnClosed() : void
      {
         if(_CallbackParam > 0)
         {
            _SuccessCallback(_CallbackParam);
         }
         super.OnClosed();
      }
      
      override public function Dispose() : void
      {
         TextfieldUtil.Unregister(_Content.txtPlayerName);
         TextfieldUtil.Unregister(_Content.txtEmail1);
         TextfieldUtil.Unregister(_Content.txtEmail2);
         _BtnContinue.Dispose();
         _BtnContinue = null;
         _BtnHaveAccount.Dispose();
         _BtnHaveAccount = null;
         _SuccessCallback = null;
         super.Dispose();
      }
   }
}
