.class final Lcom/google/android/gms/appstate/AppStateManager$3;
.super Lcom/google/android/gms/appstate/AppStateManager$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager;->update(Lcom/google/android/gms/common/api/GoogleApiClient;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic wA:I

.field final synthetic wB:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->wA:I

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->wB:[B

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$3;->a(Lcom/google/android/gms/internal/ei;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ei;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->wA:I

    iget-object v2, p0, Lcom/google/android/gms/appstate/AppStateManager$3;->wB:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/common/api/a$d;I[B)V

    return-void
.end method
