.class public abstract Lcom/urbanairship/location/ILocationService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/urbanairship/location/ILocationService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p0, p0, v0}, Lcom/urbanairship/location/ILocationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/urbanairship/location/ILocationService;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.urbanairship.location.ILocationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/urbanairship/location/ILocationService;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/urbanairship/location/ILocationService;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/urbanairship/location/ILocationService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/urbanairship/location/ILocationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v1, "com.urbanairship.location.ILocationService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/location/ILocationService$Stub;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_2
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/urbanairship/location/ILocationService$Stub;->a(Landroid/location/Location;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_2

    :sswitch_3
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/location/ILocationService$Stub;->b()Landroid/location/Criteria;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroid/location/Criteria;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_4
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/urbanairship/location/ILocationService$Stub;->a(Landroid/location/Criteria;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_4

    :sswitch_5
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/location/ILocationService$Stub;->c()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/location/ILocationService$Stub;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/location/ILocationService$Stub;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.urbanairship.location.ILocationService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/urbanairship/location/ILocationService$Stub;->b(Landroid/location/Criteria;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
