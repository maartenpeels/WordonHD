.class public Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;
.super Ljava/lang/Object;
.source "TapjoyRegisterVideoNotifier.java"

# interfaces
.implements Lcom/tapjoy/TapjoyVideoNotifier;


# instance fields
.field private m_Context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 13
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 14
    .local v0, "tc":Lcom/tapjoy/TapjoyConnect;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 16
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 17
    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnect;->setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public videoComplete()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMPLETE"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public videoError(I)V
    .locals 3
    .param p1, "statusCode"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_ERROR:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public videoStart()V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyRegisterVideoNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_START:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "START"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method
