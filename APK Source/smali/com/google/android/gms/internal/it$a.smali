.class public final Lcom/google/android/gms/internal/it$a;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/it$a;",
        ">;"
    }
.end annotation


# instance fields
.field public aaY:J

.field public aaZ:Lcom/google/android/gms/internal/c$j;

.field public fK:Lcom/google/android/gms/internal/c$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/it$a;->lV()Lcom/google/android/gms/internal/it$a;

    return-void
.end method

.method public static l([B)Lcom/google/android/gms/internal/it$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ks;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/it$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/it$a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/kt;[B)Lcom/google/android/gms/internal/kt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/it$a;

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

    iget-wide v1, p0, Lcom/google/android/gms/internal/it$a;->aaY:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->b(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_1
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/it$a;->n(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/it$a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/it$a;->aaY:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/it$a;->adY:I

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
    instance-of v0, p1, Lcom/google/android/gms/internal/it$a;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/it$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v0, p0, Lcom/google/android/gms/internal/it$a;->aaY:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/it$a;->aaY:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    iget-object v1, p1, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    iget-object v1, p1, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c$j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v0, p0, Lcom/google/android/gms/internal/it$a;->aaY:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/it$a;->aaY:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v1, :cond_1

    move v1, v5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    if-nez v1, :cond_2

    move v1, v5

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v5

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c$j;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public lV()Lcom/google/android/gms/internal/it$a;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/it$a;->aaY:J

    iput-object v2, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    iput-object v2, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    iput-object v2, p0, Lcom/google/android/gms/internal/it$a;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/it$a;->adY:I

    return-object p0
.end method

.method public n(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/it$a;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/it$a;->a(Lcom/google/android/gms/internal/kn;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :sswitch_0
    move-object v0, p0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/it$a;->aaY:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->fK:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/it$a;->aaZ:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method
