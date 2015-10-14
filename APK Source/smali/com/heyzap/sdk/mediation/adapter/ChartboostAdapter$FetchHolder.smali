.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchHolder"
.end annotation


# instance fields
.field public final fetchListener:Lcom/heyzap/internal/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    .line 299
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;)V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 303
    invoke-virtual {v0, p1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 304
    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    .line 305
    return-void
.end method
