.class public Lcom/google/android/gms/internal/ip;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ih$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ih$f;Landroid/os/Parcel;I)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->ja()Ljava/util/Set;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getVersionCode()I

    move-result v2

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getDepartment()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v5, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v6, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v7, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_4
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_5
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->isPrimary()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    :cond_6
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_7
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_8
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ih$f;->getType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    :cond_9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public aU(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ih$f;
    .locals 22

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

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

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    :goto_1
    move/from16 v17, v5

    move v5, v14

    move/from16 v14, v17

    move-object/from16 v18, v7

    move-object v7, v12

    move-object/from16 v12, v18

    move-object/from16 v19, v9

    move-object v9, v10

    move-object/from16 v10, v19

    move-object/from16 v20, v11

    move v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v13

    move-object v13, v6

    move-object/from16 v6, v21

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v5

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v11

    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p1

    move v1, v15

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    const/16 v15, 0xa

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    move-object/from16 v18, v12

    move-object v12, v7

    move-object/from16 v7, v18

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v19

    move-object/from16 v20, v8

    move v8, v11

    move-object/from16 v11, v20

    move-object/from16 v21, v6

    move-object v6, v13

    move-object/from16 v13, v21

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
    new-instance v3, Lcom/google/android/gms/internal/ih$f;

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ih$f;-><init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

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
    .end packed-switch
.end method

.method public bX(I)[Lcom/google/android/gms/internal/ih$f;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/internal/ih$f;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ip;->aU(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ih$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ip;->bX(I)[Lcom/google/android/gms/internal/ih$f;

    move-result-object v0

    return-object v0
.end method
