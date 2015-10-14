.class public Lcom/tapjoy/extensions/TapjoyExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "TapjoyExtensionContext.java"


# static fields
.field private static mContext:Lcom/tapjoy/extensions/TapjoyExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/extensions/TapjoyExtensionContext;->mContext:Lcom/tapjoy/extensions/TapjoyExtensionContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 16
    return-void
.end method

.method public static getContext()Lcom/tapjoy/extensions/TapjoyExtensionContext;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/tapjoy/extensions/TapjoyExtensionContext;->mContext:Lcom/tapjoy/extensions/TapjoyExtensionContext;

    return-object v0
.end method

.method public static setContext(Lcom/tapjoy/extensions/TapjoyExtensionContext;)V
    .locals 0
    .param p0, "pmContext"    # Lcom/tapjoy/extensions/TapjoyExtensionContext;

    .prologue
    .line 103
    sput-object p0, Lcom/tapjoy/extensions/TapjoyExtensionContext;->mContext:Lcom/tapjoy/extensions/TapjoyExtensionContext;

    .line 104
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/extensions/TapjoyExtensionContext;->mContext:Lcom/tapjoy/extensions/TapjoyExtensionContext;

    .line 22
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
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "requestTapjoyConnect"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "enablePaidAppWithActionID"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyEnablePaidAppWithActionIDFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyEnablePaidAppWithActionIDFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "actionComplete"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyActionCompleteFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyActionCompleteFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "setUserID"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySetUserIDFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySetUserIDFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "getUserID"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetUserIDFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetUserIDFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "getAppID"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetAppIDFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetAppIDFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "setTransitionEffect"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySetTransitionEffectFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySetTransitionEffectFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "enableLogging"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyEnableLoggingFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyEnableLoggingFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "appPause"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyAppPauseFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyAppPauseFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "appResume"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyAppResumeFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyAppResumeFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "getTapPoints"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "spendTapPoints"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySpendTapPointsFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySpendTapPointsFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "awardTapPoints"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyAwardTapPointsFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyAwardTapPointsFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "setCurrencyMultiplier"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySetCurrencyMultiplierFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySetCurrencyMultiplierFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "getCurrencyMultiplier"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetCurrencyMultiplierFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetCurrencyMultiplierFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "showOffers"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyShowOffersFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyShowOffersFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "showOffersWithCurrencyID"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyShowOffersWithCurrencyIDFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyShowOffersWithCurrencyIDFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "cacheVideoAds"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyCacheVideoAdsFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyCacheVideoAdsFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "setVideoCacheCount"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySetVideoCacheCountFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySetVideoCacheCountFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "getDisplayAd"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetDisplayAdFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetDisplayAdFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "getDisplayAdWithCurrencyID"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetDisplayAdWithCurrencyIDFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetDisplayAdWithCurrencyIDFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "setDisplayAdSize"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySetDisplayAdSizeFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySetDisplayAdSizeFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "enableDisplayAdAutoRefresh"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyEnableDisplayAdAutoRefreshFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyEnableDisplayAdAutoRefreshFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "getDisplayAdHtmlString"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetDisplayAdHtmlStringFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetDisplayAdHtmlStringFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "getFullScreenAd"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "getFullScreenAdWithCurrencyID"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdWithCurrencyIDFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdWithCurrencyIDFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "showFullScreenAd"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyShowFullScreenAdFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyShowFullScreenAdFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "isRetina"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyIsRetinaFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyIsRetinaFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "createEvent"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyCreateEventFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyCreateEventFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "sendEvent"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySendEventFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySendEventFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "showEvent"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyShowEventFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyShowEventFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "enableEventAutoPresent"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyEnableEventAutoPresentFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyEnableEventAutoPresentFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "enableEventPreload"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyEnableEventPreloadFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyEnableEventPreloadFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "loadExternalResource"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyLoadResourceFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyLoadResourceFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "loadMraidJs"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyLoadMraidFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyLoadMraidFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "sendSegmentationParams"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySendSegmentationParamsFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySendSegmentationParamsFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "setKeyValueInDictionary"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySetKeyValueInDictionaryFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySetKeyValueInDictionaryFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "setDictionaryInDictionary"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySetDictionaryInDictionaryFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySetDictionaryInDictionaryFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "sendIAPEvent"

    new-instance v2, Lcom/tapjoy/extensions/TapjoySendIAPEventFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoySendIAPEventFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "eventRequestCompleted"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyEventRequestCompletedFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyEventRequestCompletedFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "eventRequestCancelled"

    new-instance v2, Lcom/tapjoy/extensions/TapjoyEventRequestCancelledFunc;

    invoke-direct {v2}, Lcom/tapjoy/extensions/TapjoyEventRequestCancelledFunc;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-object v0
.end method
