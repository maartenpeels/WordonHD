.class final Lcom/heyzap/internal/FutureUtils$3;
.super Ljava/lang/Object;
.source "FutureUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/FutureUtils;->addTimeout(Lcom/heyzap/internal/SettableFuture;Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)Lcom/heyzap/internal/SettableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/heyzap/internal/FutureUtils$3;->val$future:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/heyzap/internal/FutureUtils$3;->val$future:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 74
    return-void
.end method
