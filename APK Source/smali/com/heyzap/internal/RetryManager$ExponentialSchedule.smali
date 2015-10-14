.class public Lcom/heyzap/internal/RetryManager$ExponentialSchedule;
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
    name = "ExponentialSchedule"
.end annotation


# instance fields
.field private final exponentBase:D

.field private final firstInterval:J

.field private retryCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(DJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->firstInterval:J

    .line 91
    iput-wide p1, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->exponentBase:D

    .line 92
    return-void
.end method


# virtual methods
.method public getIntervalMillis()J
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-wide/16 v0, 0x0

    .line 102
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->firstInterval:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->exponentBase:D

    iget-object v4, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0
.end method

.method public incRetries()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager$ExponentialSchedule;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 96
    return-void
.end method
