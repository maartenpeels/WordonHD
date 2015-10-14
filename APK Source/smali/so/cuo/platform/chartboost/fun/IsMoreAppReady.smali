.class public Lso/cuo/platform/chartboost/fun/IsMoreAppReady;
.super Lso/cuo/platform/chartboost/fun/AneFun;
.source "IsMoreAppReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lso/cuo/platform/chartboost/fun/AneFun;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "ctx"    # Lso/cuo/platform/chartboost/ChartboostContext;
    .param p2, "ps"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lso/cuo/platform/chartboost/fun/AneFun;->doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 15
    const-string v2, "Default"

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->hasMoreApps(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 18
    .local v1, "hasCachedInterstital":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 24
    :goto_0
    return-object v2

    .line 20
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 22
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 24
    const/4 v2, 0x0

    goto :goto_0
.end method
