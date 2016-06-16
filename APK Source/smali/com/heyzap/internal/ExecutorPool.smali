.class public Lcom/heyzap/internal/ExecutorPool;
.super Ljava/lang/Object;
.source "ExecutorPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;,
        Lcom/heyzap/internal/ExecutorPool$ExecutorThreadFactory;
    }
.end annotation


# static fields
.field private static volatile ref:Lcom/heyzap/internal/ExecutorPool;


# instance fields
.field pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/heyzap/internal/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 14
    iget-object v0, p0, Lcom/heyzap/internal/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 15
    iget-object v0, p0, Lcom/heyzap/internal/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 16
    iget-object v0, p0, Lcom/heyzap/internal/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/heyzap/internal/ExecutorPool$ExecutorThreadFactory;

    invoke-direct {v1, p0}, Lcom/heyzap/internal/ExecutorPool$ExecutorThreadFactory;-><init>(Lcom/heyzap/internal/ExecutorPool;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/heyzap/internal/ExecutorPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heyzap/internal/ExecutorPool;->ref:Lcom/heyzap/internal/ExecutorPool;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/heyzap/internal/ExecutorPool;

    invoke-direct {v1}, Lcom/heyzap/internal/ExecutorPool;-><init>()V

    sput-object v1, Lcom/heyzap/internal/ExecutorPool;->ref:Lcom/heyzap/internal/ExecutorPool;

    .line 25
    :cond_0
    sget-object v1, Lcom/heyzap/internal/ExecutorPool;->ref:Lcom/heyzap/internal/ExecutorPool;

    iget-object v1, v1, Lcom/heyzap/internal/ExecutorPool;->pool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
