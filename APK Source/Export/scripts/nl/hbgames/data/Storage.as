package nl.hbgames.data
{
   import flash.filesystem.File;
   import nl.hbgames.utils.Debugger;
   import flash.utils.ByteArray;
   import flash.system.Capabilities;
   import flash.filesystem.FileStream;
   import nl.hbgames.managers.AssetManager;
   import nl.hbgames.ui.popups.MessageBox;
   import flash.desktop.NativeApplication;
   
   public class Storage extends Object
   {
      
      private static const ANDROID_STORAGE_PATH:String = "/Android/data/";
      
      private static const WINDOWS_STORAGE_PATH:String = "/../appdata/";
      
      public static const IOS_DOCUMENTS_DIR:String = "ios_documents";
      
      public static const IOS_SUPPORT_DIR:String = "ios_support";
      
      public static const IOS_CACHE_DIR:String = "ios_cache";
      
      private static const SHOW_DEBUG_ON_SCREEN:Boolean = false;
       
      public function Storage()
      {
         super();
      }
      
      public static function FileExists(param1:String, param2:String = null) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:* = false;
         if(param1 == null)
         {
            return false;
         }
         var _loc3_:File = GetStoragePath(param2);
         try
         {
            _loc4_ = _loc3_.resolvePath(param1);
            _loc5_ = _loc4_.exists;
         }
         catch(e:Error)
         {
            _loc5_ = false;
         }
         return _loc5_;
      }
      
      public static function DeleteFile(param1:String, param2:String = null) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:* = false;
         if(param1 == null)
         {
            return false;
         }
         var _loc3_:File = GetStoragePath(param2);
         try
         {
            _loc4_ = _loc3_.resolvePath(param1);
            if(_loc4_.exists)
            {
               _loc4_.deleteFile();
               _loc5_ = true;
            }
            else
            {
               Debugger.Instance.Write("[Storage::DeleteFile] File does not exist and can\'t be deleted.",false,false);
               _loc5_ = false;
            }
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[Storage::DeleteFile] " + e,true,false);
            _loc5_ = false;
         }
         return _loc5_;
      }
      
      public static function DeleteDirectory(param1:String, param2:Boolean, param3:String = null) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:* = false;
         if(param1 == null)
         {
            return false;
         }
         var _loc4_:File = GetStoragePath(param3);
         try
         {
            _loc5_ = _loc4_.resolvePath(param1);
            if(_loc5_.isDirectory)
            {
               _loc5_.deleteDirectory(param2);
               _loc6_ = true;
            }
            else
            {
               _loc6_ = false;
            }
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[Storage::DeleteDirectory] " + e,true,false);
            _loc6_ = false;
         }
         return _loc6_;
      }
      
      public static function WriteFile(param1:String, param2:ByteArray, param3:Boolean = true, param4:Boolean = false, param5:String = null, param6:Boolean = false, param7:Boolean = true) : Boolean
      {
         var _loc10_:* = null;
         var _loc9_:* = null;
         var _loc11_:* = false;
         if(param1 == null || param2 == null)
         {
            return false;
         }
         var _loc8_:File = GetStoragePath(param5);
         try
         {
            _loc10_ = _loc8_.resolvePath(param1);
            if(Capabilities.manufacturer.indexOf("iOS") != -1)
            {
               _loc10_.preventBackup = param6;
            }
            if(param3)
            {
               param2.compress();
            }
            _loc9_ = new FileStream();
            _loc9_.open(_loc10_,param4?"append":"write");
            _loc9_.writeBytes(param2,0,0);
            _loc9_.close();
            _loc11_ = true;
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[Storage::WriteFile] " + e,true,false);
            if(param7 && AssetManager.IsInitialized)
            {
               new MessageBox(Localization.Get("error"),Localization.Get("could_not_write"),true);
            }
            _loc11_ = false;
         }
         return _loc11_;
      }
      
      public static function ReadFile(param1:String, param2:Boolean = true, param3:String = null, param4:Boolean = true) : ByteArray
      {
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc8_:ByteArray = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc5_:File = GetStoragePath(param3);
         try
         {
            _loc7_ = _loc5_.resolvePath(param1);
            _loc8_ = new ByteArray();
            _loc6_ = new FileStream();
            _loc6_.open(_loc7_,"read");
            _loc6_.readBytes(_loc8_,0,0);
            _loc6_.close();
            if(param2)
            {
               _loc8_.uncompress();
            }
         }
         catch(e:Error)
         {
            Debugger.Instance.Write("[Storage::ReadFile] " + e + " [" + _loc7_.name + "]",true,false);
            if(param4 && AssetManager.IsInitialized)
            {
               new MessageBox(Localization.Get("error"),Localization.Get("could_not_load"),true);
            }
            _loc8_ = null;
         }
         return _loc8_;
      }
      
      private static function GetStoragePath(param1:String = null) : File
      {
         var _loc2_:* = null;
         if(Capabilities.manufacturer.indexOf("Android") != -1)
         {
            _loc2_ = NativeApplication.nativeApplication.applicationID;
            if(_loc2_.substr(0,4) != "air.")
            {
               _loc2_ = "air." + _loc2_;
            }
            return new File(File.documentsDirectory.nativePath + "/Android/data/" + _loc2_);
         }
         if(Capabilities.manufacturer.indexOf("iOS") != -1)
         {
            if(param1 == null)
            {
               Debugger.Instance.Write("[Storage::GetStoragePath] No iOS storage dir specified, falling back to Storage.IOS_CACHE_DIR. Are you sure this is correct?",true,false);
               var param1:String = "ios_cache";
            }
            var _loc3_:* = param1;
            if("ios_documents" !== _loc3_)
            {
               if("ios_support" !== _loc3_)
               {
                  if("ios_cache" === _loc3_)
                  {
                     return File.cacheDirectory;
                  }
               }
               else
               {
                  return File.applicationStorageDirectory;
               }
            }
            else
            {
               return File.documentsDirectory;
            }
         }
         else if(Capabilities.manufacturer.indexOf("Windows") != -1)
         {
            return new File(File.applicationDirectory.nativePath + "/../appdata/");
         }
         Debugger.Instance.Write("[Storage::GetStoragePath] Unknown platform detected, falling back to File.applicationStorageDirectory!",true,false);
         return File.applicationStorageDirectory;
      }
   }
}
