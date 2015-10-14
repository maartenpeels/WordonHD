.class public Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getCreationTimestamp()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getStatus()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getVariant()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->getAutoMatchWaitEstimateSeconds()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public ax(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    .locals 23

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

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

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    :goto_1
    move/from16 v17, v4

    move v4, v14

    move/from16 v14, v17

    move-object/from16 v18, v6

    move-object v6, v12

    move-object/from16 v12, v18

    move-object/from16 v19, v8

    move-wide/from16 v20, v10

    move-object/from16 v10, v19

    move v11, v7

    move-wide/from16 v7, v20

    move-object/from16 v22, v13

    move-object v13, v5

    move-object/from16 v5, v22

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v7

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v9

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v11

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v12

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto/16 :goto_1

    :sswitch_8
    sget-object v13, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-wide/from16 v20, v7

    move-object/from16 v8, v19

    move v7, v11

    move-wide/from16 v10, v20

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 v13, v22

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
    new-instance v3, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;-><init>(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;ILandroid/os/Bundle;Ljava/util/ArrayList;I)V

    return-object v3

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
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bq(I)[Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;->ax(Landroid/os/Parcel;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntityCreator;->bq(I)[Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    move-result-object v0

    return-object v0
.end method
