.class public Lcom/tapjoy/extensions/TapjoyCreateEventFunc;
.super Ljava/lang/Object;
.source "TapjoyCreateEventFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field m_Context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyCreateEventFunc;->m_Context:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 15
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 17
    .local v0, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz v0, :cond_0

    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, "tjEvent":Lcom/tapjoy/TJEvent;
    aget-object v2, p2, v4

    if-eqz v2, :cond_1

    aget-object v2, p2, v4

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    aget-object v2, p2, v4

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 21
    new-instance v1, Lcom/tapjoy/TJEvent;

    .end local v1    # "tjEvent":Lcom/tapjoy/TJEvent;
    invoke-static {}, Lcom/tapjoy/extensions/ExtensionUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;

    invoke-direct {v5, p1}, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tapjoy/TJEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJEventCallback;)V

    .line 26
    .restart local v1    # "tjEvent":Lcom/tapjoy/TJEvent;
    :goto_0
    invoke-virtual {v1}, Lcom/tapjoy/TJEvent;->getGUID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/extensions/ExtensionUtils;->addEventGuid(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .end local v1    # "tjEvent":Lcom/tapjoy/TJEvent;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 23
    .restart local v1    # "tjEvent":Lcom/tapjoy/TJEvent;
    :cond_1
    new-instance v1, Lcom/tapjoy/TJEvent;

    .end local v1    # "tjEvent":Lcom/tapjoy/TJEvent;
    invoke-static {}, Lcom/tapjoy/extensions/ExtensionUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;

    invoke-direct {v4, p1}, Lcom/tapjoy/extensions/TapjoyEventCallbackNotifier;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tapjoy/TJEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJEventCallback;)V

    .restart local v1    # "tjEvent":Lcom/tapjoy/TJEvent;
    goto :goto_0
.end method
