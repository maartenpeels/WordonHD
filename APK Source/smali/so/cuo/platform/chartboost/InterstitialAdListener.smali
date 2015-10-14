.class public Lso/cuo/platform/chartboost/InterstitialAdListener;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "InterstitialAdListener.java"


# instance fields
.field private context:Lso/cuo/platform/chartboost/ChartboostContext;


# direct methods
.method public constructor <init>(Lso/cuo/platform/chartboost/ChartboostContext;)V
    .locals 0
    .param p1, "context"    # Lso/cuo/platform/chartboost/ChartboostContext;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    .line 11
    iput-object p1, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    .line 12
    return-void
.end method


# virtual methods
.method public didCacheInPlay(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 16
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didCacheInPlay"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInPlay(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onInterstitialReceive"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onMoreAppReceive"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheMoreApps(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didCacheRewardedVideo"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onInterstitialLeaveApplication"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onMoreAppLeaveApplication"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickMoreApps(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onVideoLeaveApplication"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didCloseInterstitial"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseInterstitial(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didCloseMoreApps"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseMoreApps(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didCloseRewardedVideo"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseRewardedVideo(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didCompleteRewardedVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onInterstitialDismiss"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onMoreAppDismiss"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissMoreApps(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didDismissRewardedVideo"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onInterstitialPresent"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onMoreAppPresent"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayMoreApps(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onVideoPresent"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 118
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didFailToLoadInPlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 120
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 125
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onInterstitialFailedReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 127
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 131
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onMoreAppFailedReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 133
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 138
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "onVideoFailedReceive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 140
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 144
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didFailToRecordClick"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBClickError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 146
    return-void
.end method

.method public didPauseClickForConfirmation()V
    .locals 3

    .prologue
    const-string v2, "didPauseClickForConfirmation"

    .line 150
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "didPauseClickForConfirmation"

    const-string v1, "didPauseClickForConfirmation"

    invoke-virtual {v0, v2, v2}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Lcom/chartboost/sdk/ChartboostDelegate;->didPauseClickForConfirmation()V

    .line 152
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "shouldDisplayInterstitial"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "shouldDisplayMoreApps"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "shouldDisplayRewardedVideo"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "shouldRequestInterstitial"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lso/cuo/platform/chartboost/InterstitialAdListener;->context:Lso/cuo/platform/chartboost/ChartboostContext;

    const-string v1, "shouldRequestMoreApps"

    invoke-virtual {v0, v1, p1}, Lso/cuo/platform/chartboost/ChartboostContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method
