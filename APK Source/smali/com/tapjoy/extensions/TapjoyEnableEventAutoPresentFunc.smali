.class public Lcom/tapjoy/extensions/TapjoyEnableEventAutoPresentFunc;
.super Ljava/lang/Object;
.source "TapjoyEnableEventAutoPresentFunc.java"

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
    .locals 6
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 16
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    .line 18
    .local v4, "tc":Lcom/tapjoy/TapjoyConnect;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-static {v5}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "eventGuid":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Lcom/tapjoy/extensions/ExtensionUtils;->getBoolean(Lcom/adobe/fre/FREObject;)Z

    move-result v1

    .line 21
    .local v1, "autoPresent":Z
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 23
    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "androidGuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 26
    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v3

    .line 27
    .local v3, "evt":Lcom/tapjoy/TJEvent;
    invoke-virtual {v3, v1}, Lcom/tapjoy/TJEvent;->enableAutoPresent(Z)V

    .line 30
    .end local v0    # "androidGuid":Ljava/lang/String;
    .end local v3    # "evt":Lcom/tapjoy/TJEvent;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method
