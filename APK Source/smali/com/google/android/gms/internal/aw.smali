.class public Lcom/google/android/gms/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/av;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/av;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/av;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/av;->mq:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/av;->backgroundColor:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/av;->mr:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/av;->ms:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/av;->mt:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/av;->mu:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/internal/av;->mv:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/internal/av;->mw:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mx:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/av;->my:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mz:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/gms/internal/av;->mA:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    iget v2, p0, Lcom/google/android/gms/internal/av;->mB:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->mC:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/av;
    .locals 28

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

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v19

    move/from16 v0, v19

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    :goto_1
    move-object/from16 v21, v4

    move/from16 v4, v18

    move-object/from16 v18, v21

    move/from16 v22, v6

    move/from16 v6, v16

    move/from16 v16, v22

    move/from16 v23, v8

    move v8, v14

    move/from16 v14, v23

    move/from16 v24, v10

    move v10, v12

    move/from16 v12, v24

    move/from16 v25, v13

    move-object v13, v9

    move/from16 v9, v25

    move/from16 v26, v15

    move-object v15, v7

    move/from16 v7, v26

    move/from16 v27, v17

    move/from16 v17, v5

    move/from16 v5, v27

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v6

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v7

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v8

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v9

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v10

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v11

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v12

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v16

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v17

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v21, v18

    move/from16 v18, v4

    move-object/from16 v4, v21

    move/from16 v22, v16

    move/from16 v16, v6

    move/from16 v6, v22

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    move/from16 v25, v9

    move-object v9, v13

    move/from16 v13, v25

    move/from16 v26, v7

    move-object v7, v15

    move/from16 v15, v26

    move/from16 v27, v5

    move/from16 v5, v17

    move/from16 v17, v27

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v19

    move/from16 v0, v19

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
    new-instance v3, Lcom/google/android/gms/internal/av;

    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/av;-><init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    return-object v3

    nop

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
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aw;->c(Landroid/os/Parcel;)Lcom/google/android/gms/internal/av;

    move-result-object v0

    return-object v0
.end method

.method public e(I)[Lcom/google/android/gms/internal/av;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/av;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aw;->e(I)[Lcom/google/android/gms/internal/av;

    move-result-object v0

    return-object v0
.end method
