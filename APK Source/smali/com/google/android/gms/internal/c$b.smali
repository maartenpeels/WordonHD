.class public final Lcom/google/android/gms/internal/c$b;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eG:[Lcom/google/android/gms/internal/c$b;


# instance fields
.field public eH:[I

.field public eI:I

.field public eJ:Z

.field public eK:Z

.field public name:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$b;->e()Lcom/google/android/gms/internal/c$b;

    return-void
.end method

.method public static d()[Lcom/google/android/gms/internal/c$b;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/kr;->adX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/c$b;

    sput-object v1, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(IZ)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(IZ)V

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$b;->c(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v3

    move v2, v3

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/c$b;->name:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/google/android/gms/internal/c$b;->adY:I

    return v0
.end method

.method public c(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/internal/kn;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :sswitch_0
    move-object v0, p0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ml()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_3
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v1, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-nez v1, :cond_6

    move v1, v4

    :goto_5
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_6
    array-length v3, v2

    if-ge v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v1, v1

    goto :goto_5

    :cond_7
    iput-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ml()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public e()Lcom/google/android/gms/internal/c$b;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    iput v1, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    iput v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->adY:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v3

    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$b;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    iget v1, p1, Lcom/google/android/gms/internal/c$b;->eI:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    iget v1, p1, Lcom/google/android/gms/internal/c$b;->name:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v0, v3

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method
