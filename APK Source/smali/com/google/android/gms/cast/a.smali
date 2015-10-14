.class public Lcom/google/android/gms/cast/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/cast/ApplicationMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/cast/ApplicationMetadata;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/cast/ApplicationMetadata;->xK:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getSenderAppIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/cast/ApplicationMetadata;->dz()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/a;->j(Landroid/os/Parcel;)Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/os/Parcel;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 13

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v7, v2

    move-object v6, v2

    move-object v5, v2

    move-object v4, v2

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move-object v10, v7

    move v7, v1

    move-object v1, v10

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    move-object v12, v2

    move-object v2, v6

    move-object v6, v12

    :goto_1
    move-object v10, v1

    move v1, v7

    move-object v7, v10

    move-object v11, v3

    move-object v3, v5

    move-object v5, v11

    move-object v12, v6

    move-object v6, v2

    move-object v2, v12

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    move-object v10, v7

    move v7, v1

    move-object v1, v10

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    move-object v12, v2

    move-object v2, v6

    move-object v6, v12

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v10, v7

    move v7, v1

    move-object v1, v10

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    move-object v12, v2

    move-object v2, v6

    move-object v6, v12

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v7

    move v7, v1

    move-object v1, v10

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    move-object v12, v2

    move-object v2, v6

    move-object v6, v12

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v8, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v10, v7

    move v7, v1

    move-object v1, v10

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    move-object v12, v2

    move-object v2, v6

    move-object v6, v12

    goto :goto_1

    :pswitch_4
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v5

    move-object v10, v7

    move v7, v1

    move-object v1, v10

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    move-object v12, v2

    move-object v2, v6

    move-object v6, v12

    goto :goto_1

    :pswitch_5
    invoke-static {p1, v8}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    move-object v10, v7

    move v7, v1

    move-object v1, v10

    move-object v11, v5

    move-object v5, v3

    move-object v3, v11

    move-object v12, v2

    move-object v2, v6

    move-object v6, v12

    goto :goto_1

    :pswitch_6
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v8, v7}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    move v7, v1

    move-object v1, p0

    move-object v10, v5

    move-object v5, v3

    move-object v3, v10

    move-object v11, v2

    move-object v2, v6

    move-object v6, v11

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-eq v8, v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/ApplicationMetadata;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/a;->w(I)[Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public w(I)[Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method
