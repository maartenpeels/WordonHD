.class Lcom/google/android/gms/drive/internal/r$3;
.super Lcom/google/android/gms/drive/internal/r$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/r;->updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fs:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic Fx:Lcom/google/android/gms/drive/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/r$3;->Fx:Lcom/google/android/gms/drive/internal/r;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/r$3;->Fs:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/r$f;-><init>(Lcom/google/android/gms/drive/internal/r;Lcom/google/android/gms/drive/internal/r$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/drive/internal/n;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/r$3;->a(Lcom/google/android/gms/drive/internal/n;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->fE()Lcom/google/android/gms/drive/internal/u;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/r$3;->Fx:Lcom/google/android/gms/drive/internal/r;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/r;->Ew:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/r$3;->Fs:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->fD()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/r$d;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/r$d;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/v;)V

    return-void
.end method
