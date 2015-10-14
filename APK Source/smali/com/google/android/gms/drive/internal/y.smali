.class public final Lcom/google/android/gms/drive/internal/y;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/drive/internal/y;",
        ">;"
    }
.end annotation


# instance fields
.field public FC:Ljava/lang/String;

.field public FD:J

.field public FE:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/y;->fH()Lcom/google/android/gms/drive/internal/y;

    return-void
.end method

.method public static g([B)Lcom/google/android/gms/drive/internal/y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ks;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/y;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/kt;[B)Lcom/google/android/gms/internal/kt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/internal/y;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ko;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->FD:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->c(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->FE:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->c(IJ)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/y;->m(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/drive/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->FD:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->FE:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->adY:I

    return v0
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
    instance-of v0, p1, Lcom/google/android/gms/drive/internal/y;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/internal/y;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    iget v1, p1, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    if-eq v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/y;->FD:J

    iget-wide v2, p1, Lcom/google/android/gms/drive/internal/y;->FD:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/drive/internal/y;->FE:J

    iget-wide v2, p1, Lcom/google/android/gms/drive/internal/y;->FE:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v5

    goto :goto_0

    :cond_9
    move v0, v4

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fH()Lcom/google/android/gms/drive/internal/y;
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->FD:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->FE:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->adY:I

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v5, 0x0

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->FD:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/internal/y;->FD:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->FE:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/internal/y;->FE:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v5

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public m(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/drive/internal/y;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/y;->a(Lcom/google/android/gms/internal/kn;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :sswitch_0
    move-object v0, p0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mm()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/y;->FD:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mm()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/y;->FE:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method
