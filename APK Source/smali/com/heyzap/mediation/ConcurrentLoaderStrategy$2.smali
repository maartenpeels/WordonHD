.class Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;
.super Ljava/lang/Object;
.source "ConcurrentLoaderStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->startAdapter(Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

.field final synthetic val$fetchFuture:Lcom/heyzap/internal/ListenableFuture;

.field final synthetic val$networkConfig:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    iput-object p2, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$fetchFuture:Lcom/heyzap/internal/ListenableFuture;

    iput-object p3, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$networkConfig:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$fetchFuture:Lcom/heyzap/internal/ListenableFuture;

    invoke-interface {v0}, Lcom/heyzap/internal/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    iget-object v1, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->val$networkConfig:Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;

    iget-wide v1, v1, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$NetworkConfig;->load:D

    # -= operator for: Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->currentLoad:D
    invoke-static {v0, v1, v2}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->access$126(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;D)D

    .line 79
    iget-object v0, p0, Lcom/heyzap/mediation/ConcurrentLoaderStrategy$2;->this$0:Lcom/heyzap/mediation/ConcurrentLoaderStrategy;

    # invokes: Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->startNextAdapter()V
    invoke-static {v0}, Lcom/heyzap/mediation/ConcurrentLoaderStrategy;->access$000(Lcom/heyzap/mediation/ConcurrentLoaderStrategy;)V

    .line 80
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
