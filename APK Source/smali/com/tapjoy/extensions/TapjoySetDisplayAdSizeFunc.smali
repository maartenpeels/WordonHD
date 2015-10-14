.class public Lcom/tapjoy/extensions/TapjoySetDisplayAdSizeFunc;
.super Ljava/lang/Object;
.source "TapjoySetDisplayAdSizeFunc.java"

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
    .locals 3
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 16
    .local v0, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz v0, :cond_0

    array-length v1, p2

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 18
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setDisplayAdSize(Ljava/lang/String;)V

    .line 20
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
