.class public final Lcom/google/android/gms/internal/c$c;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$c;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eL:[Lcom/google/android/gms/internal/c$c;


# instance fields
.field public eM:Ljava/lang/String;

.field public eN:J

.field public eO:J

.field public eP:Z

.field public eQ:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$c;->g()Lcom/google/android/gms/internal/c$c;

    return-void
.end method

.method public static f()[Lcom/google/android/gms/internal/c$c;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/kr;->adX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/c$c;

    sput-object v1, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/c$c;->eL:[Lcom/google/android/gms/internal/c$c;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ko;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->b(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->b(IJ)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(IZ)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->b(IJ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/internal/ko;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/kt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$c;->d(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$c;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 7

    const-wide/16 v5, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/google/android/gms/internal/c$c;->adY:I

    return v0
.end method

.method public d(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$c;->a(Lcom/google/android/gms/internal/kn;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :sswitch_0
    move-object v0, p0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ml()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_0

    move v0, v5

    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/c$c;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$c;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/c$c;->eN:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/c$c;->eO:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eq v0, v1, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/c$c;->eQ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v5

    goto :goto_0

    :cond_a
    move v0, v4

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Lcom/google/android/gms/internal/c$c;
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$c;->adY:I

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x20

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/c$c;->eN:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/c$c;->eO:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$c;->eP:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/c$c;->eQ:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v6

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->eM:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$c;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method
