.class public Lcom/google/android/gms/plus/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/plus/internal/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/plus/internal/h;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iP()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iQ()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iR()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iS()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iT()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iU()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iV()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/h;->iW()Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aK(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/h;
    .locals 21

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

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-ge v14, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    :goto_1
    move-object/from16 v16, v4

    move v4, v13

    move-object/from16 v13, v16

    move-object/from16 v17, v6

    move-object v6, v11

    move-object/from16 v11, v17

    move-object/from16 v18, v8

    move-object v8, v9

    move-object/from16 v9, v18

    move-object/from16 v19, v10

    move-object v10, v7

    move-object/from16 v7, v19

    move-object/from16 v20, v12

    move-object v12, v5

    move-object/from16 v5, v20

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v9

    move-object v9, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v20

    goto/16 :goto_1

    :sswitch_9
    sget-object v13, Lcom/google/android/gms/plus/internal/PlusCommonExtras;->CREATOR:Lcom/google/android/gms/plus/internal/f;

    move-object/from16 v0, p1

    move v1, v14

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    move v13, v4

    move-object/from16 v4, p0

    move-object/from16 v16, v11

    move-object v11, v6

    move-object/from16 v6, v16

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    move-object/from16 v18, v7

    move-object v7, v10

    move-object/from16 v10, v18

    move-object/from16 v19, v5

    move-object v5, v12

    move-object/from16 v12, v19

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-eq v14, v3, :cond_1

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
    new-instance v3, Lcom/google/android/gms/plus/internal/h;

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/plus/internal/h;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bN(I)[Lcom/google/android/gms/plus/internal/h;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/plus/internal/h;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/j;->aK(Landroid/os/Parcel;)Lcom/google/android/gms/plus/internal/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/j;->bN(I)[Lcom/google/android/gms/plus/internal/h;

    move-result-object v0

    return-object v0
.end method
