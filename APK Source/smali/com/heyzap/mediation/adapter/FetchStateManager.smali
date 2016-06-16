.class public Lcom/heyzap/mediation/adapter/FetchStateManager;
.super Ljava/lang/Object;
.source "FetchStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/adapter/FetchStateManager$1;,
        Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;,
        Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;,
        Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field fetchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field updateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->fetchMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->updateListeners:Ljava/util/List;

    .line 83
    return-void
.end method


# virtual methods
.method public addFetchStartedListener(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener",
            "<TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->updateListeners:Ljava/util/List;

    new-instance v1, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;-><init>(Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;Ljava/util/concurrent/ExecutorService;Lcom/heyzap/mediation/adapter/FetchStateManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->fetchMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;

    .line 29
    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->defaultValue:Ljava/lang/Object;

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v0, v0, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->fetchMap:Ljava/util/Map;

    new-instance v1, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;-><init>(Ljava/lang/Object;Lcom/heyzap/mediation/adapter/FetchStateManager$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->defaultValue:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public start(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->fetchMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;

    .line 39
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStateWrapper;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/heyzap/mediation/adapter/FetchStateManager;->updateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/mediation/adapter/FetchStateManager$ExecutorCallback;

    .line 41
    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method
