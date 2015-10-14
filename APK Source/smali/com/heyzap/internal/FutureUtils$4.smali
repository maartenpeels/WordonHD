.class final Lcom/heyzap/internal/FutureUtils$4;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "FutureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/FutureUtils;->wrap(Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/SettableFuture;
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
.field final synthetic val$resultFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 83
    iput-object p2, p0, Lcom/heyzap/internal/FutureUtils$4;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0, p1}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    if-nez p2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$4;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$4;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v0, p2}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
