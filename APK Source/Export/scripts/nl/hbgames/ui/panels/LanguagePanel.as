package nl.hbgames.ui.panels
{
   import nl.hbgames.ui.scrollwheel.ScrollingWheel;
   import nl.hbgames.data.Localization;
   import nl.hbgames.data.AppData;
   import nl.hbgames.ui.scrollwheel.LabelWheelItem;
   import flash.events.MouseEvent;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.Serializer;
   import nl.hbgames.managers.PanelManager;
   import nl.hbgames.managers.LogicManager;
   import nl.hbgames.ui.popups.MessageBox;
   
   public class LanguagePanel extends BasePanel
   {
       
      private var _ScrollingWheel:ScrollingWheel;
      
      public function LanguagePanel()
      {
         super(new libLanguageScreen_Layouts());
      }
      
      override protected function Initialize() : void
      {
         var _loc2_:* = 0;
         super.Initialize();
         _Content.lblDescription.text = Localization.Get("app_language_description");
         _ScrollingWheel = new ScrollingWheel(_Content.mcList,Localization.GetLanguageID(AppData.Instance.ApplicationLanguage,true),5,0);
         var _loc1_:Array = [];
         _loc2_ = 0;
         while(_loc2_ < Localization.LANGUAGES.length)
         {
            if(Localization.LANGUAGES[_loc2_].hasTranslation)
            {
               _loc1_.push({
                  "langName":Localization.LANGUAGES[_loc2_].language,
                  "langKey":Localization.LANGUAGES[_loc2_].key
               });
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc1_.length)
         {
            _ScrollingWheel.Add(new LabelWheelItem(_loc1_[_loc2_].langName,_loc1_[_loc2_].langKey));
            _loc2_++;
         }
         _ScrollingWheel.Initialize();
      }
      
      override public function Update() : void
      {
         super.Update();
         if(_ScrollingWheel)
         {
            _ScrollingWheel.Update();
         }
      }
      
      override public function OnBackClick(param1:MouseEvent = null) : void
      {
         if(AppData.Instance.ApplicationLanguage != LabelWheelItem(_ScrollingWheel.SelectedItem).Data)
         {
            WaitBox.Show();
            PHPWrapper.StoreApplicationLanguage(OnLanguageSet,LabelWheelItem(_ScrollingWheel.SelectedItem).Data);
         }
         else
         {
            super.OnBackClick(param1);
         }
      }
      
      private function OnLanguageSet(param1:Object) : void
      {
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            AppData.Instance.ApplicationLanguage = LabelWheelItem(_ScrollingWheel.SelectedItem).Data;
            AppData.Instance.AppLanguageModified = true;
            Serializer.Instance.Serialize();
            AppData.Instance.ProcessNewsItems(param1.newsItems);
            AppData.Instance.PromoData = param1.promo;
            PanelManager.Instance.CloseAll();
            LogicManager.Instance.SetState("GameOverview",null,"AnimLeft",true);
         }
         else
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("language_change_failed"),true);
         }
         this.Close();
      }
      
      override public function Dispose() : void
      {
         _ScrollingWheel.Dispose();
         _ScrollingWheel = null;
         super.Dispose();
      }
   }
}
