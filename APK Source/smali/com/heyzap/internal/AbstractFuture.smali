.class public abstract Lcom/heyzap/internal/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/heyzap/internal/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/AbstractFuture$Sync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/heyzap/internal/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final executionList:Lcom/heyzap/internal/ExecutionList;

.field private final sync:Lcom/heyzap/internal/AbstractFuture$Sync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/AbstractFuture$Sync",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-direct {v0}, Lcom/heyzap/internal/AbstractFuture$Sync;-><init>()V

    iput-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    .line 71
    new-instance v0, Lcom/heyzap/internal/ExecutionList;

    invoke-direct {v0}, Lcom/heyzap/internal/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->executionList:Lcom/heyzap/internal/ExecutionList;

    .line 252
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->executionList:Lcom/heyzap/internal/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/heyzap/internal/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
.end method

.method protected final cancel()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/internal/AbstractFuture$Sync;->cancel()Z

    move-result v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/heyzap/internal/AbstractFuture;->done()V

    .line 219
    :cond_0
    return v0
.end method

.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/internal/AbstractFuture$Sync;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/heyzap/internal/AbstractFuture;->done()V

    .line 130
    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/heyzap/internal/AbstractFuture;->interruptTask()V

    .line 133
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected done()V
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->executionList:Lcom/heyzap/internal/ExecutionList;

    invoke-virtual {v0}, Lcom/heyzap/internal/ExecutionList;->execute()V

    .line 234
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/internal/AbstractFuture$Sync;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/internal/AbstractFuture$Sync;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected interruptTask()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/internal/AbstractFuture$Sync;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/heyzap/internal/AbstractFuture$Sync;->isDone()Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/AbstractFuture$Sync;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/heyzap/internal/AbstractFuture;->done()V

    .line 172
    :cond_0
    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/heyzap/internal/AbstractFuture;->sync:Lcom/heyzap/internal/AbstractFuture$Sync;

    invoke-static {p1}, Lcom/heyzap/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/AbstractFuture$Sync;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/heyzap/internal/AbstractFuture;->done()V

    .line 193
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 194
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 196
    :cond_1
    return v0
.end method
