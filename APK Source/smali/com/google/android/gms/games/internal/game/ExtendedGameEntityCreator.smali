.class public Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hf()Lcom/google/android/gms/games/GameEntity;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->gX()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->gY()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->gZ()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->ha()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hb()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hc()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->hd()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->he()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;->gW()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aq(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
    .locals 27

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v18

    move/from16 v0, v18

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    :goto_1
    move-object/from16 v20, v4

    move/from16 v4, v17

    move-object/from16 v17, v20

    move-wide/from16 v21, v6

    move v7, v14

    move v6, v15

    move-wide/from16 v14, v21

    move-wide/from16 v23, v11

    move-wide v11, v9

    move-wide/from16 v9, v23

    move/from16 v25, v13

    move-object v13, v8

    move/from16 v8, v25

    move-object/from16 v26, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v26

    goto :goto_0

    :sswitch_0
    sget-object v5, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/GameEntity;

    move-object/from16 v5, v16

    move-object/from16 v16, p0

    move-wide/from16 v20, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v20

    move-wide/from16 v22, v9

    move-wide v9, v11

    move-wide/from16 v11, v22

    move/from16 v24, v8

    move-object v8, v13

    move/from16 v13, v24

    move-object/from16 v25, v17

    move/from16 v17, v4

    move-object/from16 v4, v25

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v6

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v7

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v8

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v9

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v11

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v14

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :sswitch_a
    sget-object v17, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->CREATOR:Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v20, v17

    move/from16 v17, v4

    move-object/from16 v4, v20

    move-wide/from16 v21, v14

    move v14, v7

    move v15, v6

    move-wide/from16 v6, v21

    move-wide/from16 v23, v9

    move-wide v9, v11

    move-wide/from16 v11, v23

    move/from16 v25, v8

    move-object v8, v13

    move/from16 v13, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v26

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v18

    move/from16 v0, v18

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
    new-instance v3, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;-><init>(ILcom/google/android/gms/games/GameEntity;IZIJJLjava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)V

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
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public be(I)[Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->aq(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameEntityCreator;->be(I)[Lcom/google/android/gms/games/internal/game/ExtendedGameEntity;

    move-result-object v0

    return-object v0
.end method
