.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadMoreScores(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ko:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic Ks:I

.field final synthetic Kt:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field final synthetic Ku:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->Ko:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->Kt:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->Ks:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->Ku:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->Kt:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->Ks:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$6;->Ku:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
