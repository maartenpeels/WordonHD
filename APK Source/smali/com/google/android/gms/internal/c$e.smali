.class public final Lcom/google/android/gms/internal/c$e;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$e;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eU:[Lcom/google/android/gms/internal/c$e;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$e;->j()Lcom/google/android/gms/internal/c$e;

    return-void
.end method

.method public static i()[Lcom/google/android/gms/internal/c$e;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/kr;->adX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/c$e;

    sput-object v1, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/c$e;->eU:[Lcom/google/android/gms/internal/c$e;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/c$e;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/c$e;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$e;->f(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$e;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/c$e;->key:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/c$e;->value:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/c$e;->adY:I

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
    instance-of v0, p1, Lcom/google/android/gms/internal/c$e;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$e;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p0, Lcom/google/android/gms/internal/c$e;->key:I

    iget v1, p1, Lcom/google/android/gms/internal/c$e;->key:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/c$e;->value:I

    iget v1, p1, Lcom/google/android/gms/internal/c$e;->value:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$e;
    .locals 1
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$e;->a(Lcom/google/android/gms/internal/kn;I)Z

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

    iput v0, p0, Lcom/google/android/gms/internal/c$e;->key:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$e;->value:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/c$e;->key:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$e;->value:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public j()Lcom/google/android/gms/internal/c$e;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/c$e;->key:I

    iput v0, p0, Lcom/google/android/gms/internal/c$e;->value:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$e;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$e;->adY:I

    return-object p0
.end method
