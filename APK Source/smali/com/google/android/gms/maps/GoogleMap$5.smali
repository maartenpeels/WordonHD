.class Lcom/google/android/gms/maps/GoogleMap$5;
.super Lcom/google/android/gms/maps/internal/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rs:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic Rw:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Rs:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Rw:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/google/android/gms/dynamic/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Rw:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->d(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "snapshot"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$5;->Rw:Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method
