.class public abstract Lcom/google/android/gms/internal/ep$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/ep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ep$a$a;
    }
.end annotation


# direct methods
.method public static y(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ep;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/internal/ep;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ep;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ep$a$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ep$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep$a;->disconnect()V

    move v0, v6

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ep$a;->e(Ljava/lang/String;Z)V

    move v0, v6

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ep$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep$a;->dO()V

    move v0, v6

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ep$a;->Y(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ep$a;->dH()V

    move v0, v6

    goto :goto_0

    :sswitch_7
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v5, v6

    :cond_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ep$a;->a(DDZ)V

    move v0, v6

    goto :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    :goto_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ep$a;->a(ZDZ)V

    move v0, v6

    goto/16 :goto_0

    :cond_2
    move v0, v5

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :sswitch_9
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v6

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ep$a;->a(Ljava/lang/String;[BJ)V

    move v0, v6

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ep$a;->Z(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ep$a;->aa(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    nop

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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
