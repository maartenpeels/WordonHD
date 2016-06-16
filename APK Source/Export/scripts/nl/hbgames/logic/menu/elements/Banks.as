package nl.hbgames.logic.menu.elements
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.data.ClientData;
   import flash.events.Event;
   import nl.hbgames.WordOn;
   import nl.hbgames.utils.Random;
   
   public class Banks extends Object
   {
       
      private var _Content:MovieClip;
      
      private var _PiggyBank:MovieClip;
      
      private var _StarBank:MovieClip;
      
      private var _Initialized:Boolean = false;
      
      public function Banks(param1:MovieClip, param2:Boolean = true)
      {
         super();
         _Content = param1;
         _PiggyBank = _Content.mcCoins;
         _StarBank = _Content.mcStars;
         EnableButtons(param2);
         Refresh();
         ClientData.Instance.Inventory.addEventListener("change",Refresh);
         _Initialized = true;
      }
      
      private function OnBankClick(param1:MouseEvent = null) : void
      {
         LogicManager.Instance.SetState("ShopOverview");
         PanelManager.Instance.CloseAll();
      }
      
      public function AddCoins(param1:int = 1) : void
      {
         ClientData.Instance.Inventory.TotalCoins = ClientData.Instance.Inventory.TotalCoins + param1;
         _PiggyBank.lblValue.text = ClientData.Instance.Inventory.TotalCoins;
         _PiggyBank.gotoAndPlay(2);
      }
      
      public function EnableButtons(param1:Boolean = true) : void
      {
         if(param1)
         {
            _PiggyBank.addEventListener("click",OnBankClick);
            _StarBank.addEventListener("click",OnBankClick);
         }
         else
         {
            _PiggyBank.removeEventListener("click",OnBankClick);
            _StarBank.removeEventListener("click",OnBankClick);
         }
      }
      
      private function Refresh(param1:Event = null) : void
      {
         if(_PiggyBank.lblValue.text != ClientData.Instance.Inventory.TotalCoins)
         {
            _PiggyBank.lblValue.text = ClientData.Instance.Inventory.TotalCoins;
            if(_Initialized)
            {
               _PiggyBank.gotoAndPlay(2);
               WordOn.Instance.Audio.Play(Random.pick(["sfxCoinCollect1","sfxCoinCollect2","sfxCoinCollect3","sfxCoinCollect4","sfxCoinCollect5"]));
            }
         }
         if(_StarBank.lblValue.text != ClientData.Instance.Inventory.TotalStars)
         {
            _StarBank.lblValue.text = ClientData.Instance.Inventory.TotalStars;
            if(_Initialized)
            {
               _StarBank.gotoAndPlay(2);
               WordOn.Instance.Audio.Play(Random.pick(["sfxStarsSpent"]));
            }
         }
      }
      
      public function Dispose() : void
      {
         ClientData.Instance.Inventory.removeEventListener("change",Refresh);
         EnableButtons(false);
         _Content = null;
         _PiggyBank = null;
         _StarBank = null;
      }
   }
}
