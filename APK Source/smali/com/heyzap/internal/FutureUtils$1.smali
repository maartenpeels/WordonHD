.class final Lcom/heyzap/internal/FutureUtils$1;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "FutureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/FutureUtils;->anyOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/internal/FutureUtils$FutureRunnable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$errorsSeen:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$futures:Ljava/util/List;

.field final synthetic val$resultFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 20
    iput-object p2, p0, Lcom/heyzap/internal/FutureUtils$1;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    iput-object p3, p0, Lcom/heyzap/internal/FutureUtils$1;->val$futures:Ljava/util/List;

    iput-object p4, p0, Lcom/heyzap/internal/FutureUtils$1;->val$errorsSeen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    if-nez p2, :cond_1

    .line 24
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$1;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$1;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/heyzap/internal/FutureUtils$1;->val$errorsSeen:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$1;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "All futures failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
