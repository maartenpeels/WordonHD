.class Lcom/google/android/gms/games/internal/api/PlayersImpl$3;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;->loadInvitablePlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JQ:Z

.field final synthetic KI:Lcom/google/android/gms/games/internal/api/PlayersImpl;

.field final synthetic Kb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl;IZ)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$3;->KI:Lcom/google/android/gms/games/internal/api/PlayersImpl;

    iput p2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$3;->Kb:I

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$3;->JQ:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$1;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$3;->Kb:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$3;->JQ:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;IZZ)V

    return-void
.end method
