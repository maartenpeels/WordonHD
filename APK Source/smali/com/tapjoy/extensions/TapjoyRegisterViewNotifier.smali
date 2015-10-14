.class public Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;
.super Ljava/lang/Object;
.source "TapjoyRegisterViewNotifier.java"

# interfaces
.implements Lcom/tapjoy/TapjoyViewNotifier;


# instance fields
.field m_Context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 13
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 17
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnect;->setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public viewDidClose(I)V
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_CLOSED:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public viewDidOpen(I)V
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_OPENED:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public viewWillClose(I)V
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_CLOSING:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public viewWillOpen(I)V
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterViewNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_OPENING:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
