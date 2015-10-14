.class public Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;
.super Ljava/lang/Object;
.source "TapjoyRequestTapjoyConnectFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field m_EarningsNotifier:Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;

.field m_VideoNotifier:Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;

.field m_ViewNotifier:Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;->m_EarningsNotifier:Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;

    .line 17
    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;->m_VideoNotifier:Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;

    .line 18
    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;->m_ViewNotifier:Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    array-length v2, p2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 25
    invoke-static {p1}, Lcom/tapjoy/extensions/ExtensionUtils;->init(Lcom/adobe/fre/FREContext;)V

    .line 26
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 27
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    .local v1, "c":Landroid/content/Context;
    const-string v2, "adobeair"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->setPlugin(Ljava/lang/String;)V

    .line 31
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/tapjoy/extensions/ExtensionUtils;->getString(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/extensions/ExtensionUtils;->getConnectFlags()Ljava/util/Hashtable;

    move-result-object v4

    new-instance v5, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;

    invoke-direct {v5, p1}, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z

    .line 34
    new-instance v2, Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;

    invoke-direct {v2, p1}, Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;-><init>(Lcom/adobe/fre/FREContext;)V

    iput-object v2, p0, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;->m_EarningsNotifier:Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;

    .line 35
    new-instance v2, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;

    invoke-direct {v2, p1}, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;-><init>(Lcom/adobe/fre/FREContext;)V

    iput-object v2, p0, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;->m_VideoNotifier:Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;

    .line 36
    new-instance v2, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;

    invoke-direct {v2, p1}, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;-><init>(Lcom/adobe/fre/FREContext;)V

    iput-object v2, p0, Lcom/tapjoy/extensions/TapjoyRequestTapjoyConnectFunc;->m_ViewNotifier:Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;

    .line 43
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "c":Landroid/content/Context;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 40
    :cond_0
    const-string v2, "TapjoyNativeExtension"

    const-string v3, "requestTapjoyConnect - Context is null or not enough arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
