.class public Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/multiplayer/ParticipantEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getStatus()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->gi()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->isConnectedToRoom()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getCapabilities()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getResult()Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public av(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
    .locals 25

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

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    :goto_1
    move-object/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v16, v19

    move-object/from16 v20, v6

    move-object v6, v14

    move-object/from16 v14, v20

    move-object/from16 v21, v8

    move-object v8, v12

    move-object/from16 v12, v21

    move/from16 v22, v11

    move v11, v9

    move/from16 v9, v22

    move-object/from16 v23, v13

    move v13, v7

    move-object/from16 v7, v23

    move-object/from16 v24, v15

    move-object v15, v5

    move-object/from16 v5, v24

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto :goto_1

    :sswitch_2
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move v7, v13

    move-object/from16 v13, p0

    move-object/from16 v19, v14

    move-object v14, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v12

    move-object v12, v8

    move-object/from16 v8, v20

    move/from16 v21, v9

    move v9, v11

    move/from16 v11, v21

    move-object/from16 v22, v15

    move-object v15, v5

    move-object/from16 v5, v22

    move-object/from16 v23, v16

    move/from16 v16, v4

    move-object/from16 v4, v23

    goto/16 :goto_1

    :sswitch_3
    sget-object v8, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move-object v8, v12

    move-object/from16 v12, p0

    move-object/from16 v19, v14

    move-object v14, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v16

    move/from16 v16, v4

    move-object/from16 v4, v20

    move/from16 v21, v9

    move v9, v11

    move/from16 v11, v21

    move-object/from16 v22, v7

    move v7, v13

    move-object/from16 v13, v22

    move-object/from16 v23, v5

    move-object v5, v15

    move-object/from16 v15, v23

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v9

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v11

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_7
    sget-object v12, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/PlayerEntity;

    move-object v12, v8

    move-object/from16 v8, p0

    move-object/from16 v19, v14

    move-object v14, v6

    move-object/from16 v6, v19

    move-object/from16 v20, v15

    move-object v15, v5

    move-object/from16 v5, v20

    move/from16 v21, v9

    move v9, v11

    move/from16 v11, v21

    move-object/from16 v22, v7

    move v7, v13

    move-object/from16 v13, v22

    move-object/from16 v23, v16

    move/from16 v16, v4

    move-object/from16 v4, v23

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v13

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_9
    sget-object v14, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v14, v6

    move-object/from16 v6, p0

    move-object/from16 v19, v15

    move-object v15, v5

    move-object/from16 v5, v19

    move-object/from16 v20, v12

    move-object v12, v8

    move-object/from16 v8, v20

    move/from16 v21, v9

    move v9, v11

    move/from16 v11, v21

    move-object/from16 v22, v7

    move v7, v13

    move-object/from16 v13, v22

    move-object/from16 v23, v16

    move/from16 v16, v4

    move-object/from16 v4, v23

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

    move-object/from16 v24, v5

    move-object v5, v15

    move-object/from16 v15, v24

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v19, v16

    move/from16 v16, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v6

    move-object/from16 v6, v20

    move-object/from16 v21, v12

    move-object v12, v8

    move-object/from16 v8, v21

    move/from16 v22, v9

    move v9, v11

    move/from16 v11, v22

    move-object/from16 v23, v7

    move v7, v13

    move-object/from16 v13, v23

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
    new-instance v3, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLcom/google/android/gms/games/PlayerEntity;ILcom/google/android/gms/games/multiplayer/ParticipantResult;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0x3e8 -> :sswitch_c
    .end sparse-switch
.end method

.method public bo(I)[Lcom/google/android/gms/games/multiplayer/ParticipantEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->av(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/ParticipantEntityCreator;->bo(I)[Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    move-result-object v0

    return-object v0
.end method
