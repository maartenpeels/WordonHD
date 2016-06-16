package nl.hbgames.ui.list
{
   import nl.hbgames.data.Localization;
   import nl.hbgames.managers.AssetManager;
   
   public class DigitalClockListItem extends BaseListItem
   {
       
      private var _Title:String;
      
      private var _TimeLeft:Number;
      
      private var _EndDate:Date;
      
      public function DigitalClockListItem(param1:String, param2:Number)
      {
         _Title = param1;
         _EndDate = new Date(param2);
         super(AssetManager.GetDefinition("libListDigitalClockContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         _Content.lblTitle.text = _Title;
         _Content.lblDays.text = Localization.Get("general_label_days");
         _Content.lblHours.text = Localization.Get("general_label_hours");
         _Content.lblMinutes.text = Localization.Get("general_label_minutes");
         _Content.lblSeconds.text = Localization.Get("general_label_seconds");
         UpdateClock();
      }
      
      public function UpdateClock() : void
      {
         var _loc1_:Date = new Date();
         _TimeLeft = (_EndDate.getTime() - _loc1_.getTime()) / 1000;
         if(_TimeLeft < 0)
         {
            _TimeLeft = 0;
         }
         var _loc4_:Number = Math.floor(_TimeLeft);
         var _loc2_:Number = Math.floor(_loc4_ / 60);
         var _loc5_:Number = Math.floor(_loc2_ / 60);
         var _loc3_:Number = Math.floor(_loc5_ / 24);
         _loc4_ = _loc4_ % 60;
         _loc2_ = _loc2_ % 60;
         _loc5_ = _loc5_ % 24;
         _Content.lblDigitDay1.text = Digitize(_loc3_,1);
         _Content.lblDigitDay2.text = Digitize(_loc3_,2);
         _Content.lblDigitHour1.text = Digitize(_loc5_,1);
         _Content.lblDigitHour2.text = Digitize(_loc5_,2);
         _Content.lblDigitMinute1.text = Digitize(_loc2_,1);
         _Content.lblDigitMinute2.text = Digitize(_loc2_,2);
         _Content.lblDigitSecond1.text = Digitize(_loc4_,1);
         _Content.lblDigitSecond2.text = Digitize(_loc4_,2);
      }
      
      private function Digitize(param1:Number, param2:int) : String
      {
         var _loc3_:String = param1 < 10?"0" + param1.toString():param1.toString();
         return _loc3_.substr(param2 - 1,1);
      }
      
      override public function Dispose() : void
      {
         super.Dispose();
      }
   }
}
