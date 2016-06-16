.class public Lcom/heyzap/mediation/FetchRequestStore;
.super Ljava/lang/Object;
.source "FetchRequestStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/FetchRequestStore$1;,
        Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;,
        Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;
    }
.end annotation


# static fields
.field public static final UNLIMITED_THRESHOLD:I = 0x3e8


# instance fields
.field private final requestCounts:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private final updateCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->requestCounts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->updateCallbacks:Ljava/util/List;

    .line 77
    return-void
.end method

.method private runUpdateCallbacks()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->updateCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;

    .line 60
    # getter for: Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->executorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {p0}, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->access$200(Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    # getter for: Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->runnable:Ljava/lang/Runnable;
    invoke-static {p0}, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;->access$100(Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Z)V

    invoke-virtual {p0, v0}, Lcom/heyzap/mediation/FetchRequestStore;->add(Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;)V

    .line 21
    return-void
.end method

.method public add(Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;)V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->requestCounts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-boolean v0, p1, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;->unlimited:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->requestCounts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 34
    :goto_0
    invoke-direct {p0}, Lcom/heyzap/mediation/FetchRequestStore;->runUpdateCallbacks()V

    .line 35
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->requestCounts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0
.end method

.method public addUpdateCallback(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->updateCallbacks:Ljava/util/List;

    new-instance v1, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/FetchRequestStore$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public getCount(Lcom/heyzap/internal/Constants$AdUnit;)I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->requestCounts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0
.end method

.method public getCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->requestCounts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public makeUnlimited(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Z)V

    invoke-virtual {p0, v0}, Lcom/heyzap/mediation/FetchRequestStore;->add(Lcom/heyzap/mediation/FetchRequestStore$FetchRequest;)V

    .line 25
    return-void
.end method

.method public removeUpdateCallback(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/heyzap/mediation/FetchRequestStore;->updateCallbacks:Ljava/util/List;

    new-instance v1, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;

    invoke-direct {v1, p1, v2, v2}, Lcom/heyzap/mediation/FetchRequestStore$UpdateCallback;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/FetchRequestStore$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
