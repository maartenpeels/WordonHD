.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackListener"
.end annotation


# instance fields
.field adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->adapter:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    .line 314
    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 328
    const/4 v0, 0x0

    # setter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2402(Z)Z

    .line 329
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x0

    # setter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2402(Z)Z

    .line 373
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->clickListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->clickListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 393
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->incentiveComplete:Z

    .line 398
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->incentiveComplete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->interstitialDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2500(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->incentivizedDisplay:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2600(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-virtual {p0, p2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->getFailureCause(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$1700(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-virtual {p0, p2}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$CallbackListener;->getFailureCause(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    move-result-object v2

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public getFailureCause(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$5;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 425
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    :goto_0
    return-object v0

    .line 408
    :pswitch_0
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 410
    :pswitch_1
    const/4 v0, 0x1

    # setter for: Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->threwError:Z
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;->access$2402(Z)Z

    .line 411
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 413
    :pswitch_2
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 416
    :pswitch_3
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 423
    :pswitch_4
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method
