.class Lcom/google/android/gms/tagmanager/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/o$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/co$a;,
        Lcom/google/android/gms/tagmanager/co$b;
    }
.end annotation


# instance fields
.field private final WJ:Ljava/lang/String;

.field private Xg:Ljava/lang/String;

.field private Zf:Lcom/google/android/gms/tagmanager/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/c$j;",
            ">;"
        }
    .end annotation
.end field

.field private Zg:Lcom/google/android/gms/tagmanager/r;

.field private final Zi:Ljava/util/concurrent/ScheduledExecutorService;

.field private final Zj:Lcom/google/android/gms/tagmanager/co$a;

.field private Zk:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/co$b;Lcom/google/android/gms/tagmanager/co$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/co;->Zg:Lcom/google/android/gms/tagmanager/r;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/co;->WJ:Ljava/lang/String;

    if-nez p4, :cond_1

    new-instance v0, Lcom/google/android/gms/tagmanager/co$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/co$1;-><init>(Lcom/google/android/gms/tagmanager/co;)V

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/co$b;->la()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zi:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p5, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/co$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/co$2;-><init>(Lcom/google/android/gms/tagmanager/co;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zj:Lcom/google/android/gms/tagmanager/co$a;

    :goto_1
    return-void

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/tagmanager/co;->Zj:Lcom/google/android/gms/tagmanager/co$a;

    goto :goto_1

    :cond_1
    move-object v0, p4

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/co;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/co;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->WJ:Ljava/lang/String;

    return-object v0
.end method

.method private bK(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zj:Lcom/google/android/gms/tagmanager/co$a;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->Zg:Lcom/google/android/gms/tagmanager/r;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/co$a;->a(Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->Zf:Lcom/google/android/gms/tagmanager/bg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cn;->a(Lcom/google/android/gms/tagmanager/bg;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->Xg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cn;->bu(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cn;->bJ(Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized kZ()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/co;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called method after closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/gms/tagmanager/bg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/c$j;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->kZ()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->Zf:Lcom/google/android/gms/tagmanager/bg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bu(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->kZ()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/co;->Xg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(JLjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAfterDelay: containerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/co;->WJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->y(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->kZ()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zf:Lcom/google/android/gms/tagmanager/bg;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before loadAfterDelay() is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zk:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zk:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zi:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, p3}, Lcom/google/android/gms/tagmanager/co;->bK(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cn;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zk:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/co;->kZ()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zk:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zk:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/co;->Zi:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/co;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
