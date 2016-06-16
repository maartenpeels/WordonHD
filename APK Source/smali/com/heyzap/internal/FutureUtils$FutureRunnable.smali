.class public abstract Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.super Ljava/lang/Object;
.source "FutureUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/FutureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FutureRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final future:Lcom/heyzap/internal/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/ListenableFuture",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/heyzap/internal/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/heyzap/internal/FutureUtils$FutureRunnable;->future:Lcom/heyzap/internal/ListenableFuture;

    .line 115
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$FutureRunnable;->future:Lcom/heyzap/internal/ListenableFuture;

    invoke-interface {v0}, Lcom/heyzap/internal/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;->run(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0, v1, v0}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;->run(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    invoke-virtual {p0, v1, v0}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;->run(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :catch_2
    move-exception v0

    .line 134
    const-string v1, "found error, passing on"

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
