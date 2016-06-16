.class public Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ah;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ah;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ah;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ah;->lH:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->extras:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/ah;->lI:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->lJ:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ah;->lK:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/ah;->lL:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ah;->lM:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->lN:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->lO:Lcom/google/android/gms/internal/av;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->lP:Landroid/location/Location;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ah;->lQ:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ah;
    .locals 26

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

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

    packed-switch v18, :pswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    :goto_1
    move-object/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v16, v19

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v7, v13

    move-object/from16 v13, v21

    move/from16 v22, v8

    move v8, v12

    move/from16 v12, v22

    move-object/from16 v23, v11

    move v11, v9

    move-object/from16 v9, v23

    move-wide/from16 v24, v14

    move-object/from16 v14, v20

    move-object v15, v5

    move-wide/from16 v5, v24

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v5

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v8

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v10

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v11

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

    goto/16 :goto_1

    :pswitch_9
    sget-object v14, Lcom/google/android/gms/internal/av;->CREATOR:Lcom/google/android/gms/internal/aw;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/av;

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v13

    move-object v13, v7

    move-object/from16 v7, v20

    move/from16 v21, v12

    move v12, v8

    move/from16 v8, v21

    move-object/from16 v22, v9

    move v9, v11

    move-object/from16 v11, v22

    move-wide/from16 v23, v5

    move-object/from16 v6, p0

    move-object v5, v15

    move-wide/from16 v14, v23

    goto/16 :goto_1

    :pswitch_a
    sget-object v15, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-wide v14, v5

    move-object/from16 v6, v20

    move-object/from16 v5, p0

    move/from16 v21, v11

    move-object v11, v9

    move/from16 v9, v21

    move/from16 v22, v8

    move v8, v12

    move/from16 v12, v22

    move-object/from16 v23, v13

    move-object v13, v7

    move-object/from16 v7, v23

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move-object v13, v7

    move-object/from16 v7, v21

    move/from16 v22, v12

    move v12, v8

    move/from16 v8, v22

    move-object/from16 v23, v9

    move v9, v11

    move-object/from16 v11, v23

    move-wide/from16 v24, v5

    move-object/from16 v6, v20

    move-object v5, v15

    move-wide/from16 v14, v24

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
    new-instance v3, Lcom/google/android/gms/internal/ah;

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ah;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/av;Landroid/location/Location;Ljava/lang/String;)V

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public b(I)[Lcom/google/android/gms/internal/ah;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/ah;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ai;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ai;->b(I)[Lcom/google/android/gms/internal/ah;

    move-result-object v0

    return-object v0
.end method
