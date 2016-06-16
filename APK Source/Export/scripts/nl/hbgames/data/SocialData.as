package nl.hbgames.data
{
   import flash.events.EventDispatcher;
   import nl.hbgames.managers.social.SocialProfile;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.ui.popups.WaitBox;
   import nl.hbgames.net.PHPWrapper;
   import nl.hbgames.managers.social.SocialManager;
   import nl.hbgames.ui.popups.MessageBox;
   import nl.hbgames.utils.Response;
   import nl.hbgames.events.SocialEvent;
   
   public class SocialData extends EventDispatcher
   {
       
      private const VALID_PERIOD:Number = 1.44E7;
      
      private var _CallbackFavorites:Function;
      
      private var _CallbackFacebook:Function;
      
      private var _Favorites:Array;
      
      private var _FacebookNonPlayers:Array;
      
      private var _FacebookPlayers:Array;
      
      private var _Blocks:Array;
      
      private var _FavoritesRefreshTime:Number;
      
      private var _FacebookRefreshTime:Number;
      
      private var _IsSilent:Boolean;
      
      public function SocialData()
      {
         super();
         _Favorites = null;
         _FacebookNonPlayers = null;
         _FacebookPlayers = null;
         _FacebookRefreshTime = 0;
         _FavoritesRefreshTime = 0;
      }
      
      public function get FavoritesList() : Array
      {
         return _Favorites == null?[]:_Favorites;
      }
      
      public function get FacebookList() : Array
      {
         return _FacebookPlayers == null || _FacebookNonPlayers == null?[]:_FacebookPlayers.concat(_FacebookNonPlayers);
      }
      
      public function get FacebookPlayers() : Array
      {
         return _FacebookPlayers == null?[]:_FacebookPlayers;
      }
      
      public function get FacebookNonPlayers() : Array
      {
         return _FacebookNonPlayers == null?[]:_FacebookNonPlayers;
      }
      
      public function get BlockList() : Array
      {
         return _Blocks == null?[]:_Blocks;
      }
      
      public function GetIDsFromFBList(param1:Array) : Array
      {
         var _loc4_:* = 0;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         if(param1 != null)
         {
            _loc4_ = 0;
            while(_loc4_ < param1.length)
            {
               if(param1[_loc4_] is SocialProfile)
               {
                  _loc3_ = param1[_loc4_];
                  if(_loc3_ != null && _loc3_.id)
                  {
                     _loc2_.push(_loc3_.id);
                  }
               }
               else
               {
                  Debugger.Instance.Write("[FriendsData::GetIDsFromList] Unsupported input encountered. Expecting SocialProfile.",true);
               }
               _loc4_++;
            }
         }
         return _loc2_;
      }
      
      public function ResetFavorites() : void
      {
         _Favorites = null;
      }
      
      public function ResetFacebookFriends() : void
      {
         _FacebookNonPlayers = null;
         _FacebookPlayers = null;
      }
      
      public function ResetBlocks() : void
      {
         _Blocks = null;
      }
      
      public function LoadFavorites(param1:Function, param2:Boolean = false) : void
      {
         _CallbackFavorites = param1;
         _IsSilent = param2;
         if(_Favorites == null || new Date().getTime() > _FavoritesRefreshTime)
         {
            if(!_IsSilent)
            {
               WaitBox.Show();
            }
            PHPWrapper.GetFriends(OnGetFavoritesResult);
         }
         else
         {
            _CallbackFavorites();
         }
      }
      
      public function LoadFacebookFriends(param1:Function, param2:Boolean = false) : void
      {
         callback = param1;
         silent = param2;
         _CallbackFacebook = callback;
         _IsSilent = silent;
         if(SocialManager.instance.isPermissionGranted("user_friends"))
         {
            if(_FacebookNonPlayers == null || _FacebookPlayers == null || new Date().getTime() > _FacebookRefreshTime)
            {
               if(!_IsSilent)
               {
                  WaitBox.Show();
               }
               SocialManager.instance.getFriends(OnFacebookFriendsResult);
            }
            else
            {
               _CallbackFacebook(true);
            }
         }
         else
         {
            _CallbackFacebook(false);
            if(!silent)
            {
               new MessageBox(Localization.Get("facebook_permission_denied_title"),Localization.Get("facebook_permission_denied_friends_descr"),false,true,function():void
               {
                  SocialManager.instance.requestNewReadPermissions("user_friends");
               },true);
            }
         }
      }
      
      private function OnFacebookFriendsResult(param1:Response) : void
      {
         response = param1;
         WaitBox.Hide();
         if(response.isSuccess)
         {
            var list:Vector.<SocialProfile> = response.data != null?response.data:new Vector.<SocialProfile>();
            list.sort(function(param1:SocialProfile, param2:SocialProfile):Number
            {
               if(param1.firstName < param2.firstName)
               {
                  return -1;
               }
               if(param1.firstName > param2.firstName)
               {
                  return 1;
               }
               return 0;
            });
            _FacebookPlayers = [];
            _FacebookNonPlayers = [];
            var i:uint = 0;
            while(i < list.length)
            {
               if(list[i].hasAppInstalled)
               {
                  _FacebookPlayers.push(list[i]);
               }
               else
               {
                  _FacebookNonPlayers.push(list[i]);
               }
               i = i + 1;
            }
            _FacebookRefreshTime = new Date().getTime() + 14400000;
            _CallbackFacebook(true);
         }
         else
         {
            if(!_IsSilent)
            {
               new MessageBox(Localization.Get("facebook_connection_error_title"),Localization.Get("facebook_connection_error_descr"),true);
            }
            _CallbackFacebook(false);
         }
      }
      
      public function GetFacebookFriendByID(param1:String) : SocialProfile
      {
         var _loc4_:* = 0;
         if(_FacebookNonPlayers == null || _FacebookPlayers == null)
         {
            return null;
         }
         var _loc3_:Array = this.FacebookList;
         var _loc2_:uint = _loc3_.length;
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc3_[_loc4_].id == param1)
            {
               return _loc3_[_loc4_];
            }
            _loc4_++;
         }
         return null;
      }
      
      public function Set(param1:Object) : void
      {
         if(param1.friends || param1.blocked)
         {
            OnGetFavoritesResult(param1,true);
         }
      }
      
      private function OnGetFavoritesResult(param1:Object, param2:Boolean = false) : void
      {
         var _loc4_:* = 0;
         var _loc3_:* = null;
         WaitBox.Hide();
         if(param1.result == ":)")
         {
            _Favorites = [];
            _Blocks = [];
            if(param1.friends && param1.friends.length > 0)
            {
               _loc4_ = 0;
               while(_loc4_ < param1.friends.length)
               {
                  _loc3_ = param1.friends[_loc4_];
                  _Favorites.push(_loc3_);
                  _loc4_++;
               }
            }
            if(param1.blocked && param1.blocked.length > 0)
            {
               _loc4_ = 0;
               while(_loc4_ < param1.blocked.length)
               {
                  _Blocks.push(param1.blocked[_loc4_].id);
                  _loc4_++;
               }
            }
            _FavoritesRefreshTime = new Date().getTime() + 14400000;
            _Favorites.sortOn("displayname",1);
            if(!param2)
            {
               _CallbackFavorites();
            }
         }
         else if(!_IsSilent)
         {
            new MessageBox(Localization.Get("whoops"),Localization.Get("cannot_request_friendslist"),true);
         }
      }
      
      public function AddFavorite(param1:String, param2:String) : void
      {
         var _loc4_:* = 0;
         if(_Favorites == null)
         {
            _Favorites = [];
         }
         var _loc3_:* = true;
         _loc4_ = 0;
         while(_loc4_ < _Favorites.length)
         {
            if(_Favorites.id == param1)
            {
               _loc3_ = false;
               break;
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            _Favorites.push({
               "id":param1,
               "displayname":param2
            });
            this.dispatchEvent(new SocialEvent("favoriteAdded",param1));
         }
      }
      
      public function RemoveFavorite(param1:String) : void
      {
         var _loc2_:* = 0;
         if(_Favorites)
         {
            _loc2_ = 0;
            while(_loc2_ < _Favorites.length)
            {
               if(_Favorites[_loc2_].id == param1)
               {
                  _Favorites.splice(_loc2_,1);
                  this.dispatchEvent(new SocialEvent("favoriteRemoved",param1));
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      public function GetFavorite(param1:String) : Object
      {
         var _loc2_:* = 0;
         if(_Favorites)
         {
            _loc2_ = 0;
            while(_loc2_ < _Favorites.length)
            {
               if(_Favorites[_loc2_].id == param1)
               {
                  return _Favorites[_loc2_];
               }
               _loc2_++;
            }
         }
         return null;
      }
      
      public function AddBlock(param1:String) : void
      {
         if(_Blocks == null)
         {
            _Blocks = [];
         }
         if(_Blocks.indexOf(param1) == -1)
         {
            _Blocks.push(param1);
            this.dispatchEvent(new SocialEvent("userBlocked",param1));
         }
      }
      
      public function RemoveBlock(param1:String) : void
      {
         var _loc2_:* = 0;
         if(_Blocks != null)
         {
            _loc2_ = 0;
            while(_loc2_ < _Blocks.length)
            {
               if(_Blocks[_loc2_] == param1)
               {
                  _Blocks.splice(_loc2_,1);
                  this.dispatchEvent(new SocialEvent("userUnblocked",param1));
                  return;
               }
               _loc2_++;
            }
         }
      }
      
      public function IsBlocked(param1:String) : Boolean
      {
         var _loc2_:* = 0;
         if(_Blocks != null)
         {
            _loc2_ = 0;
            while(_loc2_ < _Blocks.length)
            {
               if(_Blocks[_loc2_] == param1)
               {
                  return true;
               }
               _loc2_++;
            }
         }
         return false;
      }
      
      public function SearchFacebook(param1:String, param2:Boolean = true, param3:Boolean = false) : Array
      {
         searchKey = param1;
         startsWithKey = param2;
         playersOnly = param3;
         var result:Array = [];
         if(searchKey == null || searchKey.length < 2)
         {
            return result;
         }
         var list:Array = playersOnly?this.FacebookPlayers:this.FacebookList;
         var searchKey:String = searchKey.toLowerCase();
         var i:uint = 0;
         while(i < list.length)
         {
            var friend:SocialProfile = list[i];
            var index:int = friend.fullName.toLowerCase().indexOf(searchKey);
            if(startsWithKey && index == 0 || !startsWithKey && index > -1)
            {
               result.push(friend);
            }
            i = i + 1;
         }
         result.sort(function(param1:SocialProfile, param2:SocialProfile):Number
         {
            if(param1.fullName.length < param2.fullName.length)
            {
               return -1;
            }
            if(param1.fullName.length > param2.fullName.length)
            {
               return 1;
            }
            return 0;
         });
         return result;
      }
      
      public function Dispose() : void
      {
         _FacebookNonPlayers = null;
         _FacebookPlayers = null;
         _Favorites = null;
         _CallbackFavorites = null;
         _CallbackFacebook = null;
         _Blocks = null;
         _FacebookRefreshTime = 0;
         _FavoritesRefreshTime = 0;
      }
   }
}
