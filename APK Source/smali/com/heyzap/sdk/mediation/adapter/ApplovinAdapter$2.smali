.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

.field final synthetic val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field final synthetic val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->val$fetchResultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 137
    new-instance v6, Lcom/heyzap/internal/RetryManager;

    new-instance v7, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;

    invoke-direct {v7, p0}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2$1;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;)V

    new-instance v0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0x4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;-><init>(DJLjava/util/concurrent/TimeUnit;)V

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->executorService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v6, v7, v0, v1}, Lcom/heyzap/internal/RetryManager;-><init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {v6}, Lcom/heyzap/internal/RetryManager;->start()V

    .line 158
    return-void
.end method
