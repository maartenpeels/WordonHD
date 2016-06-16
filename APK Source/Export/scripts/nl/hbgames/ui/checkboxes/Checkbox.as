package nl.hbgames.ui.checkboxes
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import nl.hbgames.utils.ButtonUtil;
   
   public class Checkbox extends Object
   {
       
      protected var _Content:MovieClip;
      
      private var _Callback:Function;
      
      private var _Checked:Boolean;
      
      public function Checkbox(param1:MovieClip, param2:Function = null, param3:Boolean = false)
      {
         super();
         _Content = param1;
         ButtonUtil.Register(_Content,OnClick);
         _Callback = param2;
         _Checked = param3;
         _Content.gotoAndStop(_Checked?2:1.0);
      }
      
      public function get IsChecked() : Boolean
      {
         return _Checked;
      }
      
      private function OnClick(param1:MouseEvent) : void
      {
         _Checked = !_Checked;
         if(_Checked)
         {
            _Content.gotoAndStop(2);
         }
         else
         {
            _Content.gotoAndStop(1);
         }
         if(_Callback != null)
         {
            _Callback(_Checked);
         }
      }
      
      public function Show() : void
      {
         _Content.visible = true;
      }
      
      public function Hide() : void
      {
         _Content.visible = false;
      }
      
      public function Dispose() : void
      {
         ButtonUtil.Unregister(_Content);
         _Callback = null;
         _Content = null;
      }
   }
}
