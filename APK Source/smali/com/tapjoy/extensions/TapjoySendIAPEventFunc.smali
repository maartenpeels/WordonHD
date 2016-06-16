.class public Lcom/tapjoy/extensions/TapjoySendIAPEventFunc;
.super Ljava/lang/Object;
.source "TapjoySendIAPEventFunc.java"

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
    .locals 5
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v2, 0x1

    .line 13
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 15
    .local v0, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz v0, :cond_0

    array-length v1, p2

    if-lt v1, v2, :cond_0

    .line 17
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getFloat(Lcom/adobe/fre/FREObject;)F

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getInt(Lcom/adobe/fre/FREObject;)I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tapjoy/TapjoyConnect;->sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V

    .line 19
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
