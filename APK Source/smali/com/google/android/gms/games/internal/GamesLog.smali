.class public final Lcom/google/android/gms/games/internal/GamesLog;
.super Ljava/lang/Object;


# static fields
.field private static final JH:Lcom/google/android/gms/internal/fj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/fj;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/GamesLog;->JH:Lcom/google/android/gms/internal/fj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->JH:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/fj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->JH:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/fj;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->JH:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/fj;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->JH:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/fj;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
