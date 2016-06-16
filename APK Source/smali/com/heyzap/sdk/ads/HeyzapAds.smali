.class public Lcom/heyzap/sdk/ads/HeyzapAds;
.super Ljava/lang/Object;
.source "HeyzapAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;,
        Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;,
        Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;
    }
.end annotation


# static fields
.field public static final AMAZON:I = 0x4

.field private static final DISABLE_ALL:I = 0x20

.field public static final DISABLE_AUTOMATIC_FETCH:I = 0x1

.field public static final DISABLE_FIRST_AUTOMATIC_FETCH:I = 0x8

.field public static final DISABLE_MEDIATION:I = 0x10

.field public static final INSTALL_TRACKING_ONLY:I = 0x2

.field public static final NONE:I = 0x0

.field public static final config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

.field public static framework:Ljava/lang/String; = null

.field static initializationFuture:Ljava/util/concurrent/atomic/AtomicReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/internal/SettableFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static intentionallyDisabled:Z = false

.field public static mediator:Ljava/lang/String; = null

.field public static final minimumSdkVersion:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    .line 35
    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->mediator:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    return-void
.end method

.method public static assertStarted()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    sget-boolean v0, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 241
    :goto_0
    return v0

    .line 237
    :cond_0
    const-string v0, "Heyzap"

    const-string v1, "Heyzap needs to be started. Call HeyzapAds.start(\'<publisher_id>\', activity) from either the onCreate or onResume methods in your Activity."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 238
    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static changeActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/mediation/MediationManager;->setRecentActivity(Landroid/app/Activity;)V

    .line 250
    return-void
.end method

.method public static changeServer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    sput-object p0, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public static getFlags()I
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "8.0.7"

    return-object v0
.end method

.method public static hasStarted()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    sget-boolean v0, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 228
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/SettableFuture;

    .line 229
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static internalStart(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "Heyzap"

    .line 105
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput p2, v1, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    .line 108
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->startTime:Ljava/lang/Long;

    .line 110
    and-int/lit8 v1, p2, 0x20

    if-lez v1, :cond_1

    .line 111
    const-string v1, "Heyzap"

    const-string v2, "Heyzap is disabled and has not started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x1

    sput-boolean v1, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 113
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const-class v2, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->activityExistsInPackage(Landroid/app/Activity;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const-class v2, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->activityExistsInPackage(Landroid/app/Activity;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    :cond_2
    const-string v1, "Heyzap"

    const-string v2, "Heyzap not started! You must add the following activities to your AndroidManifest.xml application tag: <activity android:name=\"com.heyzap.sdk.ads.HeyzapInterstitialActivity\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" /><activity android:name=\"com.heyzap.sdk.ads.HeyzapVideoActivity\" android:screenOrientation=\"landscape\" android:configChanges=\"keyboardHidden|screenSize|smallestScreenSize\" />"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x1

    sput-boolean v1, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 121
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    const-string v2, "Heyzap"

    const-string v2, "Heyzap encountered a runtime exception and is now disabled. Error: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sput-boolean v5, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 173
    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 174
    throw v1

    .line 126
    :cond_3
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/heyzap/internal/Constants;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->packageHasPermissions(Landroid/app/Activity;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    const-string v1, "Heyzap"

    const-string v2, "Heyzap not started! You must add the following permissions to your AndroidManifest.xml <uses-permission android:name=\"android.permission.INTERNET\" /><uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x1

    sput-boolean v1, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 129
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 134
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v2, Lcom/heyzap/internal/Constants;->MINIMUM_SUPPORTED_SDK_VERSION:I

    if-ge v1, v2, :cond_5

    .line 135
    const-string v1, "Heyzap"

    sget-object v2, Lcom/heyzap/internal/DeveloperErrorMessages;->UNSUPPORTED_ANDROID_SDK_VERSION:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x1

    sput-boolean v1, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 137
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 142
    :cond_5
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    sget-object v2, Lcom/heyzap/internal/Constants;->NEEDED_RECEIVER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->packageHasReceiver(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 143
    const-string v1, "Heyzap"

    const-string v2, "Heyzap could not find the install broadcast receiver. You may be sacrificing revenue!. Add this to your AndroidManifest.xml: <receiver android:name=\"com.heyzap.sdk.ads.PackageAddedReceiver\"><intent-filter><data android:scheme=\"package\"/><action android:name=\"android.intent.action.PACKAGE_ADDED\"/></intent-filter></receiver>"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-static {v1}, Lcom/heyzap/internal/Utils;->probablyHasGooglePlayServices(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 148
    const-string v1, "Heyzap"

    const-string v2, "Google Play Services does not appear to be present. This may reduce your revenue! Find out more here: http://developer.android.com/google/play-services/setup.html"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    .line 154
    invoke-static {p1}, Lcom/heyzap/internal/Utils;->load(Landroid/content/Context;)V

    .line 155
    invoke-static {p1}, Lcom/heyzap/internal/Logger;->init(Landroid/content/Context;)V

    .line 157
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    invoke-static {}, Lcom/heyzap/internal/Utils;->isAmazon()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    :cond_8
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    const-string v2, "amazon"

    iput-object v2, v1, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->store:Ljava/lang/String;

    .line 160
    :cond_9
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iput-object p0, v1, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    .line 162
    if-eqz p3, :cond_a

    .line 163
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2, p3}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 164
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2, p3}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 165
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2, p3}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 168
    :cond_a
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/heyzap/mediation/MediationManager;->start(Landroid/content/Context;)V

    .line 169
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->initializationFuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static onBackPressed()Z
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->hasStarted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/mediation/MediationManager;->getConfigLoader()Lcom/heyzap/mediation/config/MediationConfigLoader;

    move-result-object v0

    const-string v1, "chartboost"

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/config/MediationConfigLoader;->isOnBoard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-direct {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;-><init>()V

    invoke-virtual {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->onBackPressed()Z

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFlags(I)V
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/house/Manager;->setFlags(I)V

    .line 257
    return-void
.end method

.method public static setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heyzap/mediation/MediationManager;->setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V

    .line 307
    return-void
.end method

.method public static setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 293
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 294
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/mediation/MediationManager;->setOnStatusListener(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 295
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    sput-boolean v0, Lcom/heyzap/sdk/ads/HeyzapAds;->intentionallyDisabled:Z

    .line 322
    return-void
.end method

.method public static slowClose(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 270
    sput-object p0, Lcom/heyzap/house/Manager;->SLOW_CLOSE:Ljava/lang/Boolean;

    .line 271
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 196
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 187
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/app/Activity;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/heyzap/sdk/ads/HeyzapAds;->internalStart(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 92
    return-void
.end method

.method public static start(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 2

    .prologue
    .line 211
    and-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_0

    .line 212
    const-string v0, "Heyzap"

    const-string v1, "Heyzap was not successfully started: Context is not an activity, and flag DISABLE_MEDIATION not set."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/heyzap/sdk/ads/HeyzapAds;->internalStart(Ljava/lang/String;Landroid/content/Context;ILcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    goto :goto_0
.end method

.method public static startTestActivity(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-class v3, Lcom/heyzap/sdk/ads/MediationTestActivity;

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const-class v2, Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-static {v1, v3}, Lcom/heyzap/internal/Utils;->activityExistsInPackage(Landroid/app/Activity;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "Heyzap"

    const-string v2, "You need to add the test activity manifest to your AndroidManifest.xml: <activity android:name=\"com.heyzap.sdk.ads.MediationTestActivity\" />"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/heyzap/sdk/ads/MediationTestActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
