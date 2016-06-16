.class Lcom/urbanairship/analytics/ActivityMonitor;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/util/SparseArray;

.field private b:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->c:Z

    iput p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->d:I

    iput p2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->e:I

    iput-boolean p3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->f:Z

    return-void
.end method

.method private a(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;
    .locals 5

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/analytics/ActivityState;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/urbanairship/analytics/ActivityMonitor;->d:I

    iget v3, p0, Lcom/urbanairship/analytics/ActivityMonitor;->e:I

    iget-boolean v4, p0, Lcom/urbanairship/analytics/ActivityMonitor;->f:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/urbanairship/analytics/ActivityState;-><init>(Ljava/lang/String;IIZ)V

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->c:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->c:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->b:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->b:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;->a()V

    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->b:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Listener;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/ActivityState;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/ActivityMonitor;->a(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/urbanairship/analytics/ActivityMonitor;->a(Z)V

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->a(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/analytics/ActivityState;->a(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/ActivityMonitor;->a()V

    return-void
.end method

.method public final a(Lcom/urbanairship/analytics/ActivityMonitor$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->b:Lcom/urbanairship/analytics/ActivityMonitor$Listener;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->a(Landroid/app/Activity;)Lcom/urbanairship/analytics/ActivityState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/analytics/ActivityState;->b(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/urbanairship/analytics/ActivityMonitor$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/ActivityMonitor$1;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
