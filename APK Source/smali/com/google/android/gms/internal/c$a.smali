.class public final Lcom/google/android/gms/internal/c$a;
.super Lcom/google/android/gms/internal/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kp",
        "<",
        "Lcom/google/android/gms/internal/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public eE:I

.field public eF:I

.field public level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kp;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$a;->b()Lcom/google/android/gms/internal/c$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$a;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/kn;I)Z

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
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/kn;->mk()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/android/gms/internal/ko;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ko;->i(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/kp;->a(Lcom/google/android/gms/internal/ko;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/internal/c$a;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    iput v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$a;->adY:I

    return-object p0
.end method

.method public synthetic b(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/kt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/c$a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/kp;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->level:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->j(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/android/gms/internal/c$a;->adY:I

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
    instance-of v0, p1, Lcom/google/android/gms/internal/c$a;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/c$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    iget v1, p1, Lcom/google/android/gms/internal/c$a;->level:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    iget v1, p1, Lcom/google/android/gms/internal/c$a;->eE:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    iget v1, p1, Lcom/google/android/gms/internal/c$a;->eF:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/c$a;->level:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eE:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/c$a;->eF:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$a;->adU:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method
