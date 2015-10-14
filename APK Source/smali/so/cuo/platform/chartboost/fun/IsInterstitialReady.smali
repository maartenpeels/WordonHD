.class public Lso/cuo/platform/chartboost/fun/IsInterstitialReady;
.super Lso/cuo/platform/chartboost/fun/AneFun;
.source "IsInterstitialReady.java"


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
    .locals 4
    .param p1, "ctx"    # Lso/cuo/platform/chartboost/ChartboostContext;
    .param p2, "ps"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lso/cuo/platform/chartboost/fun/AneFun;->doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 16
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Lso/cuo/platform/chartboost/fun/IsInterstitialReady;->getString([Lcom/adobe/fre/FREObject;I)Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, "location":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 18
    const-string v3, "Default"

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 24
    .local v1, "hasCachedInterstital":Ljava/lang/Boolean;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 30
    :goto_1
    return-object v3

    .line 20
    .end local v1    # "hasCachedInterstital":Ljava/lang/Boolean;
    :cond_0
    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .restart local v1    # "hasCachedInterstital":Ljava/lang/Boolean;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 28
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    .line 30
    const/4 v3, 0x0

    goto :goto_1
.end method
