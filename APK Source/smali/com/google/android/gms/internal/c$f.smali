.class public final Lcom/google/android/gms/internal/c$f;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$f;",
        ">;"
    }
.end annotation


# instance fields
.field public eV:[Ljava/lang/String;

.field public eW:[Ljava/lang/String;

.field public eX:[Lcom/google/android/gms/internal/d$a;

.field public eY:[Lcom/google/android/gms/internal/c$e;

.field public eZ:[Lcom/google/android/gms/internal/c$b;

.field public fa:[Lcom/google/android/gms/internal/c$b;

.field public fb:[Lcom/google/android/gms/internal/c$b;

.field public fc:[Lcom/google/android/gms/internal/c$g;

.field public fd:Ljava/lang/String;

.field public fe:Ljava/lang/String;

.field public ff:Ljava/lang/String;

.field public fg:Ljava/lang/String;

.field public fh:Lcom/google/android/gms/internal/c$a;

.field public fi:F

.field public fj:Z

.field public fk:[Ljava/lang/String;

.field public fl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$f;->k()Lcom/google/android/gms/internal/c$f;

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/c$f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ks;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/kt;->a(Lcom/google/android/gms/internal/kt;[B)Lcom/google/android/gms/internal/kt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/c$f;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ko;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v4, ""

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v3

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v3

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v3

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_13

    const/16 v0, 0xf

    iget v1, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(IF)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_15

    move v0, v3

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_14

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    if-eqz v0, :cond_16

    const/16 v0, 0x11

    iget v1, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(IZ)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v3

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_18

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$f;->g(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$f;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 7

    const/4 v5, 0x0

    const-string v6, ""

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v5

    move v2, v5

    move v3, v5

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/ko;->cf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    move v0, v5

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    move v0, v5

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v0

    move v0, v5

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    if-lez v1, :cond_e

    move v1, v0

    move v0, v5

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    move v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    if-lez v1, :cond_11

    move v1, v0

    move v0, v5

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_f

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    move v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    array-length v1, v1

    if-lez v1, :cond_14

    move v1, v0

    move v0, v5

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    move v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    if-eqz v1, :cond_19

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget v1, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_1a

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->c(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1d

    move v1, v5

    move v2, v5

    move v3, v5

    :goto_7
    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1c

    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1b

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/ko;->cf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    :cond_1d
    iget v1, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    if-eqz v1, :cond_1e

    const/16 v1, 0x11

    iget v2, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    if-eqz v1, :cond_1f

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_22

    move v1, v5

    move v2, v5

    move v3, v5

    :goto_8
    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_21

    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_20

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/ko;->cf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_21
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    :cond_22
    iput v0, p0, Lcom/google/android/gms/internal/c$f;->adY:I

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
    instance-of v0, p1, Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$f;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    if-eqz v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    if-eqz v0, :cond_f

    move v0, v2

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    if-eqz v0, :cond_11

    move v0, v2

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    if-eqz v0, :cond_13

    move v0, v2

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/google/android/gms/internal/c$f;->fi:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_14

    move v0, v2

    goto/16 :goto_0

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/c$f;->fj:Z

    if-eq v0, v1, :cond_15

    move v0, v2

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v2

    goto/16 :goto_0

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    iget v1, p1, Lcom/google/android/gms/internal/c$f;->fl:I

    if-eq v0, v1, :cond_17

    move v0, v2

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_18
    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    move v0, v3

    goto/16 :goto_0

    :cond_1a
    move v0, v2

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public g(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$f;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$f;->a(Lcom/google/android/gms/internal/kn;I)Z

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

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_3
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    array-length v1, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_5

    move v1, v3

    :goto_4
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    if-nez v1, :cond_8

    move v1, v3

    :goto_6
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/c$e;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_7
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/c$e;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$e;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    array-length v1, v1

    goto :goto_6

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/c$e;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$e;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    if-nez v1, :cond_b

    move v1, v3

    :goto_8
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/c$b;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_9
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    goto :goto_8

    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    if-nez v1, :cond_e

    move v1, v3

    :goto_a
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/c$b;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_b
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_f

    new-instance v2, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    goto :goto_a

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    if-nez v1, :cond_11

    move v1, v3

    :goto_c
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/c$b;

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_d
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_12

    new-instance v2, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    array-length v1, v1

    goto :goto_c

    :cond_12
    new-instance v2, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    if-nez v1, :cond_14

    move v1, v3

    :goto_e
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/c$g;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_f
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_15

    new-instance v2, Lcom/google/android/gms/internal/c$g;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$g;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    array-length v1, v1

    goto :goto_e

    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/c$g;

    invoke-direct {v2}, Lcom/google/android/gms/internal/c$g;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x82

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    if-nez v1, :cond_18

    move v1, v3

    :goto_10
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_11
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    array-length v1, v1

    goto :goto_10

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ml()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x9a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    if-nez v1, :cond_1b

    move v1, v3

    :goto_12
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_13
    array-length v2, v0

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    array-length v1, v1

    goto :goto_12

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7d -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x90 -> :sswitch_10
        0x9a -> :sswitch_11
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    if-nez v1, :cond_5

    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x4cf

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c$a;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_6
    const/16 v1, 0x4d5

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public k()Lcom/google/android/gms/internal/c$f;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    sget-object v0, Lcom/google/android/gms/internal/kw;->aef:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eV:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/kw;->aef:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eW:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eX:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/c$e;->i()[Lcom/google/android/gms/internal/c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eY:[Lcom/google/android/gms/internal/c$e;

    invoke-static {}, Lcom/google/android/gms/internal/c$b;->d()[Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->eZ:[Lcom/google/android/gms/internal/c$b;

    invoke-static {}, Lcom/google/android/gms/internal/c$b;->d()[Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fa:[Lcom/google/android/gms/internal/c$b;

    invoke-static {}, Lcom/google/android/gms/internal/c$b;->d()[Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fb:[Lcom/google/android/gms/internal/c$b;

    invoke-static {}, Lcom/google/android/gms/internal/c$g;->l()[Lcom/google/android/gms/internal/c$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fc:[Lcom/google/android/gms/internal/c$g;

    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/c$f;->fd:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/c$f;->fe:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->ff:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/c$f;->fg:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/c$f;->fh:Lcom/google/android/gms/internal/c$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->fi:F

    iput-boolean v2, p0, Lcom/google/android/gms/internal/c$f;->fj:Z

    sget-object v0, Lcom/google/android/gms/internal/kw;->aef:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/internal/c$f;->fl:I

    iput-object v3, p0, Lcom/google/android/gms/internal/c$f;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->adY:I

    return-object p0
.end method
