.class public Leu/alebianco/air/extensions/analytics/functions/GetOptOut;
.super Ljava/lang/Object;
.source "GetOptOut.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private final mutex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Leu/alebianco/air/extensions/analytics/functions/GetOptOut;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Leu/alebianco/air/extensions/analytics/functions/GetOptOut;

    .prologue
    .line 23
    iget-object v0, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "done"

    .line 31
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v2

    new-instance v3, Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;

    invoke-direct {v3, p0}, Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;-><init>(Leu/alebianco/air/extensions/analytics/functions/GetOptOut;)V

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->requestAppOptOut(Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;)V

    .line 42
    iget-object v3, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;

    monitor-enter v3

    .line 43
    :goto_0
    :try_start_0
    iget-object v2, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;

    const-string v4, "done"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;

    const-string v4, "done"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :try_start_1
    iget-object v2, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 47
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 50
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :try_start_4
    iget-object v2, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Leu/alebianco/air/extensions/analytics/functions/GetOptOut;
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .local v1, "result":Lcom/adobe/fre/FREObject;
    move-object v2, v1

    .line 61
    .end local v1    # "result":Lcom/adobe/fre/FREObject;
    :goto_1
    return-object v2

    .line 54
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Leu/alebianco/air/extensions/utils/LogLevel;->ERROR:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v3, "Unable to create the return value. [Exception:(type:%s, method:%s)]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1, v2, v3, v4}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-string v2, "ArgumentError"

    const-string v3, "Unable to create the return value on method \'%s\'."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v6, v3, v4}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    goto :goto_1
.end method
