.class public Leu/alebianco/air/extensions/analytics/functions/SetOptOut;
.super Ljava/lang/Object;
.source "SetOptOut.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 25
    const/4 v1, 0x0

    .line 29
    .local v1, "result":Lcom/adobe/fre/FREObject;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 37
    .local v2, "value":Ljava/lang/Boolean;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    move-object v3, v1

    .line 39
    .end local v2    # "value":Ljava/lang/Boolean;
    :goto_0
    return-object v3

    .line 30
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v4, "Unable to read the \'value\' parameter. [Exception:(type:%s, method:%s)]."

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

    .line 34
    const-string v3, "ArgumentError"

    const-string v4, "Unable to read the \'value\' parameter on method \'%s\'."

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
