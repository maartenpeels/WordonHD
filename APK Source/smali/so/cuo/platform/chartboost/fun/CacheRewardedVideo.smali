.class public Lso/cuo/platform/chartboost/fun/CacheRewardedVideo;
.super Lso/cuo/platform/chartboost/fun/AneFun;
.source "CacheRewardedVideo.java"


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
    .locals 2
    .param p1, "ctx"    # Lso/cuo/platform/chartboost/ChartboostContext;
    .param p2, "ps"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lso/cuo/platform/chartboost/fun/AneFun;->doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 14
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lso/cuo/platform/chartboost/fun/CacheRewardedVideo;->getString([Lcom/adobe/fre/FREObject;I)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 16
    const-string v1, "Default"

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 20
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 18
    :cond_0
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0
.end method
