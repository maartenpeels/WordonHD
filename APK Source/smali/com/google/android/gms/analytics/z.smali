.class Lcom/google/android/gms/analytics/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ad;


# instance fields
.field private final vm:J

.field private final vn:I

.field private vo:D

.field private vp:J

.field private final vq:Ljava/lang/Object;

.field private final vr:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/z;->vq:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/analytics/z;->vn:I

    iget v0, p0, Lcom/google/android/gms/analytics/z;->vn:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/z;->vo:D

    iput-wide p2, p0, Lcom/google/android/gms/analytics/z;->vm:J

    iput-object p4, p0, Lcom/google/android/gms/analytics/z;->vr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3c

    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/analytics/z;-><init>(IJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cS()Z
    .locals 11

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lcom/google/android/gms/analytics/z;->vq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/analytics/z;->vo:D

    iget v5, p0, Lcom/google/android/gms/analytics/z;->vn:I

    int-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/analytics/z;->vp:J

    sub-long v3, v1, v3

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/google/android/gms/analytics/z;->vm:J

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/google/android/gms/analytics/z;->vn:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/google/android/gms/analytics/z;->vo:D

    add-double/2addr v3, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/analytics/z;->vo:D

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/analytics/z;->vp:J

    iget-wide v1, p0, Lcom/google/android/gms/analytics/z;->vo:D

    cmpl-double v1, v1, v9

    if-ltz v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/analytics/z;->vo:D

    sub-double/2addr v1, v9

    iput-wide v1, p0, Lcom/google/android/gms/analytics/z;->vo:D

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excessive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/z;->vr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " detected; call ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
