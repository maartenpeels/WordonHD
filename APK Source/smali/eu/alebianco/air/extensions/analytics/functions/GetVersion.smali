.class public Leu/alebianco/air/extensions/analytics/functions/GetVersion;
.super Ljava/lang/Object;
.source "GetVersion.java"

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
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    :try_start_0
    const-string v2, "ANE-Google-Analytics v0.2.04"

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "result":Lcom/adobe/fre/FREObject;
    move-object v2, v1

    .line 36
    .end local v1    # "result":Lcom/adobe/fre/FREObject;
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 30
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

    .line 33
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

    goto :goto_0
.end method
