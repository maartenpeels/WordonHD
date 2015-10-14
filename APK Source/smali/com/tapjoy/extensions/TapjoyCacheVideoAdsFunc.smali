.class public Lcom/tapjoy/extensions/TapjoyCacheVideoAdsFunc;
.super Ljava/lang/Object;
.source "TapjoyCacheVideoAdsFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 18
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 19
    .local v0, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->cacheVideos()V

    .line 24
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
