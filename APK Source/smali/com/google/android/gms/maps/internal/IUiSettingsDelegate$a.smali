.class public abstract Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;
    }
.end annotation


# direct methods
.method public static aA(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setZoomControlsEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setCompassEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :sswitch_3
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setMyLocationButtonEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_3

    :sswitch_4
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setScrollGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_4

    :sswitch_5
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_5

    :sswitch_6
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_6

    :sswitch_7
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_7

    :sswitch_8
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setAllGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_8

    :sswitch_9
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isZoomControlsEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    move v0, v1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto :goto_9

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isCompassEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    move v0, v1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto :goto_a

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isMyLocationButtonEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    move v0, v1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_b

    :sswitch_c
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isScrollGesturesEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    move v0, v1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_c

    :sswitch_d
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isZoomGesturesEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    move v0, v1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_d

    :sswitch_e
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isTiltGesturesEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d

    move v0, v1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto :goto_e

    :sswitch_f
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isRotateGesturesEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e

    move v0, v1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v3

    goto :goto_f

    :sswitch_10
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setIndoorLevelPickerEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto :goto_10

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isIndoorLevelPickerEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_10

    move v0, v1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    goto/16 :goto_0

    :cond_10
    move v0, v3

    goto :goto_11

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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
