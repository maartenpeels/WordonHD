.class public Lcom/google/android/gms/internal/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/cx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/cx;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/cx;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pf:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pg:Lcom/google/android/gms/internal/ah;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->kN:Lcom/google/android/gms/internal/ak;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->kH:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->ph:Landroid/content/pm/PackageInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pi:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pj:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pk:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->kK:Lcom/google/android/gms/internal/dx;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->pl:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cy;->f(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cx;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cx;
    .locals 24

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

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v16

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    :goto_1
    move-object/from16 v18, v4

    move v4, v15

    move-object/from16 v15, v18

    move-object/from16 v19, v6

    move-object v6, v13

    move-object/from16 v13, v19

    move-object/from16 v20, v8

    move-object v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v10

    move-object v10, v9

    move-object/from16 v9, v21

    move-object/from16 v22, v12

    move-object v12, v7

    move-object/from16 v7, v22

    move-object/from16 v23, v14

    move-object v14, v5

    move-object/from16 v5, v23

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    goto :goto_1

    :pswitch_2
    sget-object v6, Lcom/google/android/gms/internal/ah;->CREATOR:Lcom/google/android/gms/internal/ai;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ah;

    move-object v6, v13

    move-object/from16 v13, p0

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v11

    move-object v11, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v9

    move-object v9, v10

    move-object/from16 v10, v20

    move-object/from16 v21, v7

    move-object v7, v12

    move-object/from16 v12, v21

    move-object/from16 v22, v5

    move-object v5, v14

    move-object/from16 v14, v22

    goto/16 :goto_1

    :pswitch_3
    sget-object v7, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/al;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ak;

    move-object v7, v12

    move-object/from16 v12, p0

    move-object/from16 v18, v13

    move-object v13, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v11

    move-object v11, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v9

    move-object v9, v10

    move-object/from16 v10, v20

    move-object/from16 v21, v14

    move-object v14, v5

    move-object/from16 v5, v21

    move-object/from16 v22, v15

    move v15, v4

    move-object/from16 v4, v22

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_5
    sget-object v9, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    move-object v9, v10

    move-object/from16 v10, p0

    move-object/from16 v18, v13

    move-object v13, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v11

    move-object v11, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v14

    move-object v14, v5

    move-object/from16 v5, v20

    move-object/from16 v21, v7

    move-object v7, v12

    move-object/from16 v12, v21

    move-object/from16 v22, v15

    move v15, v4

    move-object/from16 v4, v22

    goto/16 :goto_1

    :pswitch_6
    sget-object v10, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    move-object v10, v9

    move-object/from16 v9, p0

    move-object/from16 v18, v13

    move-object v13, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v11

    move-object v11, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v15

    move v15, v4

    move-object/from16 v4, v20

    move-object/from16 v21, v7

    move-object v7, v12

    move-object/from16 v12, v21

    move-object/from16 v22, v5

    move-object v5, v14

    move-object/from16 v14, v22

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_a
    sget-object v14, Lcom/google/android/gms/internal/dx;->CREATOR:Lcom/google/android/gms/internal/dy;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/dx;

    move-object v14, v5

    move-object/from16 v5, p0

    move-object/from16 v18, v13

    move-object v13, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v11

    move-object v11, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v9

    move-object v9, v10

    move-object/from16 v10, v20

    move-object/from16 v21, v7

    move-object v7, v12

    move-object/from16 v12, v21

    move-object/from16 v22, v15

    move v15, v4

    move-object/from16 v4, v22

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v18, v15

    move v15, v4

    move-object/from16 v4, v18

    move-object/from16 v19, v13

    move-object v13, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move-object/from16 v22, v7

    move-object v7, v12

    move-object/from16 v12, v22

    move-object/from16 v23, v5

    move-object v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v16

    move/from16 v0, v16

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
    new-instance v3, Lcom/google/android/gms/internal/cx;

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/internal/cx;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dx;Landroid/os/Bundle;)V

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
    .end packed-switch
.end method

.method public k(I)[Lcom/google/android/gms/internal/cx;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/cx;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cy;->k(I)[Lcom/google/android/gms/internal/cx;

    move-result-object v0

    return-object v0
.end method
