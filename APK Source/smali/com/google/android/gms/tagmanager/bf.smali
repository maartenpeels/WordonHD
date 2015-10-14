.class Lcom/google/android/gms/tagmanager/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cf;


# instance fields
.field private final Wv:Lcom/google/android/gms/internal/gl;

.field private final Yx:J

.field private final vm:J

.field private final vn:I

.field private vo:D

.field private vp:J

.field private final vq:Ljava/lang/Object;

.field private final vr:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/gl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bf;->vq:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/bf;->vn:I

    iget v0, p0, Lcom/google/android/gms/tagmanager/bf;->vn:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/bf;->vo:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/bf;->vm:J

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/bf;->Yx:J

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/bf;->vr:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/bf;->Wv:Lcom/google/android/gms/internal/gl;

    return-void
.end method


# virtual methods
.method public cS()Z
    .locals 12

    const/4 v11, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-string v0, "Excessive "

    const-string v0, " detected; call ignored."

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bf;->vq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/bf;->Wv:Lcom/google/android/gms/internal/gl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/gl;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/bf;->vp:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/bf;->Yx:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excessive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/bf;->vr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " detected; call ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    monitor-exit v0

    move v0, v11

    :goto_0
    return v0

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/bf;->vo:D

    iget v5, p0, Lcom/google/android/gms/tagmanager/bf;->vn:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/bf;->vp:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/bf;->vm:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_1

    iget v5, p0, Lcom/google/android/gms/tagmanager/bf;->vn:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/google/android/gms/tagmanager/bf;->vo:D

    add-double/2addr v3, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/tagmanager/bf;->vo:D

    :cond_1
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/bf;->vp:J

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/bf;->vo:D

    cmpl-double v1, v1, v9

    if-ltz v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/bf;->vo:D

    sub-double/2addr v1, v9

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/bf;->vo:D

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excessive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/bf;->vr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " detected; call ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    monitor-exit v0

    move v0, v11

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
