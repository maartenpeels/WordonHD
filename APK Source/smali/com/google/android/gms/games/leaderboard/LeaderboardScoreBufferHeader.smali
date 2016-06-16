.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$1;,
        Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$Builder;
    }
.end annotation


# instance fields
.field private final Jf:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->Jf:Landroid/os/Bundle;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public hE()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->Jf:Landroid/os/Bundle;

    return-object v0
.end method
