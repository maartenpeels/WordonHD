.class public final Lcom/google/android/gms/internal/ev;
.super Ljava/lang/Object;


# static fields
.field public static final Ab:Ljava/lang/Object;

.field private static final zb:Lcom/google/android/gms/internal/er;


# instance fields
.field private Aa:Lcom/google/android/gms/internal/eu;

.field private zX:J

.field private zY:J

.field private zZ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/er;

    const-string v1, "RequestTracker"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/er;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ev;->zb:Lcom/google/android/gms/internal/er;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ev;->Ab:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ev;->zX:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ev;->zY:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ev;->zZ:J

    return-void
.end method

.method private dT()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ev;->zY:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ev;->Aa:Lcom/google/android/gms/internal/eu;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ev;->zZ:J

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/gms/internal/eu;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ev;->Ab:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ev;->Aa:Lcom/google/android/gms/internal/eu;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ev;->zY:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ev;->zY:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ev;->Aa:Lcom/google/android/gms/internal/eu;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ev;->zZ:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/eu;->l(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b(JILorg/json/JSONObject;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/ev;->Ab:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ev;->zY:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ev;->zY:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ev;->zb:Lcom/google/android/gms/internal/er;

    const-string v2, "request %d completed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ev;->zY:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ev;->Aa:Lcom/google/android/gms/internal/eu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ev;->dT()V

    move v2, v7

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/eu;->a(JILorg/json/JSONObject;)V

    :cond_0
    return v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v2, v6

    goto :goto_0
.end method

.method public c(JI)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ev;->b(JILorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ev;->Ab:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ev;->zY:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ev;->dT()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(JI)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/google/android/gms/internal/ev;->Ab:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ev;->zY:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ev;->zZ:J

    sub-long v3, p1, v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ev;->zX:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ev;->zb:Lcom/google/android/gms/internal/er;

    const-string v1, "request %d timed out"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ev;->zY:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ev;->zY:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ev;->Aa:Lcom/google/android/gms/internal/eu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ev;->dT()V

    move v4, v8

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-interface {v3, v0, v1, p3, v9}, Lcom/google/android/gms/internal/eu;->a(JILorg/json/JSONObject;)V

    :cond_0
    return v4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object v3, v9

    move v4, v7

    goto :goto_0
.end method

.method public dU()Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ev;->Ab:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ev;->zY:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n(J)Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ev;->Ab:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ev;->zY:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ev;->zY:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
