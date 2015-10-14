.class public Lcom/google/android/gms/internal/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/cz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/cz;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/cz;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->ol:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->pm:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->ne:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/cz;->errorCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->nf:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->pn:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/cz;->po:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->pp:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->pq:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->ni:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/cz;->orientation:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->pr:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/android/gms/internal/cz;->ps:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->pt:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->pv:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/internal/cz;->pu:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/internal/cz;->pw:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/da;->g(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cz;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cz;
    .locals 39

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v26

    move/from16 v0, v26

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v27

    packed-switch v27, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    :goto_1
    move-object/from16 v28, v4

    move/from16 v4, v25

    move-object/from16 v25, v28

    move/from16 v29, v6

    move-object/from16 v6, v23

    move/from16 v23, v29

    move-wide/from16 v30, v8

    move-object/from16 v9, v20

    move/from16 v8, v21

    move-wide/from16 v20, v30

    move-wide/from16 v32, v12

    move/from16 v12, v17

    move-object/from16 v34, v14

    move-wide v13, v15

    move-object/from16 v15, v34

    move-wide/from16 v16, v32

    move-wide/from16 v35, v18

    move/from16 v18, v11

    move-object/from16 v19, v10

    move-wide/from16 v10, v35

    move-object/from16 v37, v22

    move-object/from16 v22, v7

    move-object/from16 v7, v37

    move-object/from16 v38, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v38

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v8

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v10

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v13

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v16

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v18

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v20

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v23

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v28, v25

    move/from16 v25, v4

    move-object/from16 v4, v28

    move/from16 v29, v23

    move-object/from16 v23, v6

    move/from16 v6, v29

    move-wide/from16 v30, v20

    move-object/from16 v20, v9

    move/from16 v21, v8

    move-wide/from16 v8, v30

    move-wide/from16 v32, v16

    move/from16 v17, v12

    move-object/from16 v34, v15

    move-wide v15, v13

    move-object/from16 v14, v34

    move-wide/from16 v12, v32

    move-wide/from16 v35, v10

    move/from16 v11, v18

    move-object/from16 v10, v19

    move-wide/from16 v18, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v38

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v26

    move/from16 v0, v26

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
    new-instance v3, Lcom/google/android/gms/internal/cz;

    invoke-direct/range {v3 .. v25}, Lcom/google/android/gms/internal/cz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method public l(I)[Lcom/google/android/gms/internal/cz;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/cz;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/da;->l(I)[Lcom/google/android/gms/internal/cz;

    move-result-object v0

    return-object v0
.end method
