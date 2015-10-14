.class public Leu/alebianco/air/extensions/analytics/functions/Dispatch;
.super Ljava/lang/Object;
.source "Dispatch.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, "result":Lcom/adobe/fre/FREObject;
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatch()V

    .line 26
    return-object v0
.end method
