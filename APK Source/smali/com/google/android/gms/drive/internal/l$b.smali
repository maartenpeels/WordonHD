.class Lcom/google/android/gms/drive/internal/l$b;
.super Lcom/google/android/gms/drive/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final wH:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$b;->wH:Lcom/google/android/gms/common/api/a$d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$b;->wH:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/drive/internal/l$c;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->Bv:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/drive/internal/j;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->fQ()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/drive/internal/j;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    invoke-virtual {v3}, Lcom/google/android/gms/drive/internal/j;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/l$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$b;->wH:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/drive/internal/l$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/drive/internal/l$c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->b(Ljava/lang/Object;)V

    return-void
.end method
