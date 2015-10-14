.class public Lcom/heyzap/sdk/extensions/air/functions/StartAdsFunction;
.super Ljava/lang/Object;
.source "StartAdsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "StartAdsFunction"

    sput-object v0, Lcom/heyzap/sdk/extensions/air/functions/StartAdsFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 25
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    .line 26
    const-string v2, "air"

    sput-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/heyzap/sdk/ads/HeyzapAds;->start(Ljava/lang/String;Landroid/app/Activity;I)V

    .line 30
    new-instance v0, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 31
    new-instance v0, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;

    const-string v1, "video"

    invoke-direct {v0, v1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/heyzap/sdk/ads/VideoAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 32
    new-instance v0, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;

    const-string v1, "incentivized"

    invoke-direct {v0, v1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->setOnStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V

    .line 34
    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->setOnIncentiveResultListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
