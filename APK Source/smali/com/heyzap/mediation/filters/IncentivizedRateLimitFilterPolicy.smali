.class Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;
.super Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;
.source "IncentivizedRateLimitFilterPolicy.java"


# instance fields
.field final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;IILjava/util/concurrent/TimeUnit;Lcom/heyzap/mediation/filters/Store;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "II",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/heyzap/mediation/filters/Store",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/heyzap/mediation/filters/RateLimitFilterPolicy;-><init>(Ljava/util/concurrent/ExecutorService;IILjava/util/concurrent/TimeUnit;Lcom/heyzap/mediation/filters/Store;)V

    .line 22
    iput-object p1, p0, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 23
    return-void
.end method


# virtual methods
.method public addDisplay(Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p1, Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy$1;-><init>(Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;)V

    iget-object v2, p0, Lcom/heyzap/mediation/filters/IncentivizedRateLimitFilterPolicy;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 36
    return-void
.end method
