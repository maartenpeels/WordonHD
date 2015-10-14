.class public Lcom/google/android/gms/location/LocationRequestCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/location/LocationRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_DESCRIPTION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->mPriority:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Oc:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->Od:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->Oe:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->NV:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Of:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->Og:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;
    .locals 23
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x66

    const-wide/32 v6, 0x36ee80

    const-wide/32 v8, 0x927c0

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    const v13, 0x7fffffff

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ge v15, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    :goto_1
    move/from16 v17, v4

    move v4, v14

    move/from16 v14, v17

    move-wide/from16 v18, v6

    move-wide v6, v11

    move-wide/from16 v11, v18

    move-wide/from16 v20, v9

    move v10, v8

    move-wide/from16 v8, v20

    move/from16 v22, v13

    move v13, v5

    move/from16 v5, v22

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v6

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v8

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v10

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v11

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v13

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v14

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-wide/from16 v18, v11

    move-wide v11, v6

    move-wide/from16 v6, v18

    move-wide/from16 v20, v8

    move v8, v10

    move-wide/from16 v9, v20

    move/from16 v22, v5

    move v5, v13

    move/from16 v13, v22

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-eq v15, v3, :cond_1

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
    new-instance v3, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/location/LocationRequest;-><init>(IIJJZJIF)V

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
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/location/LocationRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/LocationRequestCreator;->newArray(I)[Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    return-object v0
.end method
