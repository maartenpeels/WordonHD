.class Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "StatusListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->run(Lcom/heyzap/mediation/config/MediationConfig;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/internal/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;

.field final synthetic val$failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$poolSize:I


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;Lcom/heyzap/internal/ListenableFuture;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->this$1:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;

    iput-object p3, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->val$failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p4, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->val$poolSize:I

    invoke-direct {p0, p2}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->this$1:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;

    iget-object v0, v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$fetchSuccessFuture:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->val$failureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->val$poolSize:I

    if-lt v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->this$1:Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;

    iget-object v0, v0, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5;->val$fetchSuccessFuture:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/handler/StatusListenerMultiplexer$5$1;->run(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;Ljava/lang/Exception;)V

    return-void
.end method
