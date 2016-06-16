package nl.hbgames.enums
{
   import nl.hbgames.config.Settings;
   import nl.hbgames.data.shop.ShopData;
   import nl.hbgames.data.shop.ShopItemData;
   import nl.hbgames.data.game.TilesetData;
   import nl.hbgames.utils.Debugger;
   
   public class ShopItems extends Object
   {
      
      private static const PREFIX:String = "wordon_";
      
      public static const TILESET_NAME:String = "item_tileset_";
      
      public static const PACK_BONUS:String = "pack_bonus";
      
      public static const COINS_SMALL:String = "coins_small";
      
      public static const COINS_MEDIUM:String = "coins_medium";
      
      public static const COINS_LARGE:String = "coins_large";
      
      public static const COINS_HUGE:String = "coins_huge";
      
      public static const STARS_SMALL:String = "stars_small";
      
      public static const STARS_MEDIUM:String = "stars_medium";
      
      public static const STARS_LARGE:String = "stars_large";
      
      public static const STARS_HUGE:String = "stars_huge";
      
      public static const STARS_RLM_SMALL:String = "stars_rlm_small";
      
      public static const STARS_RLM_MEDIUM:String = "stars_rlm_medium";
      
      public static const STARS_RLM_LARGE:String = "stars_rlm_large";
      
      public static const STARS_RLM_HUGE:String = "stars_rlm_huge";
      
      public static const STARS_COINS_LARGE:String = "stars_coins_large";
      
      public static const STARS_COINS_MEDIUM:String = "stars_coins_medium";
      
      public static const STARS_COINS_SMALL:String = "stars_coins_small";
      
      public static const ITEM_EXTRA_STATS:String = "item_extra_stats";
      
      public static const ITEM_MAX_GAMES:String = "item_max_games";
      
      public static const ITEM_CHAT_GAME_LOG:String = "item_chat_game_log";
      
      public static const ITEM_NO_ADS:String = "item_no_ads";
      
      public static const ITEM_NO_ADS_NONCONSUMABLE:String = "item_no_ads_nonconsumable";
      
      public static const ITEM_COIN_BOOSTER_PERM:String = "item_coin_booster_perm";
      
      public static const ITEM_WORD_DEFINITION:String = "item_word_definition";
      
      public static const ITEM_PRACTICE_MODE:String = "item_practice_mode";
      
      private static const IMAGE_LIST:Array = ["coins_small","coins_medium","coins_large","coins_huge","item_max_games","item_extra_stats","item_chat_game_log","item_no_ads",["stars_small","stars_rlm_small"],["stars_medium","stars_rlm_medium"],["stars_large","stars_rlm_large"],["stars_huge","stars_rlm_huge"],"pack_bonus","item_coin_booster_perm","stars_coins_small","stars_coins_medium","stars_coins_large"];
       
      public function ShopItems()
      {
         super();
      }
      
      public static function GetImageID(param1:String) : int
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < IMAGE_LIST.length)
         {
            if(IMAGE_LIST[_loc2_] is String && IMAGE_LIST[_loc2_] == param1)
            {
               return _loc2_ + 1;
            }
            if(IMAGE_LIST[_loc2_] is Array && IMAGE_LIST[_loc2_].indexOf(param1) != -1)
            {
               return _loc2_ + 1;
            }
            _loc2_++;
         }
         return 0;
      }
      
      public static function GetBillingID(param1:String) : String
      {
         return "wordon_" + param1;
      }
      
      public static function GetNormalID(param1:String) : String
      {
         return param1.indexOf("wordon_") == -1?param1:param1.substr("wordon_".length);
      }
      
      public static function GetAllProductListForBilling() : Vector.<String>
      {
         var _loc3_:* = 0;
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("wordon_" + "coins_small");
         _loc1_.push("wordon_" + "coins_medium");
         _loc1_.push("wordon_" + "coins_large");
         _loc1_.push("wordon_" + "coins_huge");
         _loc1_.push("wordon_" + "stars_rlm_small");
         _loc1_.push("wordon_" + "stars_rlm_medium");
         _loc1_.push("wordon_" + "stars_rlm_large");
         _loc1_.push("wordon_" + "stars_rlm_huge");
         _loc1_.push(Settings.IS_IOS?"wordon_" + "item_no_ads_nonconsumable":"wordon_" + "item_no_ads");
         _loc1_.push("wordon_" + "item_coin_booster_perm");
         var _loc2_:Vector.<ShopItemData> = ShopData.GetTileList();
         if(_loc2_ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc2_[_loc3_].Currency == "money")
               {
                  _loc1_.push("wordon_" + _loc2_[_loc3_].ID);
               }
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      public static function GetConsumableProductListForBilling() : Array
      {
         var _loc1_:Array = ["wordon_" + "coins_small","wordon_" + "coins_medium","wordon_" + "coins_large","wordon_" + "coins_huge","wordon_" + "stars_rlm_small","wordon_" + "stars_rlm_medium","wordon_" + "stars_rlm_large","wordon_" + "stars_rlm_huge"];
         return _loc1_;
      }
      
      public static function GetTilesetName(param1:int) : String
      {
         return "item_tileset_" + param1;
      }
      
      public static function IsValidTilesetItem(param1:String) : Boolean
      {
         return TilesetData.IsValid(param1.replace("item_tileset_",""));
      }
      
      public static function GetSwrveID(param1:String) : String
      {
         var _loc2_:Object = TilesetData.GetInfoByShopID(param1,false);
         if(_loc2_ != null)
         {
            return "item.tileset." + _loc2_.id;
         }
         var _loc3_:* = param1;
         if("stars_huge" !== _loc3_)
         {
            if("stars_large" !== _loc3_)
            {
               if("stars_medium" !== _loc3_)
               {
                  if("stars_small" !== _loc3_)
                  {
                     if("stars_coins_large" !== _loc3_)
                     {
                        if("stars_coins_medium" !== _loc3_)
                        {
                           if("stars_coins_small" !== _loc3_)
                           {
                              if("stars_rlm_huge" !== _loc3_)
                              {
                                 if("stars_rlm_large" !== _loc3_)
                                 {
                                    if("stars_rlm_medium" !== _loc3_)
                                    {
                                       if("stars_rlm_small" !== _loc3_)
                                       {
                                          if("coins_huge" !== _loc3_)
                                          {
                                             if("coins_large" !== _loc3_)
                                             {
                                                if("coins_medium" !== _loc3_)
                                                {
                                                   if("coins_small" !== _loc3_)
                                                   {
                                                      if("item_no_ads" !== _loc3_)
                                                      {
                                                         if("item_no_ads_nonconsumable" !== _loc3_)
                                                         {
                                                            if("item_coin_booster_perm" !== _loc3_)
                                                            {
                                                               if("item_word_definition" !== _loc3_)
                                                               {
                                                                  if("item_practice_mode" !== _loc3_)
                                                                  {
                                                                     Debugger.Instance.Write("[ShopItems::GetSwrveID] Unknown itemID \'" + param1 + "\' encountered. Returning empty string value!",true);
                                                                     return "";
                                                                  }
                                                                  return "item.practicemode";
                                                               }
                                                               return "item.worddef";
                                                            }
                                                            return "item.coinbooster.perm";
                                                         }
                                                      }
                                                      return "item.adfree";
                                                   }
                                                   return "pack.coins.small";
                                                }
                                                return "pack.coins.medium";
                                             }
                                             return "pack.coins.large";
                                          }
                                          return "pack.coins.huge";
                                       }
                                       return "pack.starsrlm.small";
                                    }
                                    return "pack.starsrlm.medium";
                                 }
                                 return "pack.starsrlm.large";
                              }
                              return "pack.starsrlm.huge";
                           }
                           return "pack.starscoins.small";
                        }
                        return "pack.starscoins.medium";
                     }
                     return "pack.starscoins.large";
                  }
                  return "pack.stars.small";
               }
               return "pack.stars.medium";
            }
            return "pack.stars.large";
         }
         return "pack.stars.huge";
      }
   }
}
