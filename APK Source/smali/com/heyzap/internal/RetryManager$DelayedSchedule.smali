.class public Lcom/heyzap/internal/RetryManager$DelayedSchedule;
.super Ljava/lang/Object;
.source "RetryManager.java"

# interfaces
.implements Lcom/heyzap/internal/RetryManager$Schedule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/RetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayedSchedule"
.end annotation


# instance fields
.field public final delegate:Lcom/heyzap/internal/RetryManager$Schedule;

.field public final initialDelay:J

.field private retryCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/TimeUnit;Lcom/heyzap/internal/RetryManager$Schedule;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    iput-object p3, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->delegate:Lcom/heyzap/internal/RetryManager$Schedule;

    .line 65
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->initialDelay:J

    .line 66
    return-void
.end method


# virtual methods
.method public getIntervalMillis()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->delegate:Lcom/heyzap/internal/RetryManager$Schedule;

    invoke-interface {v0}, Lcom/heyzap/internal/RetryManager$Schedule;->getIntervalMillis()J

    move-result-wide v0

    .line 79
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->initialDelay:J

    goto :goto_0
.end method

.method public incRetries()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 71
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager$DelayedSchedule;->delegate:Lcom/heyzap/internal/RetryManager$Schedule;

    invoke-interface {v0}, Lcom/heyzap/internal/RetryManager$Schedule;->incRetries()V

    .line 72
    return-void
.end method
