.class public final Lcom/google/android/gms/internal/c$d;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$d;",
        ">;"
    }
.end annotation


# instance fields
.field public eR:[Lcom/google/android/gms/internal/d$a;

.field public eS:[Lcom/google/android/gms/internal/d$a;

.field public eT:[Lcom/google/android/gms/internal/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$d;->h()Lcom/google/android/gms/internal/c$d;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$d;->e(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$d;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    move v0, v4

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    move v0, v4

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    iput v0, p0, Lcom/google/android/gms/internal/c$d;->adY:I

    return v0
.end method

.method public e(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$d;->a(Lcom/google/android/gms/internal/kn;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :sswitch_0
    move-object v0, p0

    goto :goto_1

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_2

    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_3
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_5

    move v1, v3

    :goto_4
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_5
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    if-nez v1, :cond_8

    move v1, v3

    :goto_6
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/c$c;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_7
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/c$c;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$c;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    array-length v1, v1

    goto :goto_6

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/c$c;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$c;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
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
    instance-of v0, p1, Lcom/google/android/gms/internal/c$d;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$d;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public h()Lcom/google/android/gms/internal/c$d;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/c$c;->f()[Lcom/google/android/gms/internal/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$d;->adY:I

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$d;->eR:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eS:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->eT:[Lcom/google/android/gms/internal/c$c;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$d;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method
