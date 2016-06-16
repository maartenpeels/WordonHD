.class public Lcom/google/android/gms/wallet/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/LoyaltyWalletObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eC:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abz:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abA:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abB:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abC:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abD:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abE:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abF:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abG:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abH:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abI:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abJ:Lcom/google/android/gms/internal/ju;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abK:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abM:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abL:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abO:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abN:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abQ:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abP:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abS:Lcom/google/android/gms/internal/jo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->abR:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public bf(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/LoyaltyWalletObject;
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

    invoke-static {}, Lcom/google/android/gms/internal/gi;->fs()Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/gi;->fs()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/gi;->fs()Ljava/util/ArrayList;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/gi;->fs()Ljava/util/ArrayList;

    move-result-object v23

    invoke-static {}, Lcom/google/android/gms/internal/gi;->fs()Ljava/util/ArrayList;

    move-result-object v24

    invoke-static {}, Lcom/google/android/gms/internal/gi;->fs()Ljava/util/ArrayList;

    move-result-object v25

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

    packed-switch v28, :pswitch_data_0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    :goto_1
    move-object/from16 v29, v4

    move/from16 v4, v26

    move-object/from16 v26, v29

    move-object/from16 v30, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v30

    move/from16 v31, v8

    move-object/from16 v8, v22

    move/from16 v22, v31

    move-object/from16 v32, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v32

    move-object/from16 v33, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v33

    move-object/from16 v34, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v34

    move-object/from16 v35, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v35

    move-object/from16 v36, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v36

    move-object/from16 v37, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v37

    move-object/from16 v38, v23

    move-object/from16 v23, v7

    move-object/from16 v7, v38

    move-object/from16 v39, v25

    move-object/from16 v25, v5

    move-object/from16 v5, v39

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v15

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_c
    sget-object v16, Lcom/google/android/gms/internal/jy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_d
    sget-object v17, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ju;

    move-object/from16 v17, v13

    move-object/from16 v13, p0

    move-object/from16 v29, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v29

    move/from16 v30, v22

    move-object/from16 v22, v8

    move/from16 v8, v30

    move-object/from16 v31, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v31

    move-object/from16 v32, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v32

    move-object/from16 v33, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v33

    move-object/from16 v34, v26

    move/from16 v26, v4

    move-object/from16 v4, v34

    move-object/from16 v35, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v35

    move-object/from16 v36, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v36

    move-object/from16 v37, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v38

    goto/16 :goto_1

    :pswitch_e
    sget-object v18, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v22

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_12
    sget-object v21, Lcom/google/android/gms/internal/jm;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_13
    sget-object v24, Lcom/google/android/gms/internal/js;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_14
    sget-object v23, Lcom/google/android/gms/internal/jw;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v39

    goto/16 :goto_1

    :pswitch_15
    sget-object v26, Lcom/google/android/gms/internal/jo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/jo;

    move/from16 v26, v4

    move-object/from16 v4, p0

    move-object/from16 v29, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v29

    move/from16 v30, v22

    move-object/from16 v22, v8

    move/from16 v8, v30

    move-object/from16 v31, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v31

    move-object/from16 v32, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v32

    move-object/from16 v33, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v33

    move-object/from16 v34, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v34

    move-object/from16 v35, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v35

    move-object/from16 v36, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v36

    move-object/from16 v37, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v37

    move-object/from16 v38, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v38

    goto/16 :goto_1

    :pswitch_16
    sget-object v25, Lcom/google/android/gms/internal/jw;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v29, v26

    move/from16 v26, v4

    move-object/from16 v4, v29

    move-object/from16 v30, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v30

    move/from16 v31, v22

    move-object/from16 v22, v8

    move/from16 v8, v31

    move-object/from16 v32, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v32

    move-object/from16 v33, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v33

    move-object/from16 v34, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v34

    move-object/from16 v35, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v35

    move-object/from16 v36, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v36

    move-object/from16 v37, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v37

    move-object/from16 v38, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v38

    move-object/from16 v39, v5

    move-object/from16 v5, v25

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
    new-instance v3, Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    invoke-direct/range {v3 .. v26}, Lcom/google/android/gms/wallet/LoyaltyWalletObject;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/internal/ju;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/internal/jo;)V

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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public cr(I)[Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j;->bf(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/j;->cr(I)[Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    move-result-object v0

    return-object v0
.end method
