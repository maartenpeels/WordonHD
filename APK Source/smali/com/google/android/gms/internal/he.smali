.class public Lcom/google/android/gms/internal/he;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/hd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/hd;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getRequestId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getExpirationTime()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->hS()S

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IS)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getLatitude()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getLongitude()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->hT()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->hU()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->getNotificationResponsiveness()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hd;->hV()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aC(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hd;
    .locals 27

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v17

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    :goto_1
    move/from16 v19, v4

    move/from16 v4, v16

    move/from16 v16, v19

    move-wide/from16 v20, v6

    move v7, v13

    move v6, v14

    move-wide/from16 v13, v20

    move-wide/from16 v22, v11

    move v12, v8

    move-wide/from16 v24, v9

    move-wide/from16 v10, v24

    move-wide/from16 v8, v22

    move-object/from16 v26, v15

    move v15, v5

    move-object/from16 v5, v26

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v13

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->f(Landroid/os/Parcel;I)S

    move-result v7

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)D

    move-result-wide v8

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)D

    move-result-wide v10

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v12

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v6

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v15

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v16

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move v13, v7

    move v14, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v8

    move v8, v12

    move-wide/from16 v24, v10

    move-wide/from16 v9, v24

    move-wide/from16 v11, v22

    move-object/from16 v26, v5

    move v5, v15

    move-object/from16 v15, v26

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v17

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_1

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
    new-instance v3, Lcom/google/android/gms/internal/hd;

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/hd;-><init>(ILjava/lang/String;ISDDFJII)V

    return-object v3

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

.method public bD(I)[Lcom/google/android/gms/internal/hd;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/hd;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/he;->aC(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hd;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/he;->bD(I)[Lcom/google/android/gms/internal/hd;

    move-result-object v0

    return-object v0
.end method
