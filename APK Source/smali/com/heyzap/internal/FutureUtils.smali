.class public Lcom/heyzap/internal/FutureUtils;
.super Ljava/lang/Object;
.source "FutureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/FutureUtils$FutureRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public static addTimeout(Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/internal/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/internal/SettableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/heyzap/internal/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/heyzap/internal/FutureUtils$3;

    invoke-direct {v0, p0}, Lcom/heyzap/internal/FutureUtils$3;-><init>(Lcom/heyzap/internal/SettableFuture;)V

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 77
    return-object p0
.end method

.method public static allOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/SettableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/heyzap/internal/ListenableFuture;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/ListenableFuture;

    .line 50
    new-instance v4, Lcom/heyzap/internal/FutureUtils$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/heyzap/internal/FutureUtils$2;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/heyzap/internal/SettableFuture;)V

    invoke-interface {v0, v4, p1}, Lcom/heyzap/internal/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    return-object v1
.end method

.method public static anyOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/internal/ListenableFuture",
            "<TV;>;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/heyzap/internal/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v1

    .line 17
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/internal/ListenableFuture;

    .line 20
    new-instance v4, Lcom/heyzap/internal/FutureUtils$1;

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/heyzap/internal/FutureUtils$1;-><init>(Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v0, v4, p1}, Lcom/heyzap/internal/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 33
    :cond_0
    return-object v1
.end method

.method public static bind(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/internal/SettableFuture",
            "<+TV;>;",
            "Lcom/heyzap/internal/SettableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/heyzap/internal/FutureUtils$5;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/internal/FutureUtils$5;-><init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/internal/SettableFuture;)V

    invoke-virtual {p0, v0, p2}, Lcom/heyzap/internal/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 108
    return-void
.end method

.method public static getImmediatelyOrDefault(Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/internal/SettableFuture",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/heyzap/internal/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    :cond_0
    move-object v0, p1

    .line 42
    goto :goto_0
.end method

.method public static wrap(Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/SettableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/internal/ListenableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/heyzap/internal/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/heyzap/internal/FutureUtils$4;

    invoke-direct {v1, p0, v0}, Lcom/heyzap/internal/FutureUtils$4;-><init>(Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;)V

    invoke-interface {p0, v1, p1}, Lcom/heyzap/internal/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 94
    return-object v0
.end method

.method public static wrapTimeout(Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/internal/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/heyzap/internal/ListenableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/heyzap/internal/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/heyzap/internal/FutureUtils;->wrap(Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/heyzap/internal/FutureUtils;->addTimeout(Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    return-object v0
.end method
