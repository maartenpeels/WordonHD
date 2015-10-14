.class public Leu/alebianco/air/extensions/analytics/functions/StartNewSession;
.super Ljava/lang/Object;
.source "StartNewSession.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 26
    const/4 v1, 0x0

    .line 30
    .local v1, "result":Lcom/adobe/fre/FREObject;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 38
    .local v3, "trackingId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    .line 39
    .local v2, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    invoke-virtual {v2, v9}, Lcom/google/analytics/tracking/android/Tracker;->setStartSession(Z)V

    move-object v4, v1

    .line 41
    .end local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    .end local v3    # "trackingId":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 31
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v5, "Unable to read the \'trackingId\' parameter. [Exception:(type:%s, method:%s)]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1, v4, v5, v6}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const-string v4, "ArgumentError"

    const-string v5, "Unable to read the \'trackingId\' parameter on method \'%s\'."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v8, v5, v6}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    goto :goto_0
.end method
