.class Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "ExecutorPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/ExecutorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedScheduledThreadPoolExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;

    invoke-direct {v0, p0, p1}, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;-><init>(Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
