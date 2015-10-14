.class Lcom/heyzap/mediation/MediationManager$2$1;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "MediationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/MediationManager$2;->onConfigLoaded(Lcom/heyzap/mediation/config/MediationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/internal/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/MediationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/MediationManager$2;

.field final synthetic val$config:Lcom/heyzap/mediation/config/MediationConfig;

.field final synthetic val$filterContext:Lcom/heyzap/mediation/filters/FilterContext;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/MediationManager$2;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/mediation/config/MediationConfig;Lcom/heyzap/mediation/filters/FilterContext;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iput-object p3, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$config:Lcom/heyzap/mediation/config/MediationConfig;

    iput-object p4, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$filterContext:Lcom/heyzap/mediation/filters/FilterContext;

    invoke-direct {p0, p2}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/MediationResult;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    if-eqz p2, :cond_1

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Mediation failed"

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->sendDisplayFailed(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$300(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/handler/MediationEventReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0, v1, p1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->sendFetchResults(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)V

    .line 105
    iget-object v0, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->network:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/heyzap/analytics/Event;->showAd(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget v1, v1, Lcom/heyzap/mediation/MediationResult$NetworkResult;->ordinal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->ordinal(Ljava/lang/Integer;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->tag(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    invoke-virtual {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->getMarketingVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->networkVersion(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->showAdTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/heyzap/analytics/Event;->commit(Z)V

    .line 111
    iget-object v0, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationResult$NetworkResult;->adapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v3, v3, Lcom/heyzap/mediation/MediationManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter;->show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;

    move-result-object v1

    .line 112
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->mediationEventReporter:Lcom/heyzap/mediation/handler/MediationEventReporter;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$300(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/mediation/handler/MediationEventReporter;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0, v2, p1, v1}, Lcom/heyzap/mediation/handler/MediationEventReporter;->bindDisplayCallbacks(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    .line 113
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v2}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->addDisplay(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$config:Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getDisplayStrategy()Lcom/heyzap/mediation/display/WaterfallMediator;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    iget-object v3, p1, Lcom/heyzap/mediation/MediationResult;->selectedNetwork:Lcom/heyzap/mediation/MediationResult$NetworkResult;

    invoke-virtual {v0, v2, v3, v1}, Lcom/heyzap/mediation/display/WaterfallMediator;->addDisplay(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult$NetworkResult;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    .line 115
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$config:Lcom/heyzap/mediation/config/MediationConfig;

    invoke-virtual {v0}, Lcom/heyzap/mediation/config/MediationConfig;->getFilterManager()Lcom/heyzap/mediation/filters/FilterManager;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->val$filterContext:Lcom/heyzap/mediation/filters/FilterContext;

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/mediation/filters/FilterManager;->addDisplay(Lcom/heyzap/mediation/filters/FilterContext;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    .line 116
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->adsConfig:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$100(Lcom/heyzap/mediation/MediationManager;)Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    move-result-object v0

    iget v0, v0, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v2, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v2, v2, Lcom/heyzap/mediation/MediationManager$2;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/MediationManager;->fetch(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v0, v0, Lcom/heyzap/mediation/MediationManager$2;->this$0:Lcom/heyzap/mediation/MediationManager;

    # getter for: Lcom/heyzap/mediation/MediationManager;->statusListenerMultiplexers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/heyzap/mediation/MediationManager;->access$200(Lcom/heyzap/mediation/MediationManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;

    iget-object v1, p0, Lcom/heyzap/mediation/MediationManager$2$1;->this$1:Lcom/heyzap/mediation/MediationManager$2;

    iget-object v1, v1, Lcom/heyzap/mediation/MediationManager$2;->val$request:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer;->sendDisplayFailed(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Lcom/heyzap/mediation/MediationResult;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/MediationManager$2$1;->run(Lcom/heyzap/mediation/MediationResult;Ljava/lang/Exception;)V

    return-void
.end method
