.class public Leu/alebianco/air/extensions/analytics/functions/GetLogLevel;
.super Ljava/lang/Object;
.source "GetLogLevel.java"

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
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 28
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/analytics/tracking/android/Logger;->getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object v1

    .line 31
    .local v1, "level":Lcom/google/analytics/tracking/android/Logger$LogLevel;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "result":Lcom/adobe/fre/FREObject;
    move-object v3, v2

    .line 39
    .end local v2    # "result":Lcom/adobe/fre/FREObject;
    :goto_0
    return-object v3

    .line 32
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Leu/alebianco/air/extensions/utils/LogLevel;->ERROR:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v4, "Unable to create the return value. [Exception:(type:%s, method:%s)]."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p1, v3, v4, v5}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const-string v3, "ArgumentError"

    const-string v4, "Unable to create the return value on method \'%s\'."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v7, v4, v5}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    goto :goto_0
.end method
