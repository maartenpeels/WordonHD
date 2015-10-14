.class public Lcom/heyzap/internal/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# static fields
.field private static final BASE_URL:Ljava/lang/String;

.field private static final LAST_CHECK_KEY:Ljava/lang/String; = "last_checked_packages"

.field private static final MILLIS_BETWEEN_CHECKS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/APIClient;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/in_game_api/ads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heyzap/internal/PackageManager;->BASE_URL:Ljava/lang/String;

    .line 27
    const v0, 0x5265c00

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/internal/PackageManager;->MILLIS_BETWEEN_CHECKS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/heyzap/internal/PackageManager;->BASE_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/heyzap/internal/PackageManager;->MILLIS_BETWEEN_CHECKS:Ljava/lang/Integer;

    return-object v0
.end method

.method public static checkInstalledPackages(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/internal/PackageManager$1;

    invoke-direct {v1, p0}, Lcom/heyzap/internal/PackageManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method
