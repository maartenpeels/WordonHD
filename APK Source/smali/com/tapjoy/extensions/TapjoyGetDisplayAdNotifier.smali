.class public Lcom/tapjoy/extensions/TapjoyGetDisplayAdNotifier;
.super Ljava/lang/Object;
.source "TapjoyGetDisplayAdNotifier.java"

# interfaces
.implements Lcom/tapjoy/TapjoyDisplayAdNotifier;


# instance fields
.field private m_Context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetDisplayAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 15
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyGetDisplayAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 16
    return-void
.end method


# virtual methods
.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 3
    .param p1, "adView"    # Landroid/view/View;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetDisplayAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetDisplayAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_DISPLAY_AD:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetDisplayAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyGetDisplayAdNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_DISPLAY_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method
