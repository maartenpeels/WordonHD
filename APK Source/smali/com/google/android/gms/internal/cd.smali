.class public Lcom/google/android/gms/internal/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ce;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ce;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ce;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->og:Lcom/google/android/gms/internal/cb;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ce;->aO()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ce;->aP()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ce;->aQ()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ce;->aR()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->ol:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ce;->om:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->on:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ce;->aT()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/ce;->orientation:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/ce;->op:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->nO:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->kK:Lcom/google/android/gms/internal/dx;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ce;->aS()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/ce;->or:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cd;->e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ce;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ce;
    .locals 30

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

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v20

    move/from16 v0, v20

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    :goto_1
    move-object/from16 v22, v4

    move/from16 v4, v19

    move-object/from16 v19, v22

    move-object/from16 v23, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v23

    move/from16 v24, v8

    move-object v8, v15

    move/from16 v15, v24

    move-object/from16 v25, v10

    move-object v10, v13

    move-object/from16 v13, v25

    move/from16 v26, v12

    move-object v12, v11

    move/from16 v11, v26

    move-object/from16 v27, v14

    move v14, v9

    move-object/from16 v9, v27

    move-object/from16 v28, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v28

    move-object/from16 v29, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v29

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto :goto_1

    :pswitch_1
    sget-object v5, Lcom/google/android/gms/internal/cb;->CREATOR:Lcom/google/android/gms/internal/ca;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/cb;

    move-object/from16 v5, v18

    move-object/from16 v18, p0

    move-object/from16 v22, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v22

    move/from16 v23, v15

    move-object v15, v8

    move/from16 v8, v23

    move-object/from16 v24, v13

    move-object v13, v10

    move-object/from16 v10, v24

    move/from16 v25, v11

    move-object v11, v12

    move/from16 v12, v25

    move-object/from16 v26, v9

    move v9, v14

    move-object/from16 v14, v26

    move-object/from16 v27, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v27

    move-object/from16 v28, v19

    move/from16 v19, v4

    move-object/from16 v4, v28

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v9

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v11

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v13

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v15

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_d
    sget-object v17, Lcom/google/android/gms/internal/dx;->CREATOR:Lcom/google/android/gms/internal/dy;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/dx;

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    move-object/from16 v22, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v22

    move/from16 v23, v15

    move-object v15, v8

    move/from16 v8, v23

    move-object/from16 v24, v13

    move-object v13, v10

    move-object/from16 v10, v24

    move/from16 v25, v11

    move-object v11, v12

    move/from16 v12, v25

    move-object/from16 v26, v9

    move v9, v14

    move-object/from16 v14, v26

    move-object/from16 v27, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v27

    move-object/from16 v28, v19

    move/from16 v19, v4

    move-object/from16 v4, v28

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v22, v19

    move/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v23, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v23

    move/from16 v24, v15

    move-object v15, v8

    move/from16 v8, v24

    move-object/from16 v25, v13

    move-object v13, v10

    move-object/from16 v10, v25

    move/from16 v26, v11

    move-object v11, v12

    move/from16 v12, v26

    move-object/from16 v27, v9

    move v9, v14

    move-object/from16 v14, v27

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v28

    move-object/from16 v29, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v29

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v20

    move/from16 v0, v20

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
    new-instance v3, Lcom/google/android/gms/internal/ce;

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/internal/ce;-><init>(ILcom/google/android/gms/internal/cb;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/dx;Landroid/os/IBinder;Ljava/lang/String;)V

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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public i(I)[Lcom/google/android/gms/internal/ce;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/ce;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cd;->i(I)[Lcom/google/android/gms/internal/ce;

    move-result-object v0

    return-object v0
.end method
