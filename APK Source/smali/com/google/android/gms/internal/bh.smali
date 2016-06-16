.class public final Lcom/google/android/gms/internal/bh;
.super Ljava/lang/Object;


# instance fields
.field private final ky:Lcom/google/android/gms/internal/bq;

.field private final li:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mQ:Lcom/google/android/gms/internal/cx;

.field private final mR:Lcom/google/android/gms/internal/bj;

.field private mS:Z

.field private mT:Lcom/google/android/gms/internal/bm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->li:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bh;->mS:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bh;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    iput-object p3, p0, Lcom/google/android/gms/internal/bh;->ky:Lcom/google/android/gms/internal/bq;

    iput-object p4, p0, Lcom/google/android/gms/internal/bh;->mR:Lcom/google/android/gms/internal/bj;

    return-void
.end method


# virtual methods
.method public a(JJ)Lcom/google/android/gms/internal/bn;
    .locals 17

    const-string v5, "Starting mediation."

    invoke-static {v5}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->mR:Lcom/google/android/gms/internal/bj;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/internal/bj;->nc:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/bi;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying mediation network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/gms/internal/bi;->mX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/dw;->x(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/google/android/gms/internal/bi;->mY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->li:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bh;->mS:Z

    move v5, v0

    if-eqz v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/bn;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/bn;-><init>(I)V

    monitor-exit v16

    :goto_1
    return-object v5

    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/bm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->ky:Lcom/google/android/gms/internal/bq;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->mR:Lcom/google/android/gms/internal/bj;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->mQ:Lcom/google/android/gms/internal/cx;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/gms/internal/cx;->kK:Lcom/google/android/gms/internal/dx;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/bm;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/bi;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dx;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/bm;->b(JJ)Lcom/google/android/gms/internal/bn;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/bn;->nw:I

    if-nez v6, :cond_3

    const-string v6, "Adapter succeeded."

    invoke-static {v6}, Lcom/google/android/gms/internal/dw;->v(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    iget-object v6, v5, Lcom/google/android/gms/internal/bn;->ny:Lcom/google/android/gms/internal/br;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/android/gms/internal/dv;->rp:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/bh$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bh$1;-><init>(Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/bn;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/google/android/gms/internal/bn;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/bn;-><init>(I)V

    goto :goto_1
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->li:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/bh;->mS:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->mT:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bm;->cancel()V

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
