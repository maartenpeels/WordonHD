.class public Lcom/google/android/gms/maps/model/PolygonOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/PolygonOptions;",
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

.method static a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->iF()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getZIndex()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->isVisible()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->isGeodesic()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 20
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-ge v14, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    :goto_1
    move/from16 v16, v5

    move v5, v13

    move/from16 v13, v16

    move/from16 v17, v8

    move v8, v11

    move/from16 v11, v17

    move/from16 v18, v10

    move v10, v9

    move/from16 v9, v18

    move-object/from16 v19, v12

    move v12, v6

    move-object/from16 v6, v19

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto :goto_1

    :pswitch_1
    sget-object v6, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    move-object/from16 v0, p1

    move v1, v14

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    move-object/from16 v0, p1

    move v1, v14

    move-object v2, v7

    move-object v3, v15

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v8

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v9

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v10

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v11

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move v1, v14

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v13

    move/from16 v16, v13

    move v13, v5

    move/from16 v5, v16

    move/from16 v17, v11

    move v11, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v18

    move-object/from16 v19, v6

    move v6, v12

    move-object/from16 v12, v19

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-eq v14, v4, :cond_1

    new-instance v5, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overread allowed size end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v5

    :cond_1
    new-instance v4, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V

    return-object v4

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

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/maps/model/PolygonOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method
