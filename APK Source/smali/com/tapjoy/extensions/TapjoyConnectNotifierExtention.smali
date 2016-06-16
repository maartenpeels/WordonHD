.class public Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;
.super Ljava/lang/Object;
.source "TapjoyConnectNotifierExtention.java"

# interfaces
.implements Lcom/tapjoy/TapjoyConnectNotifier;


# instance fields
.field private m_Context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;->m_Context:Lcom/adobe/fre/FREContext;

    .line 12
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;->m_Context:Lcom/adobe/fre/FREContext;

    .line 13
    return-void
.end method


# virtual methods
.method public connectFail()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONNECT_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public connectSuccess()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyConnectNotifierExtention;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONNECT_SUCCESS:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method
