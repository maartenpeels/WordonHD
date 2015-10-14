.class public Lcom/tapjoy/extensions/TapjoyGetCurrencyMultiplierFunc;
.super Ljava/lang/Object;
.source "TapjoyGetCurrencyMultiplierFunc.java"

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
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->getCurrencyMultiplier()F

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getFREObject(F)Lcom/adobe/fre/FREObject;

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
