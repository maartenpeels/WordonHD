.class public Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;
.super Ljava/lang/Object;
.source "HeyzapAdDisplayListener.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# static fields
.field static final TAG:Ljava/lang/String; = "LOGGING"


# instance fields
.field private contextType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->contextType:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->contextType:Ljava/lang/String;

    invoke-static {v1}, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->getContext(Ljava/lang/String;)Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1, p1, v0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void

    .line 49
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onAudioFinished()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "audio_finished"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioStarted()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "audio_started"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const-string v0, "available"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "click"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    const-string v0, "incentive_completed"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "fetch_failed"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    const-string v0, "failed"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "hide"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIncomplete(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "incentive_incomplete"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const-string v0, "show"

    invoke-virtual {p0, v0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapAdDisplayListener;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
