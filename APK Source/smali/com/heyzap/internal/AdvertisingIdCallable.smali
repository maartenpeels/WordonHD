.class Lcom/heyzap/internal/AdvertisingIdCallable;
.super Ljava/lang/Object;
.source "AdvertisingIdCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/heyzap/internal/AdvertisingIdCallable;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 20
    .line 21
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    iget-object v0, p0, Lcom/heyzap/internal/AdvertisingIdCallable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/heyzap/internal/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 27
    const-string v1, "Using Google Play Services..."

    invoke-static {v1}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/heyzap/internal/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/heyzap/internal/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/heyzap/internal/Utils;->setAdvertisingId(Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Lcom/heyzap/internal/Utils;->setLimitAdTracking(Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    :try_start_3
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 34
    const-string v0, "Using Heyzap Google Play Services Client as fallback..."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/heyzap/internal/AdvertisingIdCallable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/heyzap/internal/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/heyzap/internal/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lcom/heyzap/internal/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->setAdvertisingId(Ljava/lang/String;)V

    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->setLimitAdTracking(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/heyzap/internal/AdvertisingIdCallable;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
