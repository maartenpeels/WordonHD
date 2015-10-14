.class public Lcom/adobe/air/AdobeAIRMainActivity;
.super Landroid/app/Activity;
.source "AdobeAIRMainActivity.java"

# interfaces
.implements Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AdobeAIRMainActivity$1;,
        Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;
    }
.end annotation


# static fields
.field private static final AIR_PROPERTIES_URL:Ljava/lang/String; = "airPropertiesUrl"

.field private static final MSG_ID:Ljava/lang/String; = "msgId"

.field private static final NEW_UI_ANALYTICS_URL:Ljava/lang/String; = "http://www.adobe.com/airgames/3/"

.field private static final NOTIFICATION_ANALYTICS_URL:Ljava/lang/String; = "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field public static final PROPERTY_DEFAULT_ACTIVITY:Ljava/lang/String; = "AIRDefaultActivity"

.field private static final PROPERTY_FIRST_LAUNCH:Ljava/lang/String; = "firstLaunch"

.field private static final PROPERTY_NEW_UI_PERCENTAGE:Ljava/lang/String; = "NewUIPercentage"

.field private static final PROPERTY_RANDOM_NO:Ljava/lang/String; = "AirRandomNumber"

.field public static RATE_LIMIT:J = 0x0L

.field public static final RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field private static final TAG:Ljava/lang/String; = "AdobeAIRMainActivity"


# instance fields
.field private mAirPropsFileUrl:Ljava/lang/String;

.field private mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

.field private mCtx:Landroid/content/Context;

.field private mIsGameListDefaultActivity:Z

.field private mIsNewUISupported:Z

.field private mNewUIThreshold:I

.field private mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

.field private mRandomNumber:I

.field private mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 367
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/adobe/air/AdobeAIRMainActivity;->RATE_LIMIT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 357
    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    .line 359
    const/16 v0, 0xf

    iput v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    .line 360
    const-string v0, "http://s3-us-west-1.amazonaws.com/gamepreview/prod/airandroid/air.properties"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    .line 363
    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    .line 364
    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 365
    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/AdobeAIRMainActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/air/AdobeAIRMainActivity;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    return p1
.end method

.method static synthetic access$202(Lcom/adobe/air/AdobeAIRMainActivity;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/air/AdobeAIRMainActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AdobeAIRMainActivity;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->updateSharedPrefForDefaultActivity()V

    return-void
.end method

.method private configureTestEnv()V
    .locals 3

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 325
    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v1, "airPropertiesUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0

    .line 340
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private decideDefaultActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    if-eqz v0, :cond_1

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->generateRandomNumber()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    iget v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    iget v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    .line 194
    :goto_2
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 185
    const/16 v0, 0x64

    iput v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 188
    goto :goto_1

    .line 192
    :cond_1
    iput-boolean v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    goto :goto_2
.end method

.method private decideDefaultActivityForNextLaunch()V
    .locals 4

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->configureTestEnv()V

    .line 234
    new-instance v0, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;-><init>(Lcom/adobe/air/AdobeAIRMainActivity;Lcom/adobe/air/AdobeAIRMainActivity$1;)V

    .line 235
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIRMainActivity$RemoteFileDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    :cond_0
    return-void
.end method

.method private generateRandomNumber()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 221
    :goto_0
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 222
    const-string v1, "AdobeAIRMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Random No generated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v0

    .line 217
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 218
    new-instance v2, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    move-object v0, v2

    goto :goto_0
.end method

.method private isFirstLaunch()Z
    .locals 3

    .prologue
    .line 144
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AdobeAIRMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    const-string v1, "firstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private launchDefaultActivity()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    iget-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "com.adobe.air.AdobeAIR"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIRMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void

    .line 133
    :cond_0
    const-string v1, "com.adobe.mobile_playpanel.LeadingPageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v1, Lcom/adobe/air/AdobeAIRWebView;

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/adobe/air/AdobeAIRWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 135
    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v1}, Lcom/adobe/air/AdobeAIRWebView;->createAnalyticsWebView()V

    .line 136
    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    const-string v2, "http://www.adobe.com/airgames/3/"

    invoke-virtual {v1, v2}, Lcom/adobe/air/AdobeAIRWebView;->loadAnalyticsUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lcom/adobe/air/AndroidGcmResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/adobe/air/AndroidGcmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    .line 244
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidGcmResultReceiver;->setReceiver(Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;)V

    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v1, "resultReceiver"

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 250
    return-void
.end method

.method private updateSharedPrefForDefaultActivity()V
    .locals 3

    .prologue
    .line 160
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AdobeAIRMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    const-string v1, "AIRDefaultActivity"

    iget-boolean v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 164
    iget-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "AirRandomNumber"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v1, "NewUIPercentage"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    return-void
.end method

.method private updateSharedPrefForInitialLaunch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adobe/air/AdobeAIRMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    const-string v1, "firstLaunch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    return-void
.end method

.method private verifyNewUISupport()V
    .locals 2

    .prologue
    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->launchDefaultActivity()V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-object p0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->verifyNewUISupport()V

    .line 63
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->isFirstLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->updateSharedPrefForInitialLaunch()V

    .line 69
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->decideDefaultActivity()V

    .line 70
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->updateSharedPrefForDefaultActivity()V

    .line 83
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->decideDefaultActivityForNextLaunch()V

    .line 84
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->registerForNotifications()V

    .line 85
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIRMainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/air/ShakeListenerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIRMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    return-void

    .line 75
    :cond_0
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AdobeAIRMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    const-string v1, "AIRDefaultActivity"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    .line 77
    const-string v1, "AirRandomNumber"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    .line 78
    const-string v1, "NewUIPercentage"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const-string v4, "msgId"

    const-string v2, "gameUrl"

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    const-string v1, "gameUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "gameUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/adobe/air/AdobeAIRWebView;

    iget-object v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/adobe/air/AdobeAIRWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 104
    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v2}, Lcom/adobe/air/AdobeAIRWebView;->create()V

    .line 105
    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v2, v1}, Lcom/adobe/air/AdobeAIRWebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    const-string v1, "msgId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/air/AdobeAIRWebView;->loadAnalyticsUrl(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->launchDefaultActivity()V

    goto :goto_0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 256
    iget-object p0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 v0, 0x2328

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 257
    return-void
.end method
