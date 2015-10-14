.class public abstract Lcom/google/android/gms/games/internal/IRoomService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v1, "com.google.android.gms.games.internal.IRoomService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->Q(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a(Landroid/os/IBinder;Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;)V

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->gM()V

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->gN()V

    move v0, v3

    goto :goto_0

    :sswitch_4
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_5
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->gO()V

    move v0, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/DataHolderCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/DataHolderCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Z)V

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :sswitch_7
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->gP()V

    move v0, v3

    goto :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->B(Z)V

    move v0, v3

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :sswitch_9
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a([BLjava/lang/String;I)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a([B[Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->p(Ljava/lang/String;I)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->q(Ljava/lang/String;I)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->aM(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->aN(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
