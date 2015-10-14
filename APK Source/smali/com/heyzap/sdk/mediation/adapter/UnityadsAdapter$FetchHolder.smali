.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;
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
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    .line 339
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;)V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    invoke-static {}, Lcom/heyzap/internal/SettableFuture;->create()Lcom/heyzap/internal/SettableFuture;

    move-result-object v0

    .line 343
    invoke-virtual {v0, p1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 344
    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    .line 345
    return-void
.end method
