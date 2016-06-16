.class public Lcom/tapjoy/extensions/TapjoySendEventFunc;
.super Ljava/lang/Object;
.source "TapjoySendEventFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 15
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    .line 17
    .local v2, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz v2, :cond_0

    .line 19
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "androidGuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 21
    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v1

    .line 22
    .local v1, "evt":Lcom/tapjoy/TJEvent;
    invoke-virtual {v1}, Lcom/tapjoy/TJEvent;->send()V

    .line 25
    .end local v0    # "androidGuid":Ljava/lang/String;
    .end local v1    # "evt":Lcom/tapjoy/TJEvent;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
