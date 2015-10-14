.class Lcom/heyzap/internal/HandlerExecutorService$2;
.super Ljava/lang/Object;
.source "HandlerExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/HandlerExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/internal/HandlerExecutorService;

.field final synthetic val$future:Lcom/heyzap/internal/SettableFuture;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/HandlerExecutorService;Ljava/lang/Runnable;Lcom/heyzap/internal/SettableFuture;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/heyzap/internal/HandlerExecutorService$2;->this$0:Lcom/heyzap/internal/HandlerExecutorService;

    iput-object p2, p0, Lcom/heyzap/internal/HandlerExecutorService$2;->val$task:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/heyzap/internal/HandlerExecutorService$2;->val$future:Lcom/heyzap/internal/SettableFuture;

    iput-object p4, p0, Lcom/heyzap/internal/HandlerExecutorService$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/heyzap/internal/HandlerExecutorService$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    iget-object v0, p0, Lcom/heyzap/internal/HandlerExecutorService$2;->val$future:Lcom/heyzap/internal/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/internal/HandlerExecutorService$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
