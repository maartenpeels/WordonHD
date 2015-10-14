.class public final Lc/m/x/a/gv/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/m/x/a/gv/aj$a;,
        Lc/m/x/a/gv/aj$c;,
        Lc/m/x/a/gv/aj$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/m/x/a/gv/ah",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lc/m/x/a/gv/ai;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc/m/x/a/gv/aj;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc/m/x/a/gv/aj$a;

    invoke-direct {v0, v1}, Lc/m/x/a/gv/aj$a;-><init>(B)V

    sput-object v0, Lc/m/x/a/gv/aj;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lc/m/x/a/gv/aj$c;

    invoke-direct {v0, v1}, Lc/m/x/a/gv/aj$c;-><init>(B)V

    sput-object v0, Lc/m/x/a/gv/aj;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/aj;->i:Ljava/util/List;

    return-void
.end method

.method public static a()Lc/m/x/a/gv/aj$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/m/x/a/gv/aj",
            "<TTResult;>.b;"
        }
    .end annotation

    new-instance v0, Lc/m/x/a/gv/aj;

    invoke-direct {v0}, Lc/m/x/a/gv/aj;-><init>()V

    new-instance v1, Lc/m/x/a/gv/aj$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc/m/x/a/gv/aj$b;-><init>(Lc/m/x/a/gv/aj;B)V

    return-object v1
.end method

.method private a(Lc/m/x/a/gv/ah;Ljava/util/concurrent/Executor;)Lc/m/x/a/gv/aj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/m/x/a/gv/ah",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>;"
        }
    .end annotation

    invoke-static {}, Lc/m/x/a/gv/aj;->a()Lc/m/x/a/gv/aj$b;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lc/m/x/a/gv/aj;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lc/m/x/a/gv/aj;->i:Ljava/util/List;

    new-instance v4, Lc/m/x/a/gv/am;

    invoke-direct {v4, p0, v0, p1, p2}, Lc/m/x/a/gv/am;-><init>(Lc/m/x/a/gv/aj;Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-static {v0, p1, p0, p2}, Lc/m/x/a/gv/aj;->c(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V

    :cond_1
    iget-object v0, v0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Exception;)Lc/m/x/a/gv/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lc/m/x/a/gv/aj",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lc/m/x/a/gv/aj;->a()Lc/m/x/a/gv/aj$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Exception;)V

    iget-object v0, v0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lc/m/x/a/gv/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lc/m/x/a/gv/aj",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lc/m/x/a/gv/aj;->a()Lc/m/x/a/gv/aj$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/m/x/a/gv/aj$b;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    return-object v0
.end method

.method static synthetic a(Lc/m/x/a/gv/aj;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/aj;->h:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic a(Lc/m/x/a/gv/aj;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lc/m/x/a/gv/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/aj;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lc/m/x/a/gv/aj;->c(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private b(Lc/m/x/a/gv/ah;Ljava/util/concurrent/Executor;)Lc/m/x/a/gv/aj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/m/x/a/gv/ah",
            "<TTResult;",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>;"
        }
    .end annotation

    invoke-static {}, Lc/m/x/a/gv/aj;->a()Lc/m/x/a/gv/aj$b;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lc/m/x/a/gv/aj;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lc/m/x/a/gv/aj;->i:Ljava/util/List;

    new-instance v4, Lc/m/x/a/gv/an;

    invoke-direct {v4, p0, v0, p1, p2}, Lc/m/x/a/gv/an;-><init>(Lc/m/x/a/gv/aj;Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-static {v0, p1, p0, p2}, Lc/m/x/a/gv/aj;->d(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V

    :cond_1
    iget-object v0, v0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lc/m/x/a/gv/aj;->d(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic b(Lc/m/x/a/gv/aj;)Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/aj;->e:Z

    return v0
.end method

.method private static c(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>.b;",
            "Lc/m/x/a/gv/ah",
            "<TTResult;TTContinuationResult;>;",
            "Lc/m/x/a/gv/aj",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    new-instance v0, Lc/m/x/a/gv/ap;

    invoke-direct {v0, p1, p2, p0}, Lc/m/x/a/gv/ap;-><init>(Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Lc/m/x/a/gv/aj$b;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lc/m/x/a/gv/aj;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/aj;->e:Z

    return v0
.end method

.method private static d(Lc/m/x/a/gv/aj$b;Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>.b;",
            "Lc/m/x/a/gv/ah",
            "<TTResult;",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>;>;",
            "Lc/m/x/a/gv/aj",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    new-instance v0, Lc/m/x/a/gv/ak;

    invoke-direct {v0, p1, p2, p0}, Lc/m/x/a/gv/ak;-><init>(Lc/m/x/a/gv/ah;Lc/m/x/a/gv/aj;Lc/m/x/a/gv/aj$b;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lc/m/x/a/gv/aj;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/aj;->f:Z

    return v0
.end method

.method static synthetic e(Lc/m/x/a/gv/aj;)V
    .locals 3

    iget-object v1, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/aj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p0}, Lc/m/x/a/gv/ah;->then(Lc/m/x/a/gv/aj;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc/m/x/a/gv/aj;->i:Ljava/util/List;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public static f()Lc/m/x/a/gv/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/m/x/a/gv/aj",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {}, Lc/m/x/a/gv/aj;->a()Lc/m/x/a/gv/aj$b;

    move-result-object v0

    invoke-virtual {v0}, Lc/m/x/a/gv/aj$b;->b()V

    iget-object v0, v0, Lc/m/x/a/gv/aj$b;->a:Lc/m/x/a/gv/aj;

    return-object v0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/m/x/a/gv/aj;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lc/m/x/a/gv/ah;)Lc/m/x/a/gv/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/m/x/a/gv/ah",
            "<TTResult;TTContinuationResult;>;)",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lc/m/x/a/gv/aj;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lc/m/x/a/gv/aj;->a(Lc/m/x/a/gv/ah;Ljava/util/concurrent/Executor;)Lc/m/x/a/gv/aj;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lc/m/x/a/gv/ah;)Lc/m/x/a/gv/aj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/m/x/a/gv/ah",
            "<TTResult;TTContinuationResult;>;)",
            "Lc/m/x/a/gv/aj",
            "<TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lc/m/x/a/gv/aj;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/m/x/a/gv/ao;

    invoke-direct {v1, p0, p1}, Lc/m/x/a/gv/ao;-><init>(Lc/m/x/a/gv/aj;Lc/m/x/a/gv/ah;)V

    invoke-direct {p0, v1, v0}, Lc/m/x/a/gv/aj;->b(Lc/m/x/a/gv/ah;Ljava/util/concurrent/Executor;)Lc/m/x/a/gv/aj;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/m/x/a/gv/aj;->f:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/gv/aj;->h:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/gv/aj;->g:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/aj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/m/x/a/gv/aj;->h:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
