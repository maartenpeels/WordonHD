.class public Lcom/google/android/gms/internal/gb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ga$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ga$a;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->eW()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->fc()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->eX()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->fd()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->fe()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->ff()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->fh()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->fj()Lcom/google/android/gms/internal/fv;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public V(I)[Lcom/google/android/gms/internal/ga$a;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/ga$a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gb;->t(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ga$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gb;->V(I)[Lcom/google/android/gms/internal/ga$a;

    move-result-object v0

    return-object v0
.end method

.method public t(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ga$a;
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v13

    if-ge v13, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    :goto_1
    move-object v15, v4

    move v4, v12

    move-object v12, v15

    move/from16 v16, v6

    move v6, v10

    move/from16 v10, v16

    move/from16 v17, v9

    move-object v9, v7

    move/from16 v7, v17

    move/from16 v18, v11

    move-object v11, v5

    move/from16 v5, v18

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v6

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v7

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v8

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v10

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v12

    move v12, v4

    move-object v4, v15

    move/from16 v16, v10

    move v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move-object v7, v9

    move/from16 v9, v17

    move/from16 v18, v5

    move-object v5, v11

    move/from16 v11, v18

    goto/16 :goto_1

    :pswitch_8
    sget-object v12, Lcom/google/android/gms/internal/fv;->CREATOR:Lcom/google/android/gms/internal/fw;

    move-object/from16 v0, p1

    move v1, v13

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/fv;

    move v12, v4

    move-object/from16 v4, p0

    move v15, v10

    move v10, v6

    move v6, v15

    move/from16 v16, v7

    move-object v7, v9

    move/from16 v9, v16

    move/from16 v17, v5

    move-object v5, v11

    move/from16 v11, v17

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v13

    if-eq v13, v3, :cond_1

    new-instance v4, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overread allowed size end="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v4

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ga$a;

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ga$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/fv;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
