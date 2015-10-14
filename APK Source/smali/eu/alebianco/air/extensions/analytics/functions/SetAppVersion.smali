.class public Leu/alebianco/air/extensions/analytics/functions/SetAppVersion;
.super Ljava/lang/Object;
.source "SetAppVersion.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "ArgumentError"

    .line 27
    const/4 v1, 0x0

    .line 31
    .local v1, "result":Lcom/adobe/fre/FREObject;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 39
    .local v3, "trackingId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    .line 43
    .local v2, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 52
    .local v4, "version":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/google/analytics/tracking/android/Tracker;->setAppVersion(Ljava/lang/String;)V

    move-object v5, v1

    .line 54
    .end local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    .end local v3    # "trackingId":Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 32
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v6, "Unable to read the \'trackingId\' parameter. [Exception:(type:%s, method:%s)]."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p1, v5, v6, v7}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const-string v5, "ArgumentError"

    const-string v5, "Unable to read the \'trackingId\' parameter on method \'%s\'."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v11, v9, v5, v6}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    .restart local v3    # "trackingId":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 45
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v6, "Unable to read the \'version\' parameter. [Exception:(type:%s, method:%s)]."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p1, v5, v6, v7}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const-string v5, "ANE"

    const-string v6, "got an error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    const-string v5, "ArgumentError"

    const-string v5, "Unable to read the \'version\' parameter on method \'%s\'."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v11, v9, v5, v6}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    goto :goto_0
.end method
