.class public Lcom/google/android/gms/wallet/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/wallet/FullWallet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/FullWallet;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abh:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abi:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abj:Lcom/google/android/gms/wallet/ProxyCard;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abk:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abl:Lcom/google/android/gms/wallet/Address;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abm:Lcom/google/android/gms/wallet/Address;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abn:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abo:Lcom/google/android/gms/identity/intents/model/UserAddress;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abp:Lcom/google/android/gms/identity/intents/model/UserAddress;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/wallet/FullWallet;->abq:[Lcom/google/android/gms/wallet/InstrumentInfo;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public bb(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/FullWallet;
    .locals 22

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

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ge v15, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object/from16 v17, v14

    move v14, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v7

    move-object v7, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v5

    move-object v5, v13

    move-object/from16 v13, v21

    :goto_1
    move-object/from16 v17, v4

    move v4, v14

    move-object/from16 v14, v17

    move-object/from16 v18, v6

    move-object v6, v12

    move-object/from16 v12, v18

    move-object/from16 v19, v8

    move-object v8, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v11

    move-object v11, v7

    move-object/from16 v7, v20

    move-object/from16 v21, v13

    move-object v13, v5

    move-object/from16 v5, v21

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    move-object/from16 v17, v14

    move v14, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v7

    move-object v7, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v5

    move-object v5, v13

    move-object/from16 v13, v21

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v14

    move v14, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v7

    move-object v7, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v5

    move-object v5, v13

    move-object/from16 v13, v21

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v14

    move v14, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v7

    move-object v7, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v5

    move-object v5, v13

    move-object/from16 v13, v21

    goto :goto_1

    :pswitch_3
    sget-object v7, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/ProxyCard;

    move-object v7, v11

    move-object/from16 v11, p0

    move-object/from16 v17, v12

    move-object v12, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v10

    move-object v10, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v13

    move-object v13, v5

    move-object/from16 v5, v19

    move-object/from16 v20, v14

    move v14, v4

    move-object/from16 v4, v20

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v14

    move v14, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v7

    move-object v7, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v5

    move-object v5, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_5
    sget-object v9, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/Address;

    move-object/from16 v9, p0

    move-object/from16 v17, v13

    move-object v13, v5

    move-object/from16 v5, v17

    move-object/from16 v18, v11

    move-object v11, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v14

    move v14, v4

    move-object/from16 v4, v19

    move-object/from16 v20, v10

    move-object v10, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v12

    move-object v12, v6

    move-object/from16 v6, v21

    goto/16 :goto_1

    :pswitch_6
    sget-object v10, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/Address;

    move-object v10, v8

    move-object/from16 v8, p0

    move-object/from16 v17, v12

    move-object v12, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v13

    move-object v13, v5

    move-object/from16 v5, v18

    move-object/from16 v19, v7

    move-object v7, v11

    move-object/from16 v11, v19

    move-object/from16 v20, v14

    move v14, v4

    move-object/from16 v4, v20

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v14

    move v14, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v12

    move-object v12, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v10

    move-object v10, v8

    move-object/from16 v8, v19

    move-object/from16 v20, v7

    move-object v7, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v5

    move-object v5, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_8
    sget-object v12, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/identity/intents/model/UserAddress;

    move-object v12, v6

    move-object/from16 v6, p0

    move-object/from16 v17, v13

    move-object v13, v5

    move-object/from16 v5, v17

    move-object/from16 v18, v10

    move-object v10, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v11

    move-object/from16 v11, v19

    move-object/from16 v20, v14

    move v14, v4

    move-object/from16 v4, v20

    goto/16 :goto_1

    :pswitch_9
    sget-object v13, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/identity/intents/model/UserAddress;

    move-object v13, v5

    move-object/from16 v5, p0

    move-object/from16 v17, v12

    move-object v12, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v10

    move-object v10, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v11

    move-object/from16 v11, v19

    move-object/from16 v20, v14

    move v14, v4

    move-object/from16 v4, v20

    goto/16 :goto_1

    :pswitch_a
    sget-object v14, Lcom/google/android/gms/wallet/InstrumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move v1, v15

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/wallet/InstrumentInfo;

    move v14, v4

    move-object/from16 v4, p0

    move-object/from16 v17, v12

    move-object v12, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v10

    move-object v10, v8

    move-object/from16 v8, v18

    move-object/from16 v19, v7

    move-object v7, v11

    move-object/from16 v11, v19

    move-object/from16 v20, v5

    move-object v5, v13

    move-object/from16 v13, v20

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
    new-instance v3, Lcom/google/android/gms/wallet/FullWallet;

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/wallet/FullWallet;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V

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
    .end packed-switch
.end method

.method public cn(I)[Lcom/google/android/gms/wallet/FullWallet;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/wallet/FullWallet;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/f;->bb(Landroid/os/Parcel;)Lcom/google/android/gms/wallet/FullWallet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/f;->cn(I)[Lcom/google/android/gms/wallet/FullWallet;

    move-result-object v0

    return-object v0
.end method
