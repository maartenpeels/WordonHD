.class public Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;
.super Ljava/lang/Object;
.source "TapjoyEarnedTapPointsNotifier.java"

# interfaces
.implements Lcom/tapjoy/TapjoyEarnedPointsNotifier;


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

    iput-object v0, p0, Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 13
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iput-object p1, p0, Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    .line 17
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnect;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public earnedTapPoints(I)V
    .locals 3
    .param p1, "amount"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/tapjoy/extensions/TapjoyEarnedTapPointsNotifier;->m_Context:Lcom/adobe/fre/FREContext;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_EARNED_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v1}, Lcom/tapjoy/extensions/TapjoyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method
