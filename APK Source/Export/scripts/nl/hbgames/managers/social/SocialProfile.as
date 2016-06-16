package nl.hbgames.managers.social
{
   public class SocialProfile extends Object
   {
       
      private var theID:String;
      
      private var theFirstName:String;
      
      private var theMiddleName:String;
      
      private var theLastName:String;
      
      private var theEmail:String;
      
      private var theGender:String;
      
      private var theHasAppInstalled:Boolean;
      
      private var theScore:int;
      
      public function SocialProfile(param1:String, param2:String, param3:String, param4:String, param5:String = null, param6:String = null, param7:Boolean = false)
      {
         super();
         theID = param1;
         theFirstName = param2;
         theMiddleName = param3;
         theLastName = param4;
         theEmail = param5;
         theGender = param6;
         theHasAppInstalled = param7;
      }
      
      public function get id() : String
      {
         return theID;
      }
      
      public function get firstName() : String
      {
         return theFirstName;
      }
      
      public function get middleName() : String
      {
         return theMiddleName;
      }
      
      public function get lastName() : String
      {
         return theLastName;
      }
      
      public function get email() : String
      {
         return theEmail;
      }
      
      public function get gender() : String
      {
         return theGender;
      }
      
      public function get hasAppInstalled() : Boolean
      {
         return theHasAppInstalled;
      }
      
      public function get fullName() : String
      {
         return theFirstName + " " + theLastName;
      }
      
      public function get score() : int
      {
         return theScore;
      }
      
      public function set score(param1:int) : void
      {
         theScore = param1;
      }
      
      public function clone() : SocialProfile
      {
         var _loc1_:SocialProfile = new SocialProfile(theID,theFirstName,theMiddleName,theLastName,theEmail,theGender,theHasAppInstalled);
         _loc1_.score = theScore;
         return _loc1_;
      }
      
      public function dispose() : void
      {
         theID = null;
         theFirstName = null;
         theMiddleName = null;
         theLastName = null;
         theEmail = null;
         theGender = null;
         theHasAppInstalled = false;
         theScore = 0;
      }
   }
}
