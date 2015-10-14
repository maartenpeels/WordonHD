.class public Lcom/tapjoy/extensions/TapjoyEnableEventPreloadFunc;
.super Ljava/lang/Object;
.source "TapjoyEnableEventPreloadFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 20
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    .line 22
    .local v4, "tc":Lcom/tapjoy/TapjoyConnect;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-static {v5}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "eventGuid":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Lcom/tapjoy/extensions/ExtensionUtils;->getBoolean(Lcom/adobe/fre/FREObject;)Z

    move-result v3

    .line 25
    .local v3, "preload":Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 26
    invoke-static {v1}, Lcom/tapjoy/extensions/ExtensionUtils;->getAndroidGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "androidGuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 28
    invoke-static {v0}, Lcom/tapjoy/TJEventManager;->get(Ljava/lang/String;)Lcom/tapjoy/TJEvent;

    move-result-object v2

    .line 29
    .local v2, "evt":Lcom/tapjoy/TJEvent;
    invoke-virtual {v2, v3}, Lcom/tapjoy/TJEvent;->enablePreload(Z)V

    .line 32
    .end local v0    # "androidGuid":Ljava/lang/String;
    .end local v2    # "evt":Lcom/tapjoy/TJEvent;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method
