.class final Lcom/heyzap/internal/FutureUtils$2;
.super Ljava/lang/Object;
.source "FutureUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/FutureUtils;->allOf(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/heyzap/internal/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$futures:Ljava/util/List;

.field final synthetic val$resultFuture:Lcom/heyzap/internal/SettableFuture;

.field final synthetic val$seen:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/heyzap/internal/FutureUtils$2;->val$futures:Ljava/util/List;

    iput-object p2, p0, Lcom/heyzap/internal/FutureUtils$2;->val$seen:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/heyzap/internal/FutureUtils$2;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$2;->val$futures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/heyzap/internal/FutureUtils$2;->val$seen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$2;->val$resultFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method
