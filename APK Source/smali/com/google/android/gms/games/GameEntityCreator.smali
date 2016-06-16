.class public Lcom/google/android/gms/games/GameEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/GameEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/games/GameEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gb()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gd()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->ge()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gf()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getAchievementTotalCount()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getLeaderboardCount()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isTurnBasedMultiplayerEnabled()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isRealTimeMultiplayerEnabled()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->isMuted()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->gc()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aS(I)[Lcom/google/android/gms/games/GameEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public an(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
    .locals 40

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v27

    move/from16 v0, v27

    move v1, v3

    if-ge v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v28

    sparse-switch v28, :sswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    :goto_1
    move/from16 v29, v4

    move/from16 v4, v26

    move/from16 v26, v29

    move-object/from16 v30, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v30

    move-object/from16 v31, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v31

    move/from16 v32, v10

    move-object/from16 v10, v20

    move/from16 v20, v32

    move/from16 v33, v12

    move-object/from16 v12, v18

    move/from16 v18, v33

    move-object/from16 v34, v14

    move/from16 v14, v16

    move-object/from16 v16, v34

    move-object/from16 v35, v17

    move/from16 v17, v13

    move-object/from16 v13, v35

    move-object/from16 v36, v19

    move/from16 v19, v11

    move-object/from16 v11, v36

    move-object/from16 v37, v21

    move/from16 v21, v9

    move-object/from16 v9, v37

    move-object/from16 v38, v23

    move-object/from16 v23, v7

    move-object/from16 v7, v38

    move-object/from16 v39, v25

    move/from16 v25, v5

    move-object/from16 v5, v39

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_6
    sget-object v11, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move/from16 v11, v19

    move-object/from16 v19, p0

    move-object/from16 v29, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v29

    move-object/from16 v30, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v30

    move/from16 v31, v20

    move-object/from16 v20, v10

    move/from16 v10, v31

    move/from16 v32, v18

    move-object/from16 v18, v12

    move/from16 v12, v32

    move-object/from16 v33, v16

    move/from16 v16, v14

    move-object/from16 v14, v33

    move-object/from16 v34, v13

    move/from16 v13, v17

    move-object/from16 v17, v34

    move/from16 v35, v25

    move-object/from16 v25, v5

    move/from16 v5, v35

    move-object/from16 v36, v9

    move/from16 v9, v21

    move-object/from16 v21, v36

    move-object/from16 v37, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v37

    move/from16 v38, v26

    move/from16 v26, v4

    move/from16 v4, v38

    goto/16 :goto_1

    :sswitch_7
    sget-object v12, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move/from16 v12, v18

    move-object/from16 v18, p0

    move-object/from16 v29, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v29

    move-object/from16 v30, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v30

    move/from16 v31, v20

    move-object/from16 v20, v10

    move/from16 v10, v31

    move/from16 v32, v26

    move/from16 v26, v4

    move/from16 v4, v32

    move-object/from16 v33, v16

    move/from16 v16, v14

    move-object/from16 v14, v33

    move-object/from16 v34, v13

    move/from16 v13, v17

    move-object/from16 v17, v34

    move-object/from16 v35, v11

    move/from16 v11, v19

    move-object/from16 v19, v35

    move-object/from16 v36, v9

    move/from16 v9, v21

    move-object/from16 v21, v36

    move-object/from16 v37, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v37

    move-object/from16 v38, v5

    move/from16 v5, v25

    move-object/from16 v25, v38

    goto/16 :goto_1

    :sswitch_8
    sget-object v13, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move/from16 v13, v17

    move-object/from16 v17, p0

    move-object/from16 v29, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v29

    move-object/from16 v30, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v30

    move/from16 v31, v20

    move-object/from16 v20, v10

    move/from16 v10, v31

    move/from16 v32, v18

    move-object/from16 v18, v12

    move/from16 v12, v32

    move-object/from16 v33, v16

    move/from16 v16, v14

    move-object/from16 v14, v33

    move/from16 v34, v25

    move-object/from16 v25, v5

    move/from16 v5, v34

    move-object/from16 v35, v11

    move/from16 v11, v19

    move-object/from16 v19, v35

    move-object/from16 v36, v9

    move/from16 v9, v21

    move-object/from16 v21, v36

    move-object/from16 v37, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v37

    move/from16 v38, v26

    move/from16 v26, v4

    move/from16 v4, v38

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v14

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v15

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v17

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v18

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v19

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_f
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v21

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v20

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v23

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v22

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v25

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v26

    move/from16 v29, v26

    move/from16 v26, v4

    move/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move-object/from16 v31, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v31

    move/from16 v32, v20

    move-object/from16 v20, v10

    move/from16 v10, v32

    move/from16 v33, v18

    move-object/from16 v18, v12

    move/from16 v12, v33

    move-object/from16 v34, v16

    move/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v27

    move/from16 v0, v27

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
    new-instance v3, Lcom/google/android/gms/games/GameEntity;

    invoke-direct/range {v3 .. v26}, Lcom/google/android/gms/games/GameEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v3

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
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_10
        0x11 -> :sswitch_f
        0x12 -> :sswitch_13
        0x13 -> :sswitch_12
        0x14 -> :sswitch_15
        0x15 -> :sswitch_14
        0x16 -> :sswitch_16
        0x3e8 -> :sswitch_11
    .end sparse-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GameEntityCreator;->an(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GameEntityCreator;->aS(I)[Lcom/google/android/gms/games/GameEntity;

    move-result-object v0

    return-object v0
.end method
