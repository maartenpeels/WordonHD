.class public Lcom/heyzap/internal/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/RetryManager$RetryableTask;,
        Lcom/heyzap/internal/RetryManager$ExponentialSchedule;,
        Lcom/heyzap/internal/RetryManager$DelayedSchedule;,
        Lcom/heyzap/internal/RetryManager$Schedule;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private retryLock:Ljava/lang/Object;

.field private final retrySchedule:Lcom/heyzap/internal/RetryManager$Schedule;

.field private scheduleFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/heyzap/internal/RetryManager$Schedule;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/heyzap/internal/RetryManager;->retryLock:Ljava/lang/Object;

    .line 18
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/heyzap/internal/RetryManager;->cancelled:Z

    .line 21
    instance-of v1, p1, Lcom/heyzap/internal/RetryManager$RetryableTask;

    if-eqz v1, :cond_0

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/heyzap/internal/RetryManager$RetryableTask;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;->setRetryManager(Lcom/heyzap/internal/RetryManager;)V

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/heyzap/internal/RetryManager;->task:Ljava/lang/Runnable;

    .line 25
    iput-object p3, p0, Lcom/heyzap/internal/RetryManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    iput-object p2, p0, Lcom/heyzap/internal/RetryManager;->retrySchedule:Lcom/heyzap/internal/RetryManager$Schedule;

    .line 27
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/internal/RetryManager;->cancelled:Z

    .line 47
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager;->scheduleFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 51
    :cond_0
    return-void
.end method

.method public retry()V
    .locals 6

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/heyzap/internal/RetryManager;->cancelled:Z

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager;->retryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/heyzap/internal/RetryManager;->scheduleFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heyzap/internal/RetryManager;->scheduleFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/heyzap/internal/RetryManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/heyzap/internal/RetryManager;->task:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/heyzap/internal/RetryManager;->retrySchedule:Lcom/heyzap/internal/RetryManager$Schedule;

    invoke-interface {v3}, Lcom/heyzap/internal/RetryManager$Schedule;->getIntervalMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/heyzap/internal/RetryManager;->scheduleFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    iget-object v1, p0, Lcom/heyzap/internal/RetryManager;->retrySchedule:Lcom/heyzap/internal/RetryManager$Schedule;

    invoke-interface {v1}, Lcom/heyzap/internal/RetryManager$Schedule;->incRetries()V

    .line 42
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 5

    .prologue
    .line 30
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/heyzap/internal/RetryManager;->task:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/heyzap/internal/RetryManager;->retrySchedule:Lcom/heyzap/internal/RetryManager$Schedule;

    invoke-interface {v2}, Lcom/heyzap/internal/RetryManager$Schedule;->getIntervalMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    return-void
.end method
