.class Lcom/heyzap/internal/HandlerExecutorService$1;
.super Ljava/lang/Object;
.source "HandlerExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/HandlerExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/internal/HandlerExecutorService;

.field final synthetic val$future:Lcom/heyzap/internal/SettableFuture;

.field final synthetic val$task:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/HandlerExecutorService;Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/heyzap/internal/HandlerExecutorService$1;->this$0:Lcom/heyzap/internal/HandlerExecutorService;

    iput-object p2, p0, Lcom/heyzap/internal/HandlerExecutorService$1;->val$future:Lcom/heyzap/internal/SettableFuture;

    iput-object p3, p0, Lcom/heyzap/internal/HandlerExecutorService$1;->val$task:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/internal/HandlerExecutorService$1;->val$future:Lcom/heyzap/internal/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/internal/HandlerExecutorService$1;->val$task:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v1, p0, Lcom/heyzap/internal/HandlerExecutorService$1;->val$future:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
