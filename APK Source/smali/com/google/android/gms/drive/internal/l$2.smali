.class Lcom/google/android/gms/drive/internal/l$2;
.super Lcom/google/android/gms/drive/internal/l$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/l;->newContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fc:Lcom/google/android/gms/drive/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$2;->Fc:Lcom/google/android/gms/drive/internal/l;

    invoke-direct {p0, p1}, Lcom/google/android/gms/drive/internal/l$g;-><init>(Lcom/google/android/gms/drive/internal/l;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/l$2;->a(Lcom/google/android/gms/drive/internal/n;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/n;->fE()Lcom/google/android/gms/drive/internal/u;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/CreateContentsRequest;-><init>()V

    new-instance v2, Lcom/google/android/gms/drive/internal/l$f;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/l$f;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/u;->a(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/v;)V

    return-void
.end method
