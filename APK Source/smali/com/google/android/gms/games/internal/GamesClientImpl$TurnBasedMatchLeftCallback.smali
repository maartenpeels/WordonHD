.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftCallback;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCallback;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TurnBasedMatchLeftCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCallback",
        "<",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
        ">;>;",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;"
    }
.end annotation


# instance fields
.field final synthetic IJ:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .param p3, "dataHolder"    # Lcom/google/android/gms/common/data/DataHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "resultHolder":Lcom/google/android/gms/common/api/a$d;, "Lcom/google/android/gms/common/api/a$d<Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;>;"
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftCallback;->IJ:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected k(Lcom/google/android/gms/common/api/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$d;->b(Ljava/lang/Object;)V

    return-void
.end method
