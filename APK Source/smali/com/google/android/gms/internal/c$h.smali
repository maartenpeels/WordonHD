.class public final Lcom/google/android/gms/internal/c$h;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final fx:Lcom/google/android/gms/internal/kq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kq",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            "Lcom/google/android/gms/internal/c$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final fy:[Lcom/google/android/gms/internal/c$h;


# instance fields
.field public fA:[I

.field public fB:[I

.field public fC:I

.field public fD:[I

.field public fE:I

.field public fF:I

.field public fz:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xb

    const-class v1, Lcom/google/android/gms/internal/c$h;

    const/16 v2, 0x32a

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/kq;->a(ILjava/lang/Class;I)Lcom/google/android/gms/internal/kq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/c$h;->fx:Lcom/google/android/gms/internal/kq;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/c$h;

    sput-object v0, Lcom/google/android/gms/internal/c$h;->fy:[Lcom/google/android/gms/internal/c$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$h;->n()Lcom/google/android/gms/internal/c$h;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ko;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_6
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$h;->i(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$h;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v4

    move v2, v4

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v4

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v4

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v4

    move v2, v4

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    if-eqz v1, :cond_9

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iput v0, p0, Lcom/google/android/gms/internal/c$h;->adY:I

    return v0
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
    instance-of v0, p1, Lcom/google/android/gms/internal/c$h;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$h;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->fz:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->fA:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->fB:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    iget v1, p1, Lcom/google/android/gms/internal/c$h;->fC:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->fD:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    iget v1, p1, Lcom/google/android/gms/internal/c$h;->fE:I

    if-eq v0, v1, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    iget v1, p1, Lcom/google/android/gms/internal/c$h;->fF:I

    if-eq v0, v1, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v0, v3

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public i(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$h;->a(Lcom/google/android/gms/internal/kn;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :sswitch_0
    move-object v0, p0

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_3
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    array-length v1, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    goto :goto_0

    :sswitch_2
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

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    if-nez v1, :cond_6

    move v1, v4

    :goto_5
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    array-length v1, v1

    goto :goto_5

    :cond_7
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    if-nez v1, :cond_9

    move v1, v4

    :goto_7
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_8
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    array-length v1, v1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    if-nez v1, :cond_d

    move v1, v4

    :goto_a
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_b
    array-length v3, v2

    if-ge v1, v3, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    array-length v1, v1

    goto :goto_a

    :cond_e
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    if-nez v1, :cond_10

    move v1, v4

    :goto_c
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_d
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    array-length v1, v1

    goto :goto_c

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_12
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    if-nez v1, :cond_14

    move v1, v4

    :goto_f
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_10
    array-length v3, v2

    if-ge v1, v3, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    array-length v1, v1

    goto :goto_f

    :cond_15
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    if-nez v1, :cond_17

    move v1, v4

    :goto_11
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_12
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_18

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    array-length v1, v1

    goto :goto_11

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_19
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    if-nez v1, :cond_1b

    move v1, v4

    :goto_14
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_1a

    iget-object v3, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_15
    array-length v3, v2

    if-ge v1, v3, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    array-length v1, v1

    goto :goto_14

    :cond_1c
    iput-object v2, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
        0x20 -> :sswitch_7
        0x28 -> :sswitch_8
        0x2a -> :sswitch_9
        0x30 -> :sswitch_a
        0x38 -> :sswitch_b
    .end sparse-switch
.end method

.method public n()Lcom/google/android/gms/internal/c$h;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fz:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fA:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fB:[I

    iput v1, p0, Lcom/google/android/gms/internal/c$h;->fC:I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->fD:[I

    iput v1, p0, Lcom/google/android/gms/internal/c$h;->fE:I

    iput v1, p0, Lcom/google/android/gms/internal/c$h;->fF:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$h;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$h;->adY:I

    return-object p0
.end method
