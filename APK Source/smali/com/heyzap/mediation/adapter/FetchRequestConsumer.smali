.class public Lcom/heyzap/mediation/adapter/FetchRequestConsumer;
.super Ljava/lang/Object;
.source "FetchRequestConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;
    }
.end annotation


# instance fields
.field private final consumptionCounts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final consumptionLock:Ljava/lang/Object;

.field private final store:Lcom/heyzap/mediation/FetchRequestStore;


# direct methods
.method public constructor <init>(Lcom/heyzap/mediation/FetchRequestStore;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumptionCounts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumptionLock:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->store:Lcom/heyzap/mediation/FetchRequestStore;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/mediation/adapter/FetchRequestConsumer;)Lcom/heyzap/mediation/FetchRequestStore;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->store:Lcom/heyzap/mediation/FetchRequestStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/mediation/adapter/FetchRequestConsumer;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->unConsume(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method

.method private unConsume(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumptionCounts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumptionCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 48
    return-void
.end method


# virtual methods
.method public consume(Lcom/heyzap/internal/Constants$AdUnit;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumptionCounts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumptionCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->store:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-virtual {v1}, Lcom/heyzap/mediation/FetchRequestStore;->getCounts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    if-nez v1, :cond_0

    move v0, v5

    .line 39
    :goto_0
    return v0

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->consumptionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 35
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_2

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 37
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    goto :goto_0
.end method

.method public consumeAny(Ljava/util/Collection;Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;

    invoke-direct {v0, p0, p2, p1}, Lcom/heyzap/mediation/adapter/FetchRequestConsumer$ConsumeCallback;-><init>(Lcom/heyzap/mediation/adapter/FetchRequestConsumer;Ljava/lang/Runnable;Ljava/util/Collection;)V

    .line 52
    iget-object v1, p0, Lcom/heyzap/mediation/adapter/FetchRequestConsumer;->store:Lcom/heyzap/mediation/FetchRequestStore;

    invoke-virtual {v1, v0, p3}, Lcom/heyzap/mediation/FetchRequestStore;->addUpdateCallback(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    .line 53
    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 54
    return-void
.end method
