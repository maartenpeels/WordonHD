.class final Lcom/heyzap/internal/FutureUtils$5;
.super Ljava/lang/Object;
.source "FutureUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/FutureUtils;->bind(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$destFuture:Lcom/heyzap/internal/SettableFuture;

.field final synthetic val$sourceFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/SettableFuture;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/heyzap/internal/FutureUtils$5;->val$destFuture:Lcom/heyzap/internal/SettableFuture;

    iput-object p2, p0, Lcom/heyzap/internal/FutureUtils$5;->val$sourceFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$5;->val$destFuture:Lcom/heyzap/internal/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/internal/FutureUtils$5;->val$sourceFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1}, Lcom/heyzap/internal/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/heyzap/internal/FutureUtils$5;->val$destFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
