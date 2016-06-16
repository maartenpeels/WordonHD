.class public Lcom/tapjoy/extensions/TapjoyAppPauseFunc;
.super Ljava/lang/Object;
.source "TapjoyAppPauseFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 16
    .local v0, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->appPause()V

    .line 21
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
