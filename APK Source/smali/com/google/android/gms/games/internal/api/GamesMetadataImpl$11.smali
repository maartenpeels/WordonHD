.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$11;
.super Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadExtendedGamesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JQ:Z

.field final synthetic Ka:Ljava/lang/String;

.field final synthetic Kb:I

.field final synthetic Kc:Z


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$11;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 8

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$11;->Ka:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$11;->Kb:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$11;->JQ:Z

    iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$11;->Kc:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZZZ)V

    return-void
.end method
