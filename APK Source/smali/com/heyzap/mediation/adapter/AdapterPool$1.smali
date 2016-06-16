.class Lcom/heyzap/mediation/adapter/AdapterPool$1;
.super Ljava/lang/Object;
.source "AdapterPool.java"

# interfaces
.implements Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/adapter/AdapterPool;->setMediationMetricsCallbacks(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/adapter/AdapterPool;

.field final synthetic val$networkName:Ljava/lang/String;

.field final synthetic val$networkVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/adapter/AdapterPool;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->this$0:Lcom/heyzap/mediation/adapter/AdapterPool;

    iput-object p2, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->val$networkName:Ljava/lang/String;

    iput-object p3, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->val$networkVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->val$networkName:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->val$networkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->networkVersion(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->fetch(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->fetchTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 112
    new-instance v1, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/heyzap/mediation/adapter/AdapterPool$1$1;-><init>(Lcom/heyzap/mediation/adapter/AdapterPool$1;Lcom/heyzap/analytics/Event;Lcom/heyzap/internal/SettableFuture;)V

    iget-object v0, p0, Lcom/heyzap/mediation/adapter/AdapterPool$1;->this$0:Lcom/heyzap/mediation/adapter/AdapterPool;

    # getter for: Lcom/heyzap/mediation/adapter/AdapterPool;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lcom/heyzap/mediation/adapter/AdapterPool;->access$000(Lcom/heyzap/mediation/adapter/AdapterPool;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 131
    return-void
.end method
