.class public Lcom/google/android/gms/games/request/GameRequestEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/request/GameRequestEntity;",
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

.method static a(Lcom/google/android/gms/games/request/GameRequestEntity;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getSender()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getData()[B

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getRecipients()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getCreationTimestamp()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getExpirationTimestamp()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->hK()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->getStatus()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/request/GameRequestEntity;
    .locals 25
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

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .end local p0    # "this":Lcom/google/android/gms/games/request/GameRequestEntityCreator;
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

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    :goto_1
    move/from16 v19, v4

    move/from16 v4, v16

    move/from16 v16, v19

    move-wide/from16 v20, v6

    move-object v7, v13

    move-object v6, v14

    move-wide/from16 v13, v20

    move-object/from16 v22, v12

    move-object/from16 v23, v11

    move-wide v11, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v24, v15

    move-object v15, v5

    move-object/from16 v5, v24

    goto :goto_0

    :sswitch_0
    sget-object v5, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/GameEntity;

    move-object v5, v15

    move-object/from16 v15, p0

    move-wide/from16 v19, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v19

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-wide v8, v11

    move-object/from16 v12, v21

    move-object/from16 v11, v22

    move/from16 v23, v16

    move/from16 v16, v4

    move/from16 v4, v23

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

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto :goto_1

    :sswitch_2
    sget-object v6, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/PlayerEntity;

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object/from16 v14, p0

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)[B

    move-result-object v7

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_5
    sget-object v9, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v10

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v11

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v13

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v15

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v16

    move/from16 v19, v16

    move/from16 v16, v4

    move/from16 v4, v19

    move-wide/from16 v20, v13

    move-object v13, v7

    move-object v14, v6

    move-wide/from16 v6, v20

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide v8, v11

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

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
    new-instance v3, Lcom/google/android/gms/games/request/GameRequestEntity;

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/games/request/GameRequestEntity;-><init>(ILcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;[BLjava/lang/String;Ljava/util/ArrayList;IJJLandroid/os/Bundle;I)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntityCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/games/request/GameRequestEntity;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/games/request/GameRequestEntity;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/games/request/GameRequestEntity;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntityCreator;->newArray(I)[Lcom/google/android/gms/games/request/GameRequestEntity;

    move-result-object v0

    return-object v0
.end method
