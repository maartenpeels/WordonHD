.class public final Lcom/google/android/gms/internal/c$g;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$g;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fm:[Lcom/google/android/gms/internal/c$g;


# instance fields
.field public fn:[I

.field public fo:[I

.field public fp:[I

.field public fq:[I

.field public fr:[I

.field public fs:[I

.field public ft:[I

.field public fu:[I

.field public fv:[I

.field public fw:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$g;->m()Lcom/google/android/gms/internal/c$g;

    return-void
.end method

.method public static l()[Lcom/google/android/gms/internal/c$g;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/kr;->adX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/c$g;

    sput-object v1, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/c$g;->fm:[Lcom/google/android/gms/internal/c$g;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v3

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v3

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v3

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v3

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v3

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v3

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ko;->i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$g;->h(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$g;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v4

    move v2, v4

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v4

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v4

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v1, v1

    if-lez v1, :cond_7

    move v1, v4

    move v2, v4

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v3, v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v4

    move v2, v4

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v3, v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v4

    move v2, v4

    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v4

    move v2, v4

    :goto_6
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v3, v3

    if-ge v1, v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v1, v1

    if-lez v1, :cond_f

    move v1, v4

    move v2, v4

    :goto_7
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v3, v3

    if-ge v1, v3, :cond_e

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v1, v1

    if-lez v1, :cond_11

    move v1, v4

    move v2, v4

    :goto_8
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v3, v3

    if-ge v1, v3, :cond_10

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v1, v1

    if-lez v1, :cond_13

    move v1, v4

    move v2, v4

    :goto_9
    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v3, v3

    if-ge v1, v3, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ko;->cX(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_12
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/c$g;->adY:I

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
    instance-of v0, p1, Lcom/google/android/gms/internal/c$g;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$g;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kr;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v0, v3

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public h(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$g;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$g;->a(Lcom/google/android/gms/internal/kn;I)Z

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

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-nez v1, :cond_2

    move v1, v4

    :goto_2
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v1, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    if-nez v1, :cond_6

    move v1, v4

    :goto_5
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    array-length v1, v1

    goto :goto_5

    :cond_7
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-nez v1, :cond_9

    move v1, v4

    :goto_7
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v1, v1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    if-nez v1, :cond_d

    move v1, v4

    :goto_a
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    array-length v1, v1

    goto :goto_a

    :cond_e
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-nez v1, :cond_10

    move v1, v4

    :goto_c
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v1, v1

    goto :goto_c

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    if-nez v1, :cond_14

    move v1, v4

    :goto_f
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    array-length v1, v1

    goto :goto_f

    :cond_15
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-nez v1, :cond_17

    move v1, v4

    :goto_11
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v1, v1

    goto :goto_11

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    goto/16 :goto_0

    :sswitch_8
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

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    if-nez v1, :cond_1b

    move v1, v4

    :goto_14
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_1a

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

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
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    array-length v1, v1

    goto :goto_14

    :cond_1c
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-nez v1, :cond_1e

    move v1, v4

    :goto_16
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    :goto_17
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v1, v1

    goto :goto_16

    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_20
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    if-nez v1, :cond_22

    move v1, v4

    :goto_19
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_21

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    :goto_1a
    array-length v3, v2

    if-ge v1, v3, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    array-length v1, v1

    goto :goto_19

    :cond_23
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-nez v1, :cond_25

    move v1, v4

    :goto_1b
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_1c
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_26

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v1, v1

    goto :goto_1b

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_27

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_27
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    if-nez v1, :cond_29

    move v1, v4

    :goto_1e
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_28

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    :goto_1f
    array-length v3, v2

    if-ge v1, v3, :cond_2a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    array-length v1, v1

    goto :goto_1e

    :cond_2a
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-nez v1, :cond_2c

    move v1, v4

    :goto_20
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_21
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_2d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v1, v1

    goto :goto_20

    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_2e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2e
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    if-nez v1, :cond_30

    move v1, v4

    :goto_23
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_2f

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    :goto_24
    array-length v3, v2

    if-ge v1, v3, :cond_31

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    array-length v1, v1

    goto :goto_23

    :cond_31
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-nez v1, :cond_33

    move v1, v4

    :goto_25
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_26
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_34

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v1, v1

    goto :goto_25

    :cond_34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_35
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    if-nez v1, :cond_37

    move v1, v4

    :goto_28
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_29
    array-length v3, v2

    if-ge v1, v3, :cond_38

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    array-length v1, v1

    goto :goto_28

    :cond_38
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x48

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-nez v1, :cond_3a

    move v1, v4

    :goto_2a
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39
    :goto_2b
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_3b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v1, v1

    goto :goto_2a

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_3c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    if-nez v1, :cond_3e

    move v1, v4

    :goto_2d
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_3d

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3d
    :goto_2e
    array-length v3, v2

    if-ge v1, v3, :cond_3f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    array-length v1, v1

    goto :goto_2d

    :cond_3f
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kw;->b(Lcom/google/android/gms/internal/kn;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-nez v1, :cond_41

    move v1, v4

    :goto_2f
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_40
    :goto_30
    array-length v2, v0

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_42

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mh()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v1, v1

    goto :goto_2f

    :cond_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cR(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->getPosition()I

    move-result v1

    move v2, v4

    :goto_31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->ms()I

    move-result v3

    if-lez v3, :cond_43

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_43
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/kn;->cT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    if-nez v1, :cond_45

    move v1, v4

    :goto_32
    add-int/2addr v2, v1

    new-array v2, v2, [I

    if-eqz v1, :cond_44

    iget-object v3, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_44
    :goto_33
    array-length v3, v2

    if-ge v1, v3, :cond_46

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    array-length v1, v1

    goto :goto_32

    :cond_46
    iput-object v2, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kn;->cS(I)V

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
        0x22 -> :sswitch_8
        0x28 -> :sswitch_9
        0x2a -> :sswitch_a
        0x30 -> :sswitch_b
        0x32 -> :sswitch_c
        0x38 -> :sswitch_d
        0x3a -> :sswitch_e
        0x40 -> :sswitch_f
        0x42 -> :sswitch_10
        0x48 -> :sswitch_11
        0x4a -> :sswitch_12
        0x50 -> :sswitch_13
        0x52 -> :sswitch_14
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public m()Lcom/google/android/gms/internal/c$g;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fn:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fo:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fp:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fq:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fr:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fs:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->ft:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fu:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fv:[I

    sget-object v0, Lcom/google/android/gms/internal/kw;->aea:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->fw:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$g;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$g;->adY:I

    return-object p0
.end method
