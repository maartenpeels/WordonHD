.class public final Lcom/google/android/gms/internal/d$a;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fM:[Lcom/google/android/gms/internal/d$a;


# instance fields
.field public fN:Ljava/lang/String;

.field public fO:[Lcom/google/android/gms/internal/d$a;

.field public fP:[Lcom/google/android/gms/internal/d$a;

.field public fQ:[Lcom/google/android/gms/internal/d$a;

.field public fR:Ljava/lang/String;

.field public fS:Ljava/lang/String;

.field public fT:J

.field public fU:Z

.field public fV:[Lcom/google/android/gms/internal/d$a;

.field public fW:[I

.field public fX:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d$a;->s()Lcom/google/android/gms/internal/d$a;

    return-void
.end method

.method public static r()[Lcom/google/android/gms/internal/d$a;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/kr;->adX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/d$a;

    sput-object v1, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/d$a;->fM:[Lcom/google/android/gms/internal/d$a;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/d$a;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v4

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->b(ILjava/lang/String;)V

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ko;->b(IJ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v4

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v1, v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v4

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ko;->a(ILcom/google/android/gms/internal/kt;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->a(IZ)V

    :cond_e
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/d$a;->l(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 6

    const/4 v5, 0x0

    const-string v4, ""

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/d$a;->type:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    move v0, v5

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    move v0, v5

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    move v0, v5

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-wide v1, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ko;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v1, v1

    if-lez v1, :cond_f

    move v1, v5

    move v2, v5

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v3, v3

    if-ge v1, v3, :cond_e

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    if-lez v1, :cond_12

    move v1, v0

    move v0, v5

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_10

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ko;->b(ILcom/google/android/gms/internal/kt;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    move v0, v1

    :cond_12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-eqz v1, :cond_13

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/d$a;->adY:I

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
    instance-of v0, p1, Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/d$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    iget v1, p1, Lcom/google/android/gms/internal/d$a;->type:I

    if-eq v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v4

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v4

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v4

    goto :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/d$a;->fT:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    move v0, v4

    goto :goto_0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-eq v0, v1, :cond_d

    move v0, v4

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v4

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v4

    goto/16 :goto_0

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eq v0, v1, :cond_10

    move v0, v4

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    iget-object v0, p1, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    move v0, v5

    goto/16 :goto_0

    :cond_13
    move v0, v4

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 9

    const/16 v8, 0x4d5

    const/16 v7, 0x4cf

    const/4 v6, 0x0

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v6

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v6

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v6

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    if-eqz v1, :cond_4

    move v1, v7

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    if-eqz v1, :cond_5

    move v1, v7

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    move v1, v6

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v8

    goto :goto_3

    :cond_5
    move v1, v8

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public l(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/d$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/d$a;->a(Lcom/google/android/gms/internal/kn;I)Z

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

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_2

    move v1, v6

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_3
    array-length v2, v0

    sub-int/2addr v2, v7

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
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_5

    move v1, v6

    :goto_4
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_5
    array-length v2, v0

    sub-int/2addr v2, v7

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
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_8

    move v1, v6

    :goto_6
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_7
    array-length v2, v0

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    goto :goto_6

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ml()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    new-array v1, v0, [I

    move v2, v6

    move v3, v6

    :goto_8
    if-ge v2, v0, :cond_b

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :pswitch_1
    add-int/lit8 v5, v3, 0x1

    aput v4, v1, v3

    move v3, v5

    goto :goto_9

    :cond_b
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-nez v0, :cond_c

    move v0, v6

    :goto_a
    if-nez v0, :cond_d

    array-length v2, v1

    if-ne v3, v2, :cond_d

    iput-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v0, v0

    goto :goto_a

    :cond_d
    add-int v2, v0, v3

    new-array v2, v2, [I

    if-eqz v0, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v4, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    invoke-static {v1, v6, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v6

    :goto_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    goto :goto_b

    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_f
    if-eqz v2, :cond_13

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    if-nez v1, :cond_11

    move v1, v6

    :goto_c
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    invoke-static {v3, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    packed-switch v3, :pswitch_data_3

    goto :goto_d

    :pswitch_3
    add-int/lit8 v4, v1, 0x1

    aput v3, v2, v1

    move v1, v4

    goto :goto_d

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    array-length v1, v1

    goto :goto_c

    :cond_12
    iput-object v2, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    :cond_13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    if-nez v1, :cond_15

    move v1, v6

    :goto_e
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_f
    array-length v2, v0

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_16

    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    array-length v1, v1

    goto :goto_e

    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->a(Lcom/google/android/gms/internal/kt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ml()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x60 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public s()Lcom/google/android/gms/internal/d$a;
    .locals 3

    const/4 v2, 0x0

    const-string v1, ""

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/d$a;->type:I

    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/d$a;->fN:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/d$a;->fR:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/d$a;->fS:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/d$a;->fT:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fU:Z

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fV:[Lcom/google/android/gms/internal/d$a;

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->fW:[I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/d$a;->fX:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/d$a;->adY:I

    return-object p0
.end method
