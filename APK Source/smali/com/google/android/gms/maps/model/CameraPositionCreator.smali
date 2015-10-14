.class public Lcom/google/android/gms/maps/model/CameraPositionCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/model/CameraPosition;",
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

.method static a(Lcom/google/android/gms/maps/model/CameraPosition;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CameraPosition;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v3

    move v4, v3

    .end local p0    # "this":Lcom/google/android/gms/maps/model/CameraPositionCreator;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->R(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    move v8, v5

    move v5, v1

    move v1, v8

    move-object v9, v2

    move v2, v4

    move-object v4, v9

    :goto_1
    move v8, v1

    move v1, v5

    move v5, v8

    move-object v9, v4

    move v4, v2

    move-object v2, v9

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    move v8, v5

    move v5, v1

    move v1, v8

    move-object v9, v2

    move v2, v4

    move-object v4, v9

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    invoke-static {p1, v6, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/maps/model/LatLng;

    move v2, v4

    move-object v4, p0

    move v8, v5

    move v5, v1

    move v1, v8

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v3

    move v8, v5

    move v5, v1

    move v1, v8

    move-object v9, v2

    move v2, v4

    move-object v4, v9

    goto :goto_1

    :pswitch_3
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v4

    move v8, v5

    move v5, v1

    move v1, v8

    move-object v9, v2

    move v2, v4

    move-object v4, v9

    goto :goto_1

    :pswitch_4
    invoke-static {p1, v6}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v5

    move v8, v5

    move v5, v1

    move v1, v8

    move-object v9, v2

    move v2, v4

    move-object v4, v9

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-eq v6, v0, :cond_1

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
    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(ILcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/CameraPositionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/CameraPositionCreator;->newArray(I)[Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method
