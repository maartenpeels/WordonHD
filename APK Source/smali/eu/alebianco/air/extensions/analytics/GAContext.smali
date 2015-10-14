.class public Leu/alebianco/air/extensions/analytics/GAContext;
.super Lcom/adobe/fre/FREContext;
.source "GAContext.java"


# static fields
.field public static final PRODUCT:Ljava/lang/String; = "ANE-Google-Analytics"

.field public static final VERSION:Ljava/lang/String; = "0.2.04"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 29
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
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "functions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "isSupported"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/IsSupported;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/IsSupported;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "getVersion"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/GetVersion;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/GetVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "createTracker"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/CreateTracker;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/CreateTracker;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "closeTracker"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/CloseTracker;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/CloseTracker;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "getDebug"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/GetDebug;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/GetDebug;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "setDebug"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetDebug;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetDebug;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "getOptOut"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "setOptOut"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetOptOut;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetOptOut;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "setDispatchInterval"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetDispatchInterval;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetDispatchInterval;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "dispatch"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/Dispatch;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/Dispatch;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "setAppName"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetAppName;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetAppName;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "setAppVersion"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetAppVersion;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetAppVersion;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "getAppID"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/GetAppID;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/GetAppID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "setAppID"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetAppID;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetAppID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "getAnonymous"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/GetAnonymous;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/GetAnonymous;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "setAnonymous"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetAnonymous;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetAnonymous;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "getSecure"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/GetSecure;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/GetSecure;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "setSecure"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetSecure;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetSecure;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "getSampleRate"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/GetSampleRate;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/GetSampleRate;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "setSampleRate"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetSampleRate;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetSampleRate;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "startNewSession"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/StartNewSession;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/StartNewSession;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "trackData"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/TrackData;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/TrackData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "setCustomDimension"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetCustomDimension;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetCustomDimension;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "setCustomMetric"

    new-instance v2, Leu/alebianco/air/extensions/analytics/functions/SetCustomMetric;

    invoke-direct {v2}, Leu/alebianco/air/extensions/analytics/functions/SetCustomMetric;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
