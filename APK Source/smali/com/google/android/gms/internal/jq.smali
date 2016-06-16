.class public Lcom/google/android/gms/internal/jq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/jp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/jp;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/jp;->adh:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->adi:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/jp;->adj:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/jp;->adk:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/jp;->adl:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/jp;->adm:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public bs(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jp;
    .locals 21

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, -0x1

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

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

    :goto_1
    move v15, v4

    move v4, v12

    move v12, v15

    move-object/from16 v16, v7

    move-wide/from16 v17, v8

    move-wide/from16 v7, v17

    move-object/from16 v9, v16

    move-object/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    move-object/from16 v6, v19

    move/from16 v5, v20

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)D

    move-result-wide v7

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v10

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v12

    move v15, v12

    move v12, v4

    move v4, v15

    move-object/from16 v16, v9

    move-wide/from16 v17, v7

    move-wide/from16 v8, v17

    move-object/from16 v7, v16

    move-object/from16 v19, v6

    move/from16 v20, v5

    move-wide v5, v10

    move-object/from16 v10, v19

    move/from16 v11, v20

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
    new-instance v3, Lcom/google/android/gms/internal/jp;

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/jp;-><init>(IILjava/lang/String;DLjava/lang/String;JI)V

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
    .end packed-switch
.end method

.method public cG(I)[Lcom/google/android/gms/internal/jp;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/jp;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jq;->bs(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jq;->cG(I)[Lcom/google/android/gms/internal/jp;

    move-result-object v0

    return-object v0
.end method
