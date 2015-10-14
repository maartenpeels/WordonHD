.class public Lcom/tapjoy/extensions/TapjoyGetFullScreenAdNotifier;
.super Ljava/lang/Object;
.source "TapjoyGetFullScreenAdNotifier.java"

# interfaces
.implements Lcom/tapjoy/TapjoyFullScreenAdNotifier;


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

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 12
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 13
    return-void
.end method


# virtual methods
.method public getFullScreenAdResponse()V
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_FULLSCREEN_AD:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public getFullScreenAdResponseFailed(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetFullScreenAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_FULLSCREEN_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
