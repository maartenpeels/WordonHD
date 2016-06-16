.class public Lcom/heyzap/internal/DeveloperErrorMessages;
.super Ljava/lang/Object;
.source "DeveloperErrorMessages.java"


# static fields
.field public static final ACTIVITIES_NOT_PRESENT:Ljava/lang/String; = "Heyzap not started! You must add the following activities to your AndroidManifest.xml application tag: <activity android:name=\"com.heyzap.sdk.ads.HeyzapInterstitialActivity\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" /><activity android:name=\"com.heyzap.sdk.ads.HeyzapVideoActivity\" android:screenOrientation=\"landscape\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" />"

.field public static final ALL_DISABLED:Ljava/lang/String; = "Heyzap is disabled and has not started."

.field public static final GPS_NOT_INSTALLED:Ljava/lang/String; = "Google Play Services does not appear to be present. This may reduce your revenue! Find out more here: http://developer.android.com/google/play-services/setup.html"

.field public static final HEYZAP_BAD_CONTEXT:Ljava/lang/String; = "Heyzap was not successfully started: Context is not an activity, and flag DISABLE_MEDIATION not set."

.field public static final HEYZAP_NOT_STARTED:Ljava/lang/String; = "Heyzap needs to be started. Call HeyzapAds.start(\'<publisher_id>\', activity) from either the onCreate or onResume methods in your Activity."

.field public static final HEYZAP_RUNTIME_EXCEPTION:Ljava/lang/String; = "Heyzap encountered a runtime exception and is now disabled. Error: %s"

.field public static final LOG_TAG:Ljava/lang/String; = "Heyzap"

.field public static final PERIMSSIONS_NOT_PRESENT:Ljava/lang/String; = "Heyzap not started! You must add the following permissions to your AndroidManifest.xml <uses-permission android:name=\"android.permission.INTERNET\" /><uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

.field public static final RECEIVER_NOT_PRESENT:Ljava/lang/String; = "Heyzap could not find the install broadcast receiver. You may be sacrificing revenue!. Add this to your AndroidManifest.xml: <receiver android:name=\"com.heyzap.sdk.ads.PackageAddedReceiver\"><intent-filter><data android:scheme=\"package\"/><action android:name=\"android.intent.action.PACKAGE_ADDED\"/></intent-filter></receiver>"

.field public static final TEST_ACTIVITY_NOT_PRESENT:Ljava/lang/String; = "You need to add the test activity manifest to your AndroidManifest.xml: <activity android:name=\"com.heyzap.sdk.ads.MediationTestActivity\" />"

.field public static final UNSUPPORTED_ANDROID_SDK_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    const-string v0, "SDK version %i is not supported, disabling Heyzap Ads."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heyzap/internal/DeveloperErrorMessages;->UNSUPPORTED_ANDROID_SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
