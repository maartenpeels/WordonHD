.class public Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/GroundOverlayOptions;",
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

.method static a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->iD()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getBearing()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getZIndex()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getTransparency()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getAnchorU()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 24
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
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

    .end local p0    # "this":Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;
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

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    :goto_1
    move/from16 v18, v4

    move v4, v15

    move/from16 v15, v18

    move/from16 v19, v6

    move-object v6, v13

    move/from16 v13, v19

    move/from16 v20, v8

    move v8, v11

    move/from16 v11, v20

    move-object/from16 v21, v10

    move v10, v9

    move-object/from16 v9, v21

    move/from16 v22, v12

    move v12, v7

    move/from16 v7, v22

    move-object/from16 v23, v14

    move v14, v5

    move-object/from16 v5, v23

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v5

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto :goto_1

    :pswitch_2
    sget-object v6, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLng;

    move v6, v13

    move-object/from16 v13, p0

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v11

    move v11, v8

    move/from16 v8, v19

    move-object/from16 v20, v9

    move v9, v10

    move-object/from16 v10, v20

    move/from16 v21, v7

    move v7, v12

    move/from16 v12, v21

    move-object/from16 v22, v5

    move v5, v14

    move-object/from16 v14, v22

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v7

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v8

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_5
    sget-object v9, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLngBounds;

    move v9, v10

    move-object/from16 v10, p0

    move/from16 v18, v13

    move-object v13, v6

    move/from16 v6, v18

    move/from16 v19, v11

    move v11, v8

    move/from16 v8, v19

    move/from16 v20, v14

    move-object v14, v5

    move/from16 v5, v20

    move/from16 v21, v7

    move v7, v12

    move/from16 v12, v21

    move/from16 v22, v15

    move v15, v4

    move/from16 v4, v22

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v10

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v11

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v12

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v13

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v14

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

    move-object/from16 v14, v23

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v15

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v19

    move/from16 v20, v11

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    move-object/from16 v23, v5

    move v5, v14

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
    new-instance v3, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V

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

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptionsCreator;->newArray(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method
