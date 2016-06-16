package nl.hbgames.data
{
   import nl.hbgames.interfaces.ISerializable;
   import nl.hbgames.utils.Debugger;
   import nl.hbgames.managers.Serializer;
   import nl.hbgames.net.SWRVETracker;
   import flash.utils.ByteArray;
   
   public class TrackingData extends Object implements ISerializable
   {
      
      private static var _Instance:TrackingData = null;
       
      private var _IsBuyer:Boolean;
      
      private var _HasViewedAnalyzerTutorial:Boolean;
      
      private var _HasViewedHintExplanation:Boolean;
      
      private var _HasViewedPeekExplanation:Boolean;
      
      private var _HasViewedOfferExplanation:Boolean;
      
      private var _HasViewedWordOnsTip:Boolean;
      
      private var _HasViewedGaveWordOnsTip:Boolean;
      
      private var _HasViewedEmptyRackTip:Boolean;
      
      private var _HasViewedFBInviteTip:Boolean;
      
      private var _HasUsedHBPromo:Boolean;
      
      private var _GamesFinished:int;
      
      private var _GamesStarted:int;
      
      private var _TurnsPlayed:int;
      
      private var _HBPromoTimestamp:Number;
      
      public function TrackingData()
      {
         super();
         Serializer.Instance.Register(this);
         _IsBuyer = false;
         _GamesFinished = 0;
         _GamesStarted = 0;
         _HasViewedAnalyzerTutorial = false;
         _HasViewedHintExplanation = false;
         _HasViewedPeekExplanation = false;
         _HasViewedOfferExplanation = false;
         _HasUsedHBPromo = false;
         _Instance = this;
      }
      
      public static function get Instance() : TrackingData
      {
         if(_Instance == null)
         {
            Debugger.Instance.Write("TrackingData does not exists. use new TrackingData() before using Instance");
            return null;
         }
         return _Instance;
      }
      
      public function get IsBuyer() : Boolean
      {
         return _IsBuyer;
      }
      
      public function get HasViewedAnalyzerTutorial() : Boolean
      {
         return _HasViewedAnalyzerTutorial;
      }
      
      public function get HasViewedHintExplanation() : Boolean
      {
         return _HasViewedHintExplanation;
      }
      
      public function get HasViewedPeekExplanation() : Boolean
      {
         return _HasViewedPeekExplanation;
      }
      
      public function get HasViewedOfferExplanation() : Boolean
      {
         return _HasViewedOfferExplanation;
      }
      
      public function get HasViewedWordOnsTip() : Boolean
      {
         return _HasViewedWordOnsTip;
      }
      
      public function get HasViewedGaveWordOnsTip() : Boolean
      {
         return _HasViewedGaveWordOnsTip;
      }
      
      public function get HasViewedEmptyRackTip() : Boolean
      {
         return _HasViewedEmptyRackTip;
      }
      
      public function get HasViewedFBInviteTip() : Boolean
      {
         return _HasViewedFBInviteTip;
      }
      
      public function get HasUsedHBPromo() : Boolean
      {
         return _HasUsedHBPromo;
      }
      
      public function get GamesStarted() : int
      {
         return _GamesStarted;
      }
      
      public function get GamesFinished() : int
      {
         return _GamesFinished;
      }
      
      public function get TurnsPlayed() : int
      {
         return _TurnsPlayed;
      }
      
      public function get HBPromoTimestamp() : Number
      {
         return _HBPromoTimestamp;
      }
      
      public function SetViewedAnalyzerTutorial() : void
      {
         _HasViewedAnalyzerTutorial = true;
         Serializer.Instance.Serialize();
      }
      
      public function SetViewedHintExplanation() : void
      {
         _HasViewedHintExplanation = true;
         Serializer.Instance.Serialize();
      }
      
      public function SetViewedPeekExplanation() : void
      {
         _HasViewedPeekExplanation = true;
         Serializer.Instance.Serialize();
      }
      
      public function SetViewedOfferExplanation() : void
      {
         _HasViewedOfferExplanation = true;
         Serializer.Instance.Serialize();
      }
      
      public function SetViewedWordOnsTip() : void
      {
         _HasViewedWordOnsTip = true;
         Serializer.Instance.Serialize();
      }
      
      public function SetViewedGaveWordOnsTip() : void
      {
         _HasViewedGaveWordOnsTip = true;
         Serializer.Instance.Serialize();
      }
      
      public function SetViewedEmptyRackTip() : void
      {
         _HasViewedEmptyRackTip = true;
         Serializer.Instance.Serialize();
      }
      
      public function SetViewedFBInviteTip() : void
      {
         _HasViewedFBInviteTip = true;
         Serializer.Instance.Serialize();
      }
      
      public function IncreaseStartedGames() : void
      {
         _GamesStarted = _GamesStarted + 1;
         Serializer.Instance.Serialize();
      }
      
      public function IncreaseTurnAmount() : void
      {
         _TurnsPlayed = _TurnsPlayed + 1;
         Serializer.Instance.Serialize();
      }
      
      public function UsedPromoTool(param1:Boolean) : void
      {
         if(param1)
         {
            _HasUsedHBPromo = true;
            _HBPromoTimestamp = new Date().getTime();
         }
         else
         {
            _HasUsedHBPromo = false;
            _HBPromoTimestamp = 0;
         }
         Serializer.Instance.Serialize();
      }
      
      public function SetBought() : void
      {
         if(!_IsBuyer)
         {
            SWRVETracker.Instance.TrackUser({"buyer":1});
         }
         _IsBuyer = true;
         Serializer.Instance.Serialize();
      }
      
      public function Serialize(param1:ByteArray) : void
      {
         var _loc2_:XML = <tracking></tracking>;
         _loc2_.appendChild(<buyer>{_IsBuyer}</buyer>);
         _loc2_.appendChild(<finished>{_GamesFinished}</finished>);
         _loc2_.appendChild(<started>{_GamesStarted}</started>);
         _loc2_.appendChild(<analyzer>{_HasViewedAnalyzerTutorial}</analyzer>);
         _loc2_.appendChild(<hintinfo>{_HasViewedHintExplanation}</hintinfo>);
         _loc2_.appendChild(<peekinfo>{_HasViewedPeekExplanation}</peekinfo>);
         _loc2_.appendChild(<offerinfo>{_HasViewedOfferExplanation}</offerinfo>);
         _loc2_.appendChild(<turns>{_TurnsPlayed}</turns>);
         _loc2_.appendChild(<tip_usewordons>{_HasViewedWordOnsTip}</tip_usewordons>);
         _loc2_.appendChild(<tip_givewordons>{_HasViewedGaveWordOnsTip}</tip_givewordons>);
         _loc2_.appendChild(<tip_emptyrack>{_HasViewedEmptyRackTip}</tip_emptyrack>);
         _loc2_.appendChild(<tip_fbinvite>{_HasViewedFBInviteTip}</tip_fbinvite>);
         if(_HasUsedHBPromo)
         {
            _loc2_.appendChild(<hbp_used>{_HasUsedHBPromo}</hbp_used>);
            _loc2_.appendChild(<hbp_time>{_HBPromoTimestamp}</hbp_time>);
         }
         param1.writeUTFBytes(_loc2_);
      }
      
      public function Unserialize(param1:XML) : void
      {
         _IsBuyer = param1.tracking.buyer != undefined?param1.tracking.buyer:0;
         _GamesFinished = param1.tracking.finished != undefined?param1.tracking.finished:0;
         if(param1.tracking.analyzer != undefined)
         {
            _HasViewedAnalyzerTutorial = param1.tracking.analyzer;
         }
         if(param1.tracking.started != undefined)
         {
            _GamesStarted = param1.tracking.started;
         }
         if(param1.tracking.hintinfo != undefined)
         {
            _HasViewedHintExplanation = param1.tracking.hintinfo;
         }
         if(param1.tracking.turns != undefined)
         {
            _TurnsPlayed = param1.tracking.turns;
         }
         if(param1.tracking.peekinfo != undefined)
         {
            _HasViewedPeekExplanation = param1.tracking.peekinfo;
         }
         if(param1.tracking.offerinfo != undefined)
         {
            _HasViewedOfferExplanation = param1.tracking.offerinfo;
         }
         if(param1.tracking.hbp_used != undefined)
         {
            _HasUsedHBPromo = param1.tracking.hbp_used;
         }
         if(param1.tracking.hbp_time != undefined)
         {
            _HBPromoTimestamp = param1.tracking.hbp_time;
         }
         if(param1.tracking.tip_usewordons != undefined)
         {
            _HasViewedWordOnsTip = param1.tracking.tip_usewordons;
         }
         if(param1.tracking.tip_givewordons != undefined)
         {
            _HasViewedGaveWordOnsTip = param1.tracking.tip_givewordons;
         }
         if(param1.tracking.tip_emptyrack != undefined)
         {
            _HasViewedEmptyRackTip = param1.tracking.tip_emptyrack;
         }
         if(param1.tracking.tip_fbinvite != undefined)
         {
            _HasViewedFBInviteTip = param1.tracking.tip_fbinvite;
         }
      }
      
      public function Dispose() : void
      {
      }
   }
}
