.class public Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;
.super Ljava/lang/Object;
.source "TapjoyGetTapPointsFunc.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/tapjoy/TapjoyNotifier;


# instance fields
.field m_Context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;->m_Context:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 34
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 35
    .local v0, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;->m_Context:Lcom/adobe/fre/FREContext;

    .line 38
    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 41
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 4
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetTapPointsFunc;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method
