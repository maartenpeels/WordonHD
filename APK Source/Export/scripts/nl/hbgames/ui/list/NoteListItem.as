package nl.hbgames.ui.list
{
   import flash.display.MovieClip;
   import nl.hbgames.managers.AssetManager;
   
   public class NoteListItem extends BaseListItem
   {
       
      private var _Description:String;
      
      private var _SubText:String;
      
      private var _ShowLoader:Boolean;
      
      private var _Loader:MovieClip;
      
      public function NoteListItem(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         _Description = param1;
         _ShowLoader = param3;
         super(AssetManager.GetDefinition(!param2?"libListNoteContent":"libListDoubleNoteContent",true,true));
      }
      
      override protected function Initialize() : void
      {
         super.Initialize();
         if(!_ShowLoader)
         {
            _Content.lblDescription.text = _Description;
         }
         else
         {
            _Loader = AssetManager.GetDefinition("libSmallLoader",true,true);
            _Loader.x = _Content.width / 2 / AssetManager.ContentScaleFactor;
            _Loader.y = _Content.height / 2 / AssetManager.ContentScaleFactor;
            _Content.addChild(_Loader);
         }
         _Content.mouseChildren = false;
         _Content.mouseEnabled = false;
      }
      
      override public function Dispose() : void
      {
         _Description = null;
         if(_Loader != null)
         {
            _Content.removeChild(_Loader);
            _Loader = null;
         }
         super.Dispose();
      }
   }
}
