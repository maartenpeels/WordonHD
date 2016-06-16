.class public Lso/cuo/platform/chartboost/ChartboostContext;
.super Lcom/adobe/fre/FREContext;
.source "ChartboostContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "cb_init"

    new-instance v2, Lso/cuo/platform/chartboost/fun/InitChartboost;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/InitChartboost;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "cb_cacheInterstitial"

    new-instance v2, Lso/cuo/platform/chartboost/fun/CacheInterstitial;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/CacheInterstitial;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "cb_hasInterstitial"

    new-instance v2, Lso/cuo/platform/chartboost/fun/IsInterstitialReady;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/IsInterstitialReady;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "cb_showInterstitial"

    new-instance v2, Lso/cuo/platform/chartboost/fun/ShowInterstitial;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/ShowInterstitial;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "cb_cacheMoreApps"

    new-instance v2, Lso/cuo/platform/chartboost/fun/CacheMoreApp;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/CacheMoreApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "cb_hasMoreApps"

    new-instance v2, Lso/cuo/platform/chartboost/fun/IsMoreAppReady;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/IsMoreAppReady;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "cb_showMoreApps"

    new-instance v2, Lso/cuo/platform/chartboost/fun/ShowMoreApp;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/ShowMoreApp;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "cb_cacheRewardedVideo"

    new-instance v2, Lso/cuo/platform/chartboost/fun/CacheRewardedVideo;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/CacheRewardedVideo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "cb_hasRewardedVideo"

    new-instance v2, Lso/cuo/platform/chartboost/fun/HasRewardedVideo;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/HasRewardedVideo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "cb_showRewardedVideo"

    new-instance v2, Lso/cuo/platform/chartboost/fun/ShowRewardedVideo;

    invoke-direct {v2}, Lso/cuo/platform/chartboost/fun/ShowRewardedVideo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
